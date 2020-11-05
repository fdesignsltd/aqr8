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

      <ul class="tabs">
        <li class="tab" @click="setActiveTab('INVOICES')">
          <a :class="['tab-link', {'a-active': activeTab === 'INVOICES'}]" href="#">
            {{ $t('practices.details') }}
          </a>
        </li>
        <li class="tab" @click="setActiveTab('ESTIMATES')">
          <a :class="['tab-link', {'a-active': activeTab === 'ESTIMATES'}]" href="#">
            {{ $t('practices.contacts') }}
            </a>
        </li>
        <li class="tab" @click="setActiveTab('PAYMENTS')">
          <a :class="['tab-link', {'a-active': activeTab === 'PAYMENTS'}]" href="#">
            {{ $t('practices.invoice_notes') }}
          </a>
        </li>
        <li class="tab" @click="setActiveTab('ITEMS')">
          <a :class="['tab-link', {'a-active': activeTab === 'ITEMS'}]" href="#">
          {{ $t('practices.rates') }}
            </a>
        </li>

         <li class="tab" @click="setActiveTab('ITEMS')">
          <a :class="['tab-link', {'a-active': activeTab === 'ITEMS'}]" href="#">
          {{ $t('practices.partners') }}
            </a>
        </li>

         <li class="tab" @click="setActiveTab('ITEMS')">
          <a :class="['tab-link', {'a-active': activeTab === 'ITEMS'}]" href="#">
          {{ $t('practices.notes') }}
            </a>
        </li>


      </ul>
  
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
                  <input 
                    type="number"
                    class="input-field"
                    v-model.trim="formData.mileage"
                    name="mileage"
                    step="0.01"
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
                          <label class="form-label">{{ $t('practices.address2') }}</label>
                          <div class="base-input">
                            <base-input
                            v-model.trim="formData.address2"
                            focus
                            type="text"
                            name="address2"
                          />
                          </div>
                    </div>
                   
                  <div class="form-group">
                          <label class="form-label">{{ $t('practices.county') }}</label>
                          <div class="base-input">
                            <base-input
                            v-model.trim="formData.county"
                            focus
                            type="text"
                            name="county"
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
                          <label class="form-label">{{ $t('practices.address3') }}</label>
                          <div class="base-input">
                            <base-input
                            v-model.trim="formData.address3"
                            focus
                            type="text"
                            name="address3"
                          />
                          </div>
                    </div>


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
                        type="text"
                        name="invoice_note"
                        rows="5"
                        cols="10"
                        style="font-weight:normal"
                         />
                          <span>The default invoice note override any default invoice note specified on the option.</span>
                    </div>
              </div>

              <hr/>

             
              <div class="row">
                  <div class="section-title col-sm-2">{{ $t('practices.rates') }}</div>
                    <div class="col-sm-5">
                      
                    <div class="form-group">
                        <label class="form-label">{{ $t('practices.nhs_normal') }}</label>
                        <div class="base-input"><input
                          type="number"
                          v-model.trim="formData.nhs_normal"
                          name="nhs_normal"
                          step="0.01"
                          class="input-field"
                        /></div>
                        <div v-if="$v.formData.name.$error">
                          <span v-if="!$v.formData.name.minLength" class="text-danger">
                            {{ $tc('validation.name_min_length', $v.formData.name.$params.minLength.min, { count: $v.formData.name.$params.minLength.min }) }}
                          </span>
                        </div>
                    </div>


                    <div class="form-group">
                          <label class="form-label">{{ $t('practices.nhs_Unpensioned') }}</label>
                          <div class="base-input">
                            <input
                            type="number"
                            v-model.trim="formData.nhs_unpensioned"
                            step="0.01"
                            name="nhs_unpensioned"
                              class="input-field"
                          />
                          </div>
                    </div>

                     
                    
                    </div>
                  
                  <div class="col-sm-5">
                    <div class="form-group">
                      <label class="form-label">{{ $t('practices.nhs_ooh') }}</label>
                      <div class="base-input">
                        <input
                        type="number"
                        v-model.trim="formData.nhs_ooh"
                        step="0.01"
                        name="nhs_ooh"
                        class="input-field"
                      />
                    </div>
                  </div>

                  <div class="form-group">
                <label class="form-label">{{ $t('practices.private') }}</label>
                 <div class="base-input">
                  <input
                  type="number"
                  v-model.trim="formData.privatenote"
                  name="privatenote"
                  step='0.01'
                    class="input-field"
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
        address2: '',
        address3: '',
        county: '',
        city: '',
        post_code: '',
        phone: '',
        fax: '',
        email: '',
        website: '',
        invoice_note: '',
        nhs_normal: '',
        nhs_ooh: '',
        nhs_unpensioned: '',
        privatenote: '',
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
      this.formData.address2 = practice.address2
      this.formData.address3 = practice.address3
      this.formData.county = practice.county
      this.formData.city = practice.city
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
      this.formData.privatenote = practice.privatenote
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

   },
    setActiveTab (val) {
      this.activeTab = val
    }
   }
}  
</script>


