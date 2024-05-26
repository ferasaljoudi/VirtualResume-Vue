<template>
    <div class="linkMainContainer">
        <div class="darkMode" @click="toggleDarkMode" :title="globalState?.darkMode ? 'Enable Light Mode' : 'Enable Dark Mode'">
            <i :class="globalState?.darkMode ? 'fa-solid fa-sun' : 'fa-solid fa-moon'"></i>
            {{ globalState?.darkMode ? "Light Mode" : "Dark Mode" }}
        </div>
        <div class="share" @click="shareContent" title="Share My Resume">
            <i class="fas fa-share-alt"></i> Share
        </div>
        <div class="download" @click="downloadPdf" title="Download My Resume">
            <i class="fas fa-download"></i> Download
        </div>
    </div>
</template>

<script setup lang="ts">
import { inject } from "vue";
import type { GlobalState } from "../../types";
const globalState = inject<GlobalState>("globalState");

const toggleDarkMode = () => {
    if (globalState) {
        globalState.toggleDarkMode();
    }
};

const shareContent = async () => {
    if (navigator.share) {
        try {
            await navigator.share({
                title: "Feras Aljoudi's Resume",
                text: "Check out Feras' Resume",
                url: window.location.href,
            });
        } catch (error) {
            console.error("Error sharing the content", error);
        }
    } else {
        alert("Web Share API is not supported in your browser.");
    }
};

const downloadPdf = () => {
    const link = document.createElement("a");
    link.href = "FerasAljoudiResume.pdf";
    link.download = "FerasAljoudiResume.pdf";
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
};
</script>

<style scoped>
.linkMainContainer {
    display: flex;
    align-items: center;
    justify-content: space-evenly;
}
.darkMode,
.share,
.download {
    cursor: pointer;
    flex-direction: column;
    align-items: center;
    padding-left: 20px;
    font-family: "Lora", serif;
    color: var(--textIcon-color);
    font-size: 20px;
}
.darkMode:hover ,
.share:hover ,
.download:hover {
    text-decoration: underline;
    font-size: 22px;
}

@media (max-width: 960px) {
    .darkMode,
    .share,
    .download {
        padding-left: 0px;
    }
}

@media (max-width: 400px) {
    .darkMode,
    .share,
    .download {
        font-size: 16.5px;
    }
}
</style>
