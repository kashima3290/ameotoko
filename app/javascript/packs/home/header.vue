<template>
  <v-app-bar
    app
    color="#fcb69f"
    dark
    src="https://picsum.photos/1920/1080?random"
  >
    <template v-slot:img="{ props }">
      <v-img
        v-bind="props"
        gradient="to top right, rgba(19,84,122,.5), rgba(128,208,199,.8)"
      ></v-img>
    </template>
    <v-toolbar-title>LINE-Bot サーバー "雨男"</v-toolbar-title>
  </v-app-bar>
</template>

<script >
</script>