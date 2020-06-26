<template>
  <v-row>
    <v-col cols="7">
      <v-card class="ml-3">
        <v-card-title class="mb-4">
          <h2>このページは天気を通知するLINEボットサーバーです</h2>
        </v-card-title>
        <v-card-text class="black--text">
          <h2 class="mb-1">・経緯</h2>
          <p>wwwwwww</p>
          <h2 class="mb-1">・使用言語、環境</h2>
          <p>Ruby / Ruby on Rails / JavaScript / AWS / Vue.js（ページ作成）</p>
          <v-row>
            <v-col>
              <h2 class="mb-1">・友達追加</h2>
              <p>LINE_ID： @793rgjbt</p>
            </v-col>
            <v-col>
              <img src='https://i.gyazo.com/c446bef9d803b76ba58dcc00bdb4202a.png'>
            </v-col>
          </v-row>
        </v-card-text>
      </v-card>
    </v-col>
    <v-col class="text-center" cols="2">
        <img src="../../../../assets/images/default_icon.jpeg"
            class="default_icon">
        <h1>雨男</h1>
    </v-col>
    <v-col cols="3">
      <div class="balloon2-left">
        <p>ちなみに今日の大阪の天気は晴れだ<br>傘はいらんよ</p>
      </div>
      <div class="balloon2-left">
        <p>これからは曇りそうだわ</p>
      </div>
    </v-col>
  </v-row>
</template>

<script>
export default {

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