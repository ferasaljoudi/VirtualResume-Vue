<template>
    <div class="bg">
        <div class="embossTop"></div>
        <div class="container">
            <div class="embossLeft"></div>
            <div class="leftProfile">
                <div class="myNameForBigScreen">
                    Feras Aljoudi
                </div>
                <br>
                <div class="embossBottom"></div>
            </div>
            <img src="../assets/FerasAljoudi.jpg" class="myImage">
            <div class="leftProfile">
                <div class="myNameForSmallScreen">Feras Aljoudi</div>
            </div>
            <div class="RightProfile">
                <div class="embossTop">
                </div>
                <br>
                <div class="descriptionBox">
                    Final Year of a Bachelor's in Software Engineering with an expected graduation date in April 2025.
                </div>
                
            </div>
            <div class="embossRight"></div>
        </div>
        <div class="embossBottom"></div>

    </div>
</template>

<script setup lang="ts">
</script>

<style scoped>
.bg {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    min-height: 150vh;
    background-image: url("../assets/headerCover.jpg");
    background-size: cover;
    background-position: center center;
    background-repeat: no-repeat;
    background-attachment: fixed;
}
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: row;
    overflow-x: hidden;
    overflow-y: hidden;
    max-width: 100%;
}
.leftProfile {
    animation: slideFromLeft 1s ease-out forwards;
}
.RightProfile {
    animation: slideFromRight 1s ease-out forwards;
}

@media (min-width: 750px) {
    .RightProfile {
        text-align: center;
        animation: slideFromRight 1s ease-out forwards;
    }
    .leftProfile {
        animation: slideFromLeft 1s ease-out forwards;
    }
    .myNameForSmallScreen {
        display: none;
    }
    .myNameForBigScreen {
        background-color: #bd8176;
        display: flex;
        text-align: center;
        justify-content: center;
        align-items: center;
        font-size: 30px;
        font-family: "Lora", serif;
        font-weight: 800;
        width: 230px;
        height: 250px;
        object-fit: cover;
        -webkit-clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);
        clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);
        position: relative;
        overflow: hidden;
    }
    .myNameForBigScreen::before, .myNameForBigScreen::after {
        content: '';
        position: absolute;
        background: rgba(255, 255, 255, 0.5);
    }
    .myNameForBigScreen::before {
        left: 9%;
        width: 2px;
        top: 10%;
        bottom: 10%;
    }
    .myNameForBigScreen::after {
        left: 7%;
        width: 2px;
        top: 10%;
        bottom: 10%;
    }
    .myNameForBigScreen > span::before, .myNameForBigScreen > span::after {
        content: '';
        position: absolute;
        background: rgba(255, 255, 255, 0.5);
        border-radius: 2px;
        left: 10%;
        right: 10%;
    }
    .myNameForBigScreen > span::before {
        top: 18%;
        height: 2px;
    }
    .myNameForBigScreen > span::after {
        top: 20%;
        height: 2px;
    }
    .descriptionBox {
        font-size: 18px;
        font-family: "Lora", serif;
        font-weight: 500;
        background-color: #bd8176;
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
        width: 230px;
        height: 250px;
        object-fit: cover;
        -webkit-clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);
        clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);
        position: relative;
        overflow: hidden;
        padding-right: 18px;
        padding-left: 18px;
    }
    .descriptionBox::before, .descriptionBox::after {
        content: '';
        position: absolute;
        background: rgba(255, 255, 255, 0.5);
    }
    .descriptionBox::before {
        right: 8%;
        width: 2px;
        top: 10%;
        bottom: 10%;
    }
    .descriptionBox::after {
        right: 6%;
        width: 2px;
        top: 10%;
        bottom: 10%;
    }
    .descriptionBox > span::before, .descriptionBox > span::after {
        content: '';
        position: absolute;
        background: rgba(255, 255, 255, 0.5);
        border-radius: 2px;
        left: 10%;
        right: 10%;
    }
    .descriptionBox > span::before {
        bottom: 18%;
        height: 2px;
    }
    .descriptionBox > span::after {
        bottom: 20%;
        height: 2px;
    }
    .embossTop, .embossBottom {
        background-image: url("../assets/emboss1.jpg");
        background-size: cover;
        background-position: center center;
        background-repeat: no-repeat;
        width: 230px;
        height: 250px;
        object-fit: cover;
        -webkit-clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);
        clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);
    }
    .embossTop {
        animation: slideFromTop 1s ease-out forwards;
    }
    .embossBottom {
        animation: slideFromBottom 1s ease-out forwards;
    }
    .myImage {
        align-items: center;
        width: 230px;
        height: 250px;
        object-fit: cover;
        -webkit-clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);
        clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);
        animation: expandFromCenter 2s ease-out forwards;
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

@media (max-width: 750px) {
    .bg {
        background-attachment: scroll;
    }
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }
    .myNameForBigScreen, .embossBottom,
    .embossTop, .embossRight, .embossLeft {
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
