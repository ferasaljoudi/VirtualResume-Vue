<template>
    <div class="bg">
        <div class="container">

            <img src="../assets/FerasAljoudi.jpg" class="myImage">
            <div class="leftProfile">
                <div class="myNameForSmallScreen">Feras Aljoudi</div>
            </div>
            <div class="RightProfile">
                <div class="myNameForBigScreen">
                    Feras Aljoudi
                </div>
                <br>
                <div class="descriptionBox">
                    Highly motivated Software Engineering student with strong expertise in programming, data analysis, and system design. Passionate about developing innovative solutions through advanced technologies and continuously expanding my skills in software development, machine learning, and embedded systems.
                </div>
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
</script>

<style scoped>
.bg {
    display: flex;
    flex-direction: column;
    justify-content: center;
    min-height: 110vh;
    background-image: url("../assets/headerCover.jpg");
    background-size: cover;
    background-position: center center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    position: relative;
}
.bg::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.6);
    z-index: 1;
}
.bg > * {
    position: relative;
    z-index: 2;
}
.container {
    display: flex;
    flex-direction: row;
    overflow-x: hidden;
    overflow-y: hidden;
    max-width: 100%;
}
.leftProfile {
    animation: slideFromLeft 1.5s ease-out forwards;
}
.RightProfile {
    animation: slideFromRight 1.5s ease-out forwards;
}

@media (min-width: 900px) {
    .RightProfile {
        animation: slideFromRight 1.5s ease-out forwards;
    }
    .myNameForSmallScreen {
        display: none;
    }
    .myNameForBigScreen {
        display: flex;
        font-size: 40px;
        font-family: "Lora", serif;
        font-weight: 900;
        color: rgb(255, 255, 255);
        object-fit: cover;
        position: relative;
        overflow: hidden;
        padding-left: 18px;
        padding-top: 25px;
    }

    .descriptionBox {
        font-size: 24px;
        font-family: "Lora", serif;
        font-weight: 500;
        color: white;
        object-fit: cover;
        overflow: hidden;
        padding-right: 100px;
        padding-left: 18px;
    }
    .myImage {
        padding-left: 100px;
        width: 500px;
        height: 600px;
        object-fit: cover;
        animation: slideFromLeft 1.5s ease-out forwards;
        mask-image: radial-gradient(circle, rgba(0, 0, 0, 1) 70%, rgba(255, 255, 255, 0) 100%);
        -webkit-mask-image: radial-gradient(circle, rgba(0, 0, 0, 1) 70%, rgba(255, 255, 255, 0) 100%);
    }
}

@media (min-width: 1100px) {
    .embossLeft, .embossRight {
        background-image: url("../assets/emboss1.jpg");
        background-size: cover;
        background-position: center center;
        background-repeat: no-repeat;
        width: 260px;
        height: 220px;
        object-fit: cover;
        -webkit-clip-path: polygon(25% 0%, 75% 0%, 100% 50%, 75% 100%, 25% 100%, 0% 50%);
        clip-path: polygon(25% 0%, 75% 0%, 100% 50%, 75% 100%, 25% 100%, 0% 50%);
    }
    .embossLeft {
        animation: slideFromLeft 1s ease-out forwards;
    }
    .embossRight {
        animation: slideFromRight 1s ease-out forwards;
    }
}

@media (max-width: 900px) {
    .bg {
        background-attachment: scroll;
    }
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }
    .myNameForBigScreen {
        display: none;
    }
    .myNameForSmallScreen {
        margin-top: 20px;
        color: white;
        text-align: center;
        justify-content: center;
        align-items: center;
        font-size: 30px;
        font-family: "Lora", serif;
        font-weight: 800;
    }
    .descriptionBox {
        margin-top: 20px;
        color: white;
        font-size: 20px;
        font-family: "Lora", serif;
        font-weight: 500;
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
    }
    .myImage {
        align-items: center;
        border-radius: 50%;
        width: 250px;
        height: 250px;
        object-fit: cover;
        animation: expandFromCenter 2s ease-out forwards;
    }
}

@keyframes slideFromLeft {
    0% {
        transform: translateX(-100%);
        opacity: 0;
    }
    100% {
        transform: translateX(0);
        opacity: 1;
    }
}
@keyframes slideFromRight {
    0% {
        transform: translateX(100%);
        opacity: 0;
    }
    100% {
        transform: translateX(0);
        opacity: 1;
    }
}
@keyframes slideFromBottom {
    0% {
        transform: translateY(100%);
        opacity: 0;
    }
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
@keyframes slideFromTop {
    0% {
        transform: translateY(-100%);
        opacity: 0;
    }
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
@keyframes expandFromCenter {
    0% {
        transform: scale(0);
        opacity: 0;
    }
    100% {
        transform: scale(1);
        opacity: 1;
    }
}
</style>
