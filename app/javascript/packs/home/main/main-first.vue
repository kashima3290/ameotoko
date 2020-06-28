<template>
  <v-row>
    <v-col cols="7">
      <v-card class="ml-3">
        <v-card-title class="mb-4">
          <h2>このページは天気を通知するLINEボットサーバーです</h2>
        </v-card-title>
        <v-card-text class="black--text">
          <h2 class="mb-1">・経緯</h2>
          <p class="mb-7">　朝天気予報を見ることを忘れ、傘をよく忘れるという友人のために、彼の問題を解決するサービスを提供しようと考え、作成しました。彼が会社に出社する午前7時にOpen Weather Map APIから天気予報を取得し、傘を持っていくように通知できるようにしています。<br><br>　また、彼からのフィードバックをもらい、要望に答えながら、アップデートを重ねています。現在は平日以外の通知は不要との問題を解決しています。</p>
          <h2 class="mb-1">・使用言語、環境</h2>
          <p>Ruby / Ruby on Rails / JavaScript / AWS（EC2 / Route53） / Vue.js（ページ作成）</p>
          <h2 class="mb-1">・Github</h2>
          <h1></h1>
          <a href='https://github.com/kashima3290/ameotoko'>ソースコードはこちらから</a>
        </v-card-text>
      </v-card>
    </v-col>
    <v-col class="text-center" cols="2">
        <img src="../../../../assets/images/default_icon.jpeg"
            class="default_icon">
        <h1>雨男</h1>
        <p class="mt-10">LINE_ID： @793rgjbt</p>
    </v-col>
    <v-col cols="3">
      <div class="balloon2-left">
        <p>今の大阪の天気は{{ now_weather }}{{ cloudy }}<br>{{ this.message }}</p>
      </div>
      <img src='https://i.gyazo.com/c446bef9d803b76ba58dcc00bdb4202a.png'>
    </v-col>
  </v-row>
</template>

<script>
export default {
  data() {
      return {
        now_weather: null,
        message: null,
        cloudy: null
      }
    },
    props: {
      source: String,
    },
    created(){
      this.todayWeather();
    },
    methods: {
      todayWeather() {
        console.log(gon.now_weather)
        this.now_weather = gon.now_weather
        if (gon.now_weather.match(/雨/)) {
          this.message = "傘持っていけよ"
        } else if (gon.now_weather.match(/雲/)) {
          this.cloudy = "が広がってるよ"
        } else {
          this.message = "傘はいらないよ"
        }
      }
    }
}
</script>

<style>
.balloon2-left {
  position: relative;
  display: inline-block;
  margin: 1.5em 0 1.5em 15px;
  padding: 7px 10px;
  min-width: 120px;
  max-width: 100%;
  color: #555;
  font-size: 16px;
  background: #FFF;
  border: solid 3px #555;
  box-sizing: border-box;
  border-radius: 15px;
}

.balloon2-left:before {
  content: "";
  position: absolute;
  top: 50%;
  left: -24px;
  margin-top: -12px;
  border: 12px solid transparent;
  border-right: 12px solid #FFF;
  z-index: 2;
}

.balloon2-left:after {
  content: "";
  position: absolute;
  top: 50%;
  left: -30px;
  margin-top: -14px;
  border: 14px solid transparent;
  border-right: 14px solid #555;
  z-index: 1;
}

.balloon2-left p {
  margin: 0;
  padding: 0;
}
</style>