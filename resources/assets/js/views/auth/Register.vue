<template>
  <form id="registerForm" @submit.prevent="validateBeforeSubmit">
    <!-- {{ csrf_field() }} -->

    <div class="form-group">
      <base-input
        :invalid="$v.formData.email.$error"
        v-model="formData.email"
        :placeholder="$t('login.enter_email')"
        focus
        type="email"
        name="email"
        @input="$v.formData.email.$touch()"
      />
      <div v-if="$v.formData.email.$error">
        <span v-if="!$v.formData.email.required" class="text-danger">
          {{ $tc('validation.required') }}
        </span>
        <span v-if="!$v.formData.email.email" class="text-danger">
          {{ $tc('validation.email_incorrect') }}
        </span>
      </div>
    </div>

    <div class="form-group">
      <base-input
        :invalid="$v.formData.password.$error"
        v-model="formData.password"
        :placeholder="$t('login.enter_password')"
        id="password"
        type="password"
        name="password"
        @input="$v.formData.password.$touch()"
      />
      <div v-if="$v.formData.password.$error">
        <span v-if="!$v.formData.password.required" class="text-danger">
          {{ $tc('validation.required') }}
        </span>
        <span v-if="!$v.formData.password.minLength" class="text-danger">
          {{ $tc('login.password_max') }}
        </span>
      </div>
    </div>

    <div class="form-group">
      <base-input
        :invalid="$v.formData.password_confirmation.$error"
        v-model="formData.password_confirmation"
        :placeholder="$t('login.retype_password')"
        id="password_confirmation"
        type="password"
        name="password_confirmation"
        @input="$v.formData.password_confirmation.$touch()"
      />
      <div v-if="$v.formData.password_confirmation.$error">
        <span
          v-if="!$v.formData.password_confirmation.required"
          class="text-danger"
        >
          {{ $tc('validation.required') }}
        </span>
        <span
          v-if="!$v.formData.password_confirmation.minLength"
          class="text-danger"
        >
          {{ $tc('login.password_max') }}
        </span>
        <span
          v-if="!$v.formData.password_confirmation.sameAsPassword"
          class="text-danger"
        >
          {{ $tc('login.password_same') }}
        </span>
      </div>
    </div>
    <base-button class="btn btn-login btn-full" type="submit">{{
      $t('login.register')
    }}</base-button>
  </form>
</template>

<script type="text/babel">
import { mapActions } from 'vuex'
import { validationMixin } from 'vuelidate'
const {
  required,
  email,
  minLength,
  numeric,
  minValue,
  maxLength,
  sameAs,
} = require('vuelidate/lib/validators')

export default {
  mixins: [validationMixin],
  data() {
    return {
      formData: {
        email: '',
        password: '',
        password_confirmation: '',
      },
      submitted: false,
      isLoading: false,
    }
  },
  validations: {
    formData: {
      email: {
        required,
        email,
      },
      password: {
        required,
        minLength: minLength(8),
      },
      password_confirmation: {
        required,
        minLength: minLength(8),
        sameAsPassword: sameAs('password'),
      },
    },
  },
  methods: {
    ...mapActions('auth', ['login']),
    async validateBeforeSubmit() {
      this.$v.formData.$touch()
      if (this.$v.$invalid) {
        return true
      }

      this.isLoading = true
      this.login(this.formData)
        .then((res) => {
          this.$router.push('/admin/dashboard')
          this.isLoading = false
        })
        .catch(() => {
          this.isLoading = false
        })
    },
  },
}
</script>
