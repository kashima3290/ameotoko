<template>
  <v-app>
    <bot-header></bot-header>

    <v-main>
      <v-container
        fluid
      >
        <v-row justify="space-around">
          <v-col>
             <img src="../assets/images/default_icon.jpeg"
                  class="default_icon">
          </v-col>
          <v-col></v-col>
        </v-row>
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
  import BotHeader from './packs/home/bot-header';
  import DefaultIcon from '../assets/images/default_icon.jpeg';
  export default {
    props: {
      source: String,
    },
    components: {
      BotHeader
    }
  }
</script>

<style>
.default_icon {
  border-radius: 50%;
}
</style>