<template>
    <div class="container">
        <div class="skill-info">
            <span class="type-lang">{{ typeLang }}</span>
            <span class="percentage" v-if="animateStart">{{ innerBoxWidth }}</span>
        </div>
        <div class="box">
            <div :style="innerBoxStyle">
                
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
import { defineProps, computed } from "vue";

const props = defineProps({
    typeLang: String,
    innerBoxWidth: String,
    animateStart: Boolean
});

const innerBoxStyle = computed(() => {
    const rectangleWidth = '10px';
    const spacing = '4px';
    const emptyColor = 'transparent';
    const repeatSize = `calc(${rectangleWidth} + ${spacing})`;

    const backgroundImage = `repeating-linear-gradient(
        to right,
        var(--fillBox-color, #ac594a),
        var(--fillBox-color, #ac594a), ${rectangleWidth},
        ${emptyColor} ${rectangleWidth},
        ${emptyColor} ${repeatSize}
    )`;

    return {
        width: props.animateStart ? props.innerBoxWidth : '0%',
        transition: 'width 2s ease',
        height: '30px',
        backgroundImage: backgroundImage,
        backgroundSize: repeatSize,
        backgroundRepeat: 'repeat',
        display: 'flex',
        alignItems: 'center'
    };
});
</script>

<style scoped>
.container {
    padding-left: 20px;
    padding-right: 20px;
    padding-bottom: 20px;
    max-width: 100%;
}

.skill-info {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.type-lang {
    font-family: "Lora", serif;
    font-weight: bold;
}

.percentage {
    font-family: "Lora", serif;
    font-weight: bold;
}

.box {
    width: 100%;
    height: 30px;
    background-color: white;
    position: relative;
}

</style>
