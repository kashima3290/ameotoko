<template>
  <v-app>
    <bot-header></bot-header>

    <v-main>
      <div
        fluid
      >
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
             <img src="../assets/images/default_icon.jpeg"
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
        <template>
          <v-parallax
            height="300"
            src="https://lh3.googleusercontent.com/_utdRJsQDHnfVvuqFWoZEbz0v6RKxVYrvneyFt-Atpfe1NpzAZJPlDnhqQVgnvV2JTMgutBmUb_DDF2oPk3IP8e8RaS-UzzTriGuYyCesd8ygPtEmAsFoVBL6OE3-MMuomeoRxPvveGGwHt5ql1Xr12Ob852ZMTSAGWa-JoIA9GnKjEuFYJHNR-cinAWXLLzbNJAah3KwyCYabEz6pDLL2YfEjZz8SHtdWPpV0v5E6W5MX1lTRM-EDMMlUaRtUlBYzDe-BVpBFyZVpR4zOfnT0hcTuVHcJFQ8nU-6lUqb9mfGRiEWP4AHKBFys58fJei25zhTeT5wiYz9HaozAh039wL1YfU2phx-Cmnq-qy-NSK8vC94Sast7RVAjKz4lOizYL-Fi1D2AYIWurp_xPx71p1bIj6QI6m8D_3Pfs8QnsQViqfQwyEKYkrkP9u7fcO3pAQNaOXpIRzqKXK9RCs_YEAybfFIqV29SQ9vnzfbUfC0v8GzohXcE2zVJ75Lw0lNs34BSJyXX9nTyydeJyXfsdyY4k3HmVGiDrbu7aaYaM0djPkNO-CarS9uHtVYX4yX4ICGOeYoua5XmJ6LKMVwX75ZVNArAlvPYE83RnXSzyrjVfue6Nn6ojTevPYW4Jv9WWdmyemiOP-TB8N-3mI0LX3EAFKnoaO6OqXW-5f5eibj2Q2JuT_6RJBKp9P=w1920-h1200-no?authuser=0"
          >
            <v-row
              align="center"
              justify="center"
            >
              <v-col class="text-center" cols="12">
                <h1 class="mb-4 black--text">Versions</h1>
              </v-col>
            </v-row>
          </v-parallax>
        </template>

        <template>
          <v-timeline>
            <v-timeline-item
              v-for="n in 3"
              :key="n"
              color="red lighten-2"
              large
            >
              <template v-slot:opposite>
                <span>Tus eu perfecto</span>
              </template>
              <v-card class="elevation-2">
                <v-card-title class="headline">Lorem ipsum</v-card-title>
                <v-card-text>
                  Lorem ipsum dolor sit amet, no nam oblique veritus. Commune scaevola imperdiet nec ut, sed euismod convenire principes at. Est et nobis iisque percipit, an vim zril disputando voluptatibus, vix an salutandi sententiae.
                </v-card-text>
              </v-card>
            </v-timeline-item>
          </v-timeline>
        </template>
      </div>
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

<style>
.default_icon {
  border-radius: 50%;
}

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