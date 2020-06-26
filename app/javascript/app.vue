<template>
  <v-app>
    <bot-header></bot-header>

    <v-main>
      <div
        fluid
      >
        <v-row>
          <v-col class="text-center" cols="4">
             <img src="../assets/images/default_icon.jpeg"
                  class="default_icon">
              <h1>雨男</h1>
          </v-col>
          <v-col cols="4">
            <div class="balloon2-left">
              <p>ちなみに今日の大阪の天気は晴れだ<br>傘はいらんよ</p>
            </div>
          </v-col>
          <v-col cols="4">

          </v-col>
        </v-row>
        <template>
          <v-parallax
            height="300"
            src="https://lh3.googleusercontent.com/pHmWBI58vUreJWPoq0KTLnydYmnoyXwUE0-RxR8gDKEr3ZHhH7qokDb0OI2YUh1WESkQEQQmBbEfDgWyj9yws519ncsp91HFjqDc8X5nOcEAeiPIFYdDEdBxwtM6T5eSWXv2g6jxVvsj0VlGhdoIaYLqr_d8Wy0zv43szMSs0_o-fuffnAUluAxqZBTQGwEQU12hSxbIy811-HVX5RiDITyXcn3w3IQyqotWUk_axGhk4kKgTHVvLRCD8qAEbHT8USXfdpEysq-NWj3dygaCk9KUNGCc-742RZLDY2pgQziffFz8qEDEmXtXzqyilsmi7zgWkXCLfzOlJOuVGkxJao5wXNtMwXcqKvlQD6N8lWSQyXbZFbDRqOHttBMKJSR_7ciiu6LIAJKp7H8L6ygVCMTNnNjVgRQHcutevLsnB8U6qiG3WCj7L3LHYDZ5CRcWt5kgNtxVDulCP5uI-zWZGr1d-wF19VczwGalOKJAubfc6nuTCKfLWtBtQ4AviqcPUQncd1yg07x0Rfktub4zZPlyN80fkztVyAyqqzslCUpieMLmbXgdX82km6DYQkSXfMWo1sKVEs1hy5eTJYRJjR_L8q9l3zD5ZZOtY-a7bCBGe5ECNhfG9TIzqh5M0PkXwlmVe1DtM9I1XhYMQ3V2OZ0HI65J9VfPrYUe9ZhFr1CgeuVh0c0bIfPGBWe5=w1920-h1280-no?authuser=0"
          >
            <v-row
              align="center"
              justify="center"
            >
              <v-col class="text-center" cols="12">
                <h1 class="mb-4">大阪</h1>
                <h4 class="subheading">晴れ</h4>
              </v-col>
            </v-row>
          </v-parallax>
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