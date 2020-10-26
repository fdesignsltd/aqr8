<template>
  <div class="customer-create main-content">
    <form action="" @submit.prevent="submitCustomerData">
      <div class="page-header">
        <h3 class="page-title">{{ isEdit ? $t('customers.edit_customer') : 'New Practice' }}</h3>
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <router-link slot="item-title" to="/admin/dashboard">{{ $t('general.home') }}</router-link>
          </li>
          <li class="breadcrumb-item">
            <router-link slot="item-title" to="/admin/practices">Practices</router-link>
          </li>
          <li class="breadcrumb-item">
            {{ isEdit ? $t('customers.edit_customer') : 'New Practice' }}
          </li>
        </ol>
        <div class="page-actions header-button-container">
          <base-button
            :loading="isLoading"
            :disabled="isLoading"
            :tabindex="23"
            icon="save"
            color="theme"
            type="submit"
          >
            {{ isEdit ? $t('customers.update_customer') : 'Save Practice' }}
          </base-button>
        </div>
      </div>
      <div class="customer-card card">
        <div class="card-body">
          <div class="row">
            <div class="section-title col-sm-2">Details</div>
            <div class="col-sm-5">
              <div class="form-group">
                <label class="form-label">Name</label><span class="text-danger"> *</span>
                <base-input
                  :invalid="$v.formData.name.$error"
                  v-model="formData.name"
                  focus
                  type="text"
                  name="name"
                  tab-index="1"
                  @input="$v.formData.name.$touch()"
                />
                <div v-if="$v.formData.name.$error">
                  <span v-if="!$v.formData.name.required" class="text-danger">
                    {{ $tc('validation.required') }}
                  </span>
                  <span v-if="!$v.formData.name.minLength" class="text-danger">
                    {{ $tc('validation.name_min_length', $v.formData.name.$params.minLength.min, { count: $v.formData.name.$params.minLength.min }) }}
                  </span>
                </div>
              </div>


              <div class="form-group">
                <label class="form-label">Practice Code</label>
                <base-input
                  :invalid="$v.formData.email.$error"
                  v-model.trim="formData.email"
                  type="text"
                  name="email"
                  tab-index="3"
                  @input="$v.formData.email.$touch()"
                />
                <div v-if="$v.formData.email.$error">
                  <span v-if="!$v.formData.email.email" class="text-danger">
                    {{ $tc('validation.email_incorrect') }}
                  </span>
                </div>
              </div>

             
            </div>

            <div class="col-sm-5">
               <div class="form-group">
                <label class="form-label">PCT</label>
                 <base-input
                  v-model.trim="formData.contact_name"
                  :label="$t('customers.contact_name')"
                  type="text"
                  tab-index="2"
                />
              </div>

              <div class="form-group">
                <label class="form-label">Mileage</label>
                <base-input
                  v-model.trim="formData.contact_name"
                  :label="$t('customers.contact_name')"
                  type="text"
                  tab-index="2"
                />
              </div>
              
              
            </div>
          </div>
          <hr> <!-- first row complete  -->
          <div class="row">
            <div class="section-title col-sm-2">Contacts</div>
             <div class="col-sm-5">
             
             </div>
            <div class="col-sm-5">
             
            </div>
          </div>
          <hr> <!-- second row complete  -->

          <div class="row">
            <div class="section-title col-sm-2">
              Invoice note
            </div>
            <div class="col-sm-5">
              

            </div>
            <div class="col-sm-5">

            </div>
          </div>

           <hr> <!-- second row complete  -->
          <div class="row">
            <div class="section-title col-sm-2">
              Rates
            </div>
            <div class="col-sm-5">
              

            </div>
            <div class="col-sm-5">

            </div>
          </div>

          <hr/>
          <div class="row">
            <div class="section-title col-sm-2">
              Partners
            </div>
            <div class="col-sm-5">
              

            </div>
            <div class="col-sm-5">

            </div>
          </div>

            <hr/>
          <div class="row">
            <div class="section-title col-sm-2">
              Notes
            </div>
            <div class="col-sm-5">
              

            </div>
            <div class="col-sm-5">

            </div>
          </div>

          



        </div>
      </div>
    </form>
  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
import MultiSelect from 'vue-multiselect'
import { validationMixin } from 'vuelidate'
import AddressStub from '../../stub/address'
const { required, minLength, email, url, maxLength } = require('vuelidate/lib/validators')

