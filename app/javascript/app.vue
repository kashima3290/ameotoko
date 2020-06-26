<template>
  <v-app>
    <bot-header></bot-header>

    <v-main>
      <v-container
        class="fill-height"
        fluid
      >
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
  import BotHeader from './packs/home/bot-header';
  export default {
    props: {
      source: String,
    },
    components: {
      BotHeader
    }
  }
</script>