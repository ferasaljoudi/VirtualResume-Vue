<template>
    <div class="flexContainer">
        <div class="mainContainer">
            <div class="titleContainer">
                <div class="title">
                    {{ title }}
                </div>
            </div>
            <div class="location">
                {{ location }}
            </div>
        </div>
        <div class="date">
            {{ date }}
        </div>
    </div>
</template>

<script setup lang="ts">
import { defineProps } from "vue";

defineProps({
    title: String,
    location: String,
    date: String,
});

</script>

<style scoped>
.flexContainer {
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: var(--title-color);
    padding: 10px;
}
.mainContainer {
    display: block;
}
.titleContainer {
    display: flex;
    align-items: center;
}
.title {
    font-family: "Lora", serif;
    font-weight: 900;
    font-size: 18px;
}
i {
    font-size: 20px;
    color: var(--icon-color);
    transition: transform 0.3s;
}
i:hover {
    transform: scale(1.3);
}
.location {
    font-family: "Lora", serif;
    font-weight: 600;
    font-size: 16px;
}
.date {
    font-family: "Lora", serif;
    font-weight: 600;
    font-size: 16px;
}

@media (max-width: 580px) {
    .title {
        font-size: 16px;
    }
    .location,
    .date {
        font-size: 12px;
    }
}

@media (max-width: 500px) {
    .flexContainer {
        display: block;
    }
}
</style>