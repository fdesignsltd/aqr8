<template>

<div class="main-content item-create">
    <div class="page-header">
      <h3 class="page-title">{{ isEdit ? 'Edit Practice' : 'New Practice' }}</h3>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><router-link slot="item-title" to="/admin/dashboard">{{ $t('general.home') }}</router-link></li>
        <li class="breadcrumb-item"><router-link slot="item-title" to="/admin/practices">Practices</router-link></li>
        <li class="breadcrumb-item"><a href="#"> {{ isEdit ? 'Edit Practice' : 'New Practice' }} </a></li>
      </ol>
    </div>

    <div class="row">
      <div class="col-sm-12">
        <div class="card">
          <form action="" @submit.prevent="submitPractice">
              <div class="card-body">
                <div class="form-group">
                <label class="control-label">{{ 'Name' }}</label><span class="text-danger"> *</span>
                <base-input
                  v-model.trim="formData.name"
                  :invalid="$v.formData.name.$error"
                  focus
                  type="text"
                  name="name"
                />
                <div v-if="$v.formData.name.$error">
                  <span v-if="!$v.formData.name.required" class="text-danger">{{ 'Name is Required' }} </span>
                  <span v-if="!$v.formData.name.minLength" class="text-danger">
                    {{ $tc('validation.name_min_length', $v.formData.name.$params.minLength.min, { count: $v.formData.name.$params.minLength.min }) }}
                  </span>
                </div>
              </div>

             <div class="form-group">
                <label>{{ 'Practice Code' }}</label><span class="text-danger"> * </span>
                <div class="base-input">
                  <base-input
                  v-model.trim="formData.practice_code"
                  focus
                  type="text"
                  name="practice_code"
                />
                </div>
               </div>

              <div class="form-group">
                <label>{{ 'PCT' }}</label>
                 <div class="base-input">
                  <base-input
                  v-model.trim="formData.pct"
                  focus
                  type="text"
                  name="pct"
                />
                </div>
              
              </div>

                <div class="form-group">
                <label>{{ 'Mileage' }}</label>
                 <div class="base-input">
                  <base-input
                  v-model.trim="formData.mileage"
                  focus
                  type="text"
                  name="mileage"
                />
                </div>
              </div>

               <div class="form-group">
                <base-button
                  :loading="isLoading"
                  :disabled="isLoading"
                  icon="save"
                  color="theme"
                  type="submit"
                  class="collapse-button"
                >
                  {{ isEdit ? 'Edit Practice' : 'Save Practice' }}
                </base-button>
              </div>


              </div>
          </form>
        </div>
      </div>
    </div>


  </div>  
  
</template>

<script>
import { validationMixin } from 'vuelidate'
import { mapActions, mapGetters } from 'vuex'
const { required, minLength, numeric, minValue, maxLength } = require('vuelidate/lib/validators')

export default {
   mixins: {
    validationMixin
  },
  data () {
    return {
      isLoading: false,
      formData: {
        name: '',
        practice_code: '',
        pct: '',
        mileage: ''
      }
    }
  },
   validations: {
    formData: {
      name: {
        required,
        minLength: minLength(3)
      }

     }
   },
  computed: {
    isEdit () {
      if (this.$route.name === 'practices.edit') {
        return true
      }
      return false
    },
  },
  watch: {
    
  },
  mounted () {
    if (this.isEdit) {
     this.loadPractice()
    } else {
      //this.currency = this.defaultCurrency
    }
  },
   methods: {
    ...mapActions('practice', [
      'addPractice',
      'fetchPractice',
      'updatePractice'
    ]),
     async loadPractice () {
      let { data: { practice } } = await this.fetchPractice(this.$route.params.id)
      this.formData.id = practice.id
      this.formData.name = practice.name
      this.formData.practice_code = practice.practice_code
      this.formData.pct = practice.pct
      this.formData.mileage = practice.mileage

    },
     async submitPractice () {
      this.$v.formData.$touch()

      if (this.$v.$invalid) {
        return true
      }

      if (this.isEdit) {
         
        this.isLoading = true
        try {
          let response = await this.updatePractice(this.formData)
          if (response.data.success) {
            window.toastr['success'](this.$t('customers.updated_message'))
            this.$router.push('/admin/practices')
            this.isLoading = false
            return true
          } else {
            this.isLoading = false
            
          }
        } catch (err) {
          
        }

      } else {
        this.isLoading = true

         try {
         let response = await this.addPractice(this.formData)
          if (response.data.success) {
            window.toastr['success'](this.$t('customers.created_message'))
            this.$router.push('/admin/practices')
            this.isLoading = false
            return true
          }
        } catch (err) {
          if (err.response.data.errors.email) {
            this.isLoading = false
            window.toastr['error'](this.$t('validation.email_already_taken'))
          }
        }


      }

   }

   }

}  
</script>


