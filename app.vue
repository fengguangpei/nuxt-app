<template>
  <h1>{{ msg }}</h1>
</template>
<script setup="ts">
const { data: msg } = await useFetch('http://api.fenggp.com.cn')
</script>
