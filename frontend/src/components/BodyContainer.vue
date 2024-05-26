<template>
    <div class="bodyContainer">
        <div class="sidebar">
            <Sidebar :visitorCount="visitorCount" />
        </div>
        <div :class="['itemsList', {'dark-mode': globalState?.darkMode }]">
            <div class="blocking">
                <div class="LinksComponent">
                    <LinksComponent />
                </div>
                <div class="ResumeComponent">
                    <ResumeComponent />
                </div>
            </div>
            <div class="footer">
                Copyright © 2024, Virtual Resume - Feras Aljoudi
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
import { defineProps, inject } from 'vue';
import type { GlobalState } from "../types";
import LinksComponent from "./Links/LinksComponent.vue";
import ResumeComponent from "./Resume/ResumeComponent.vue";
import Sidebar from "./Sidebar/Sidebar.vue";
const globalState = inject<GlobalState>('globalState');

defineProps({
    visitorCount: Number
});
</script>

<style scoped>
.bodyContainer {
    display: flex;
    align-items: stretch;
    background-color: var(--background-color, #fff);
    color: var(--text-color, #000000);
}
.sidebar {
    width: 300px;
    background-color: var(--sidebar-color);
}
.LinksComponent {
    float: right;
}
.blocking {
    margin: 40px 40px 40px 40px;
}
.itemsList {
    width: calc(100% - 430px);
    flex-grow: 1;
}
.footer {
    font-size: 16px;
    width: 100%;
    background-color: var(--sidebar-color);
    color: var(--text-color, #000000);
    text-align: center;
    font-family: "Lora", serif;
    padding: 15px;
}

@media (max-width: 960px) {
    .bodyContainer {
        flex-direction: column;
    }
    .ResumeComponent {
        padding-top: 0px;
    }
    .sidebar {
        width: 100%;
    }
    .itemsList {
        width: 100%;
    }
    .blocking {
        margin: 0px;
        padding: 10px;
    }
    .LinksComponent {
        float: none;
        padding-top: 10px;
    }
    .footer {
        font-size: 13px;
    }
}

@media (max-width: 500px) {
    .ResumeComponent {
        font-size: 12px;
    }
}

@media (max-width: 390px) {
    .footer {
        font-size: 12px;
    }
}
</style>