export default {
  components: { MultiSelect },
  mixins: [validationMixin],
  data () {
    return {
      isCopyFromBilling: false,
      isLoading: false,
      formData: {
        name: null,
        contact_name: null,
        email: null,
        phone: null,
        currency_id: null,
        website: null,
        addresses: []
      },
      currency: null,
      billing: {
        name: null,
        country_id: null,
        state: null,
        city: null,
        phone: null,
        zip: null,
        address_street_1: null,
        address_street_2: null,
        type: 'billing'
      },
      shipping: {
        name: null,
        country_id: null,
        state: null,
        city: null,
        phone: null,
        zip: null,
        address_street_1: null,
        address_street_2: null,
        type: 'shipping'
      },
      currencyList: [],

      billing_country: null,
      shipping_country: null,

      billingCountries: [],
      shippingCountries: []
    }
  },
  validations: {
    formData: {
      name: {
        required,
        minLength: minLength(3)
      },
      email: {
        email
      },
      website: {
        url
      }
    },
    billing: {
      address_street_1: {
        maxLength: maxLength(255)
      },
      address_street_2: {
        maxLength: maxLength(255)
      }
    },
    shipping: {
      address_street_1: {
        maxLength: maxLength(255)
      },
      address_street_2: {
        maxLength: maxLength(255)
      }
    }
  },
  computed: {
    ...mapGetters('currency', [
      'defaultCurrency',
      'currencies'
    ]),
    isEdit () {
      if (this.$route.name === 'customers.edit') {
        return true
      }
      return false
    },
    hasBillingAdd () {
      let billing = this.billing
      if (
        billing.name ||
        billing.country_id ||
        billing.state ||
        billing.city ||
        billing.phone ||
        billing.zip ||
        billing.address_street_1 ||
        billing.address_street_2) {
        return true
      }
      return false
    },
    hasShippingAdd () {
      let shipping = this.shipping
      if (
        shipping.name ||
        shipping.country_id ||
        shipping.state ||
        shipping.city ||
        shipping.phone ||
        shipping.zip ||
        shipping.address_street_1 ||
        shipping.address_street_2) {
        return true
      }
      return false
    }
  },
  watch: {
    billing_country (newCountry) {
      if (newCountry) {
        this.billing.country_id = newCountry.id
        this.isDisabledBillingState = false
      } else {
        this.billing.country_id = null
      }
    },
    shipping_country (newCountry) {
      if (newCountry) {
        this.shipping.country_id = newCountry.id
        return true
      } else {
        this.shipping.country_id = null
      }
    }
  },
  mounted () {
    this.fetchCountry()
    if (this.isEdit) {
      this.loadCustomer()
    } else {
      this.currency = this.defaultCurrency
    }
  },
  methods: {
    currencyNameWithCode ({name, code}) {
      return `${code} - ${name}`
    },
    ...mapActions('customer', [
      'addCustomer',
      'fetchCustomer',
      'updateCustomer'
    ]),
    async loadCustomer () {
      let { data: { customer, currencies, currency } } = await this.fetchCustomer(this.$route.params.id)

      this.formData.id = customer.id
      this.formData.name = customer.name
      this.formData.contact_name = customer.contact_name
      this.formData.email = customer.email
      this.formData.phone = customer.phone
      this.formData.currency_id = customer.currency_id
      this.formData.website = customer.website

      if (customer.billing_address) {
        this.billing = customer.billing_address

        if (customer.billing_address.country_id) {
          this.billing_country = this.billingCountries.find((c) => c.id === customer.billing_address.country_id)
        }
      }

      if (customer.shipping_address) {
        this.shipping = customer.shipping_address

        if (customer.shipping_address.country_id) {
          this.shipping_country = this.shippingCountries.find((c) => c.id === customer.shipping_address.country_id)
        }
      }

      this.currencyList = currencies
      this.formData.currency_id = customer.currency_id
      this.currency = currency
    },
    async fetchCountry () {
      let res = await window.axios.get('/api/countries')
      if (res) {
        this.billingCountries = res.data.countries
        this.shippingCountries = res.data.countries
      }
    },
    copyAddress (val) {
      if (val === true) {
        this.isCopyFromBilling = true
        this.shipping = {...this.billing, type: 'shipping'}
        this.shipping_country = this.billing_country
        this.shipping_state = this.billing_state
        this.shipping_city = this.billing_city
      } else {
        this.shipping = {...AddressStub, type: 'shipping'}
        this.shipping_country = null
        this.shipping_state = null
        this.shipping_city = null
      }
    },
    async submitCustomerData () {
      this.$v.formData.$touch()

      if (this.$v.$invalid) {
        return true
      }
      if (this.hasBillingAdd && this.hasShippingAdd) {
        this.formData.addresses = [{...this.billing}, {...this.shipping}]
      } else {
        if (this.hasBillingAdd) {
          this.formData.addresses = [{...this.billing}]
        }
        if (this.hasShippingAdd) {
          this.formData.addresses = [{...this.shipping}]
        }
      }

      if (this.isEdit) {
        if (this.currency) {
          this.formData.currency_id = this.currency.id
        }
        this.isLoading = true
        try {
          let response = await this.updateCustomer(this.formData)
          if (response.data.success) {
            window.toastr['success'](this.$t('customers.updated_message'))
            this.$router.push('/admin/customers')
            this.isLoading = false
            return true
          } else {
            this.isLoading = false
            if (response.data.error) {
              window.toastr['error'](this.$t('validation.email_already_taken'))
            }
          }
        } catch (err) {
          if (err.response.data.errors.email) {
            this.isLoading = false
            window.toastr['error'](this.$t('validation.email_already_taken'))
          }
        }
      } else {
        this.isLoading = true
        if (this.currency) {
          this.isLoading = true
          this.formData.currency_id = this.currency.id
        }
        try {
          let response = await this.addCustomer(this.formData)
          if (response.data.success) {
            window.toastr['success'](this.$t('customers.created_message'))
            this.$router.push('/admin/customers')
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
