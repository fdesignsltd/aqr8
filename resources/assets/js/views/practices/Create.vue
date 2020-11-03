<template>

<div class="customer-create main-content">
    <div class="page-header">
      <h3 class="page-title">{{ isEdit ? $t('practices.edit_practice') : $t('practices.add_practice') }}</h3>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><router-link slot="item-title" to="/admin/dashboard">{{ $t('general.home') }}</router-link></li>
        <li class="breadcrumb-item"><router-link slot="item-title" to="/admin/practices">{{ $tc('practices.practice', 2) }}</router-link></li>
        <li class="breadcrumb-item"><a href="#"> {{ isEdit ? $t('practices.edit_practice') : $t('practices.add_practice') }} </a></li>
      </ol>
    </div>

    <div class="customer-card card">
  
          <form action="" @submit.prevent="submitPractice">
              <div class="card-body">
                <div class="row">
                  <div class="section-title col-sm-2">{{ $t('practices.details') }}</div>
                    <div class="col-sm-5">
                      <div class="form-group">
                <label class="form-label">{{ $t('practices.name') }}</label><span class="text-danger"> *</span>
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
                <label class="form-label">{{ $t('practices.pct') }}</label>
                 <div class="base-input">
                  <base-input
                  v-model.trim="formData.pct"
                  focus
                  type="text"
                  name="pct"
                />
                </div>
              
              </div>
                    
                    </div>
                  
                  <div class="col-sm-5">
                    <div class="form-group">
                      <label class="form-label">{{ $t('practices.practice_code') }}</label>
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
                <label class="form-label">{{ $t('practices.mileage') }}</label>
                 <div class="base-input">
                  <base-input
                  v-model.trim="formData.mileage"
                  focus
                  type="text"
                  name="mileage"
                />
                </div>
              </div>
                </div>
              </div>

              <hr/>

              <div class="row">
                  <div class="section-title col-sm-2">{{ $t('practices.contacts') }}</div>
                    <div class="col-sm-5">
                      
                    <div class="form-group">
                        <label class="form-label">{{ $t('practices.manager') }}</label>
                        <base-input
                          v-model.trim="formData.manager"
                          focus
                          type="text"
                          name="manager"
                        />
                      
                    </div>


                    <div class="form-group">
                          <label class="form-label">{{ $t('practices.address') }}</label>
                          <div class="base-input">
                            <base-input
                            v-model.trim="formData.address"
                            focus
                            type="text"
                            name="address"
                          />
                          </div>
                    </div>

                    <div class="form-group">
                          <label class="form-label">{{ $t('practices.fax') }}</label>
                          <div class="base-input">
                            <base-input
                            v-model.trim="formData.fax"
                            focus
                            type="text"
                            name="fax"
                          />
                          </div>
                    </div>

                       <div class="form-group">
                          <label class="form-label">{{ $t('practices.website') }}</label>
                          <div class="base-input">
                            <base-input
                            v-model.trim="formData.website"
                            focus
                            type="text"
                            name="website"
                          />
                          </div>
               </div>
                    
                    </div>
                  
                  <div class="col-sm-5">
                    <div class="form-group">
                      <label class="form-label">{{ $t('practices.post_code') }}</label>
                      <div class="base-input">
                        <base-input
                        v-model.trim="formData.post_code"
                        focus
                        type="text"
                        name="post_code"
                      />
                    </div>
                  </div>

                  <div class="form-group">
                <label class="form-label">{{ $t('practices.phone') }}</label>
                 <div class="base-input">
                  <base-input
                  v-model.trim="formData.phone"
                  focus
                  type="text"
                  name="phone"
                />
                </div>
              </div>


              <div class="form-group">
                          <label class="form-label">{{ $t('practices.email') }}</label>
                          <div class="base-input">
                            <base-input
                            v-model.trim="formData.email"
                            focus
                            type="email"
                            name="email"
                          />
                          </div>
               </div>


                </div>
              </div>

              <hr/>


              <div class="row">
                  <div class="section-title col-sm-2">{{ $t('practices.invoice_notes') }}</div>
                    <div class="col-sm-10">
                      <base-text-area
                        v-model.trim="formData.invoice_note"
                        :tabindex="11"
                        type="text"
                        name="invoice_note"
                        rows="5"
                        cols="10" />
                          <span>The default invoice note override any default invoice note specified on the option.</span>
                    </div>
              </div>

              <hr/>

             
              <div class="row">
                  <div class="section-title col-sm-2">{{ $t('practices.rates') }}</div>
                    <div class="col-sm-5">
                      
                    <div class="form-group">
                        <label class="form-label">{{ $t('practices.nhs_normal') }}</label>
                        <base-input
                          v-model.trim="formData.nhs_normal"
                          focus
                          type="text"
                          name="nhs_normal"
                        />
                        <div v-if="$v.formData.name.$error">
                          <span v-if="!$v.formData.name.minLength" class="text-danger">
                            {{ $tc('validation.name_min_length', $v.formData.name.$params.minLength.min, { count: $v.formData.name.$params.minLength.min }) }}
                          </span>
                        </div>
                    </div>


                    <div class="form-group">
                          <label class="form-label">{{ $t('practices.nhs_Unpensioned') }}</label>
                          <div class="base-input">
                            <base-input
                            v-model.trim="formData.nhs_unpensioned"
                            focus
                            type="text"
                            name="nhs_unpensioned"
                          />
                          </div>
                    </div>

                     
                    
                    </div>
                  
                  <div class="col-sm-5">
                    <div class="form-group">
                      <label class="form-label">{{ $t('practices.nhs_ooh') }}</label>
                      <div class="base-input">
                        <base-input
                        v-model.trim="formData.nhs_ooh"
                        focus
                        type="text"
                        name="nhs_ooh"
                      />
                    </div>
                  </div>

                  <div class="form-group">
                <label class="form-label">{{ $t('practices.private') }}</label>
                 <div class="base-input">
                  <base-input
                  v-model.trim="formData.private"
                  focus
                  type="text"
                  name="private"
                />
                </div>
              </div>

                </div>

                

                
              </div>

              <div class="row">
                <div class="section-title col-sm-2"></div>
                <div class="col-sm-10">
                  <p>These are the default hourly rates for each session type for this practice</p>
                  <p>If rates are specified here, the session rate is calculated automatically when the season duration or type is changed.</p>
                  <p>These rates override any specified on the Options screen.</p>

                </div>
              </div>

              <hr/>

                <div class="row">
                  <div class="section-title col-sm-2">{{ $t('practices.partners') }}</div>
                    <div class="col-sm-10">
                          <base-text-area
                        v-model.trim="formData.partners"
                        :tabindex="11"
                        type="text"
                        name="partners"
                        rows="5"
                        cols="10" />
                      <span>The default invoice note override any default invoice note specified on the option.</span>
                    </div>
              </div>

                <div class="row">
                  <div class="section-title col-sm-2">{{ $t('practices.notes') }}</div>
                    <div class="col-sm-10">
                        <base-text-area
                        v-model.trim="formData.notes"
                        :tabindex="11"
                        type="text"
                        name="notes"
                        rows="5"
                        cols="10" />
                     
                      <span>The default invoice note override any default invoice note specified on the option.</span>
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
                 {{ isEdit ? $t('practices.edit_practice') : $t('practices.add_practice') }}
                </base-button>
              </div>


              </div>
          </form>
        
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
        mileage: '',
        manager: '',
        address: '',
        post_code: '',
        phone: '',
        fax: '',
        email: '',
        website: '',
        invoice_note: '',
        nhs_normal: '',
        nhs_ooh: '',
        nhs_unpensioned: '',
        private: '',
        partners: '',
        notes: ''
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
      this.formData.manager = practice.manager
      this.formData.address = practice.address
      this.formData.post_code = practice.post_code
      this.formData.phone = practice.phone
      this.formData.fax = practice.fax
      this.formData.email = practice.email
      this.formData.website = practice.website
      this.formData.invoice_note = practice.invoice_note
      this.formData.nhs_normal = practice.nhs_normal
      this.formData.nhs_ooh = practice.nhs_ooh
      this.formData.nhs_unpensioned = practice.nhs_unpensioned
      this.formData.partners = practice.partners
      this.formData.notes = practice.notes
      
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
            window.toastr['success'](this.$t('practices.updated_message'))
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
            window.toastr['success'](this.$t('practices.created_message'))
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


