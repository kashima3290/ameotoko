<template>
  <v-app>
    <bot-header></bot-header>
    <v-main>
      <main-first></main-first>
      <main-second></main-second>
      <main-third></main-third>
    </v-main>
  </v-app>
</template>

<script>
  import BotHeader from './packs/home/bot-header';
  import MainFirst from './packs/home/main/main-first'
  import MainSecond from './packs/home/main/main-second'
  import MainThird from './packs/home/main/main-third'
  export default {
    props: {
      source: String,
    },
    components: {
      BotHeader,
      MainFirst,
      MainSecond,
      MainThird
    }
  }
</script>

<style>
.default_icon {
  border-radius: 50%;
}
</style>