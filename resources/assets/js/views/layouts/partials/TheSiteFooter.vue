<template>
  <footer class="site-footer">
    <div class="text-right">
      {{ $t('general.powered_by') }}
      <a
        href="http://fdesigns.co.uk"
        target="_blank">fdesigns
      </a>
    </div>
  </footer>
</template>

<script type="text/babel">
export default {
  data () {
    return {
      footer: 'footer'
    }
  }
}
</script>
