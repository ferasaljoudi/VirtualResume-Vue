<template>
    <div class="mainContainer">
        <ul :class="{ starList: isStar }">
            <li v-for="(item, index) in list" :key="index">
                <span>{{ item.preText }} </span>
                <a v-if="item.url" :href="item.url">{{ item.text }}</a>
                <span v-else>{{ item.text }}</span>
            </li>
        </ul>
    </div>
</template>

<script setup lang="ts">
import { defineProps } from "vue";

type ListItem = {
    preText?: string;
    text: string;
    url?: string;
};

defineProps<{
    list: ListItem[];
    isStar?: boolean;
}>();
</script>

<style scoped>
.mainContainer {
    margin-left: 20px;
    font-family: "Lora", serif;
    margin-top: 10px;
    margin-right: 20px
}
.mainContainer ul {
    list-style-type: disc;
    padding-left: 20px;
}
.mainContainer ul.starList {
    list-style-type: none;
}
.mainContainer ul.starList li::before {
    content: '★';
    padding-right: 10px;
}
.mainContainer a {
    color: var(--link-color, blue);
    text-decoration: underline;
}
.mainContainer a:hover {
    color: darkblue;
    font-size: large;
}
</style>
