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
  import MainFirst from './packs/home/main/main-first';
  import MainSecond from './packs/home/main/main-second';
  import MainThird from './packs/home/main/main-third';
  import axios from 'axios';
  export default {
    props: {
      source: String,
    },
    data() {
      return {
      }
    },
    created(){
      this.todayWeather();
    },
    methods: {
      todayWeather() {
        let OPEN_WETHER_MAP_API = gon.open_weather_map_api;
        let now_weather = axios.get('https://api.openweathermap.org/data/2.5/weather?q=Osaka-shi,jp&units=metric&lang=ja&APPID=' + OPEN_WETHER_MAP_API)
        let forecast = axios.get('http://api.openweathermap.org/data/2.5/forecast?q=Osaka-shi,jp&units=metric&lang=ja&APPID=' + OPEN_WETHER_MAP_API)
        console.log(now_weather)
        console.log(forecast)
      }
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