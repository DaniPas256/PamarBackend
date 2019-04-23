<template>
  <ul class="nav nav-tabs">
    <li :class="[ key ? '' : 'active']" v-for="(lang, key) in languages">
      <a data-toggle="tab" :href="'#menu-' + (key+1)">{{ lang.name }}</a>
    </li>
  </ul>
</template>

<script>
export default {
  mounted() {
    console.log(this.languages);
  },
  props: {
    languages: []
  },
  data() {
    return {};
  }
};
</script>

<style>
.nav-tabs a {
  text-transform: uppercase;
}
</style>

