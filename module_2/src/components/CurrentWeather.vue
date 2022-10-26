<script setup>

import moment from 'moment/min/moment-with-locales'
moment.locale('fr')
defineProps({
    town: {
        type: String,
        required :true
    },
    weather: {
        type: String,
        requiered: true
    },
    
})

</script>

<template >
        <div class="container">
        <h1>météo à {{town}}</h1>
        <h2>temperature {{weather}}</h2>
        <h2>date : {{moment().format('LLLL')}} </h2>
        <select>
            
        </select>
        </div>

        

</template>
<style>
</style>