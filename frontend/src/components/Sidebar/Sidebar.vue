<template>
    <div class="leftSection" :class="{ 'visible': SidebarAnimation }">
        <div class="sectionHeader">
                <i class="fa-solid fa-user-large"></i>CONTACT
        </div>

        <div class="sectionInfo">
            <div id="address">
                <a href="https://www.google.com/maps/place/Regina,+SK,+Canada" target="_blank" title="My address">
                    <i class="fa-solid fa-map-location-dot"></i>Regina, SK. Canada
                </a>
            </div>
            <div id="email">
                <a href="mailto:feras.aljoudi@gmail.com" title="Email me"><i class="fa-solid fa-envelope"></i>feras.aljoudi@gmail.com</a>
            </div>
            <div id="phone">
                <a href="tel:+13062091033" title="Contact me">
                    <i class="fa-solid fa-phone"></i>306-209-1033
                </a>
            </div>
            <div id="linkedin">
                <a href="https://ca.linkedin.com/in/feras-aljoudi-539727242" target="_blank" title="View my LinkedIn">
                <i class="fa-brands fa-linkedin"></i>LinkedIn
                </a>
            </div>
            <div id="github">
                <a href="https://github.com/ferasaljoudi" target="_blank" title="View my Github">
                <i class="fa-brands fa-github"></i>Github
                </a>
            </div>
        </div>
        

        <div class="sectionHeader">
            <i class="fa-solid fa-desktop"></i>TECH SKILLS
        </div>
        <SkillBox typeLang="C/C++" innerBoxWidth="90%" :animateStart="C_Animation" class="itemDescription" />
        <SkillBox typeLang="Java" innerBoxWidth="75%" :animateStart="JavaAnimation" class="itemDescription" />
        <SkillBox typeLang="Python" innerBoxWidth="80%" :animateStart="PythonAnimation" class="itemDescription" />
        <SkillBox typeLang="Javascript" innerBoxWidth="75%" :animateStart="JavascriptAnimation" class="itemDescription" />
        <SkillBox typeLang="PHP" innerBoxWidth="65%" :animateStart="PHPAnimation" class="itemDescription" />
        <SkillBox typeLang="MySQL/SQL" innerBoxWidth="75%" :animateStart="MySQL_SQL_Animation" class="itemDescription" />
        <SkillBox typeLang="ARM/MIPS Assembly" innerBoxWidth="70%" :animateStart="AssemblyAnimation" class="itemDescription" />
        <SkillBox typeLang="HTML/CSS" innerBoxWidth="80%" :animateStart="HTML_CSSAnimation" class="itemDescription" />
        <SkillBox typeLang="React" innerBoxWidth="80%" :animateStart="ReactAnimation" class="itemDescription" />
        <SkillBox typeLang="Vue" innerBoxWidth="75%" :animateStart="VueAnimation" class="itemDescription" />
        <SkillBox typeLang="WordPress/Figma" innerBoxWidth="80%" :animateStart="WordPress_FigmaAnimation" class="itemDescription" />
        <SkillBox typeLang="VHDL" innerBoxWidth="65%" :animateStart="VHDL_Animation" class="itemDescription" />

        <div class="sectionHeader">
            <i class="fa-solid fa-chalkboard-user"></i>SOFT SKILLS
        </div>
        <SkillBox typeLang="Management & Leadership" innerBoxWidth="90%" :animateStart="ManagementAndLeadershipAnimation" class="itemDescription" />
        <SkillBox typeLang="Communication" innerBoxWidth="85%" :animateStart="CommunicationAnimation" class="itemDescription" />
        <SkillBox typeLang="Problem Solving" innerBoxWidth="90%" :animateStart="ProblemSolvingAnimation" class="itemDescription" />

        <div class="sectionHeader">
            <i class="fa-regular fa-face-laugh-beam"></i>HOBBIES
        </div>
        <div class="sectionInfo">
            <div>
                <i class="fa-solid fa-futbol"></i> Soccer
            </div>
            <div>
                <i class="fa-solid fa-chess-pawn"></i> Chess
            </div>
            <div>
                <i class="fa-solid fa-book"></i> Reading
            </div>
            <div>
                <i class="fa-solid fa-person-swimming"></i> Swimming
            </div>
        </div>

        <div class="sectionHeader">
                <i class="fa-regular fa-eye"></i>VISITORS
        </div>
        <div class="counter">{{ visitorCount }}</div>

    </div>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted, defineProps } from 'vue';
import SkillBox from './SkillBox.vue';

defineProps({
    visitorCount: Number
});
let SidebarAnimation = ref(false);
let C_Animation = ref(false);
let JavaAnimation = ref(false);
let PythonAnimation = ref(false);
let JavascriptAnimation = ref(false);
let PHPAnimation = ref(false);
let MySQL_SQL_Animation = ref(false);
let AssemblyAnimation = ref(false);
let HTML_CSSAnimation = ref(false);
let ReactAnimation = ref(false);
let VueAnimation = ref(false);
let WordPress_FigmaAnimation = ref(false);
let VHDL_Animation = ref(false);
let CommunicationAnimation = ref(false);
let ManagementAndLeadershipAnimation = ref(false);
let ProblemSolvingAnimation = ref(false);

function handleScroll() {
    const threshold = 360;
    if (window.scrollY > threshold) {
        SidebarAnimation.value = true;
    }
    if (window.scrollY > 650) {
        C_Animation.value = true;
    }
    if (window.scrollY > 800) {
        JavaAnimation.value = true;
    }
    if (window.scrollY > 950) {
        PythonAnimation.value = true;
    }
    if (window.scrollY > 1000) {
        JavascriptAnimation.value = true;
    }
    if (window.scrollY > 1050) {
        PHPAnimation.value = true;
    }
    if (window.scrollY > 1125) {
        MySQL_SQL_Animation.value = true;
    }
    if (window.scrollY > 1200) {
        AssemblyAnimation.value = true;
    }
    if (window.scrollY > 1275) {
        HTML_CSSAnimation.value = true;
    }
    if (window.scrollY > 1350) {
        ReactAnimation.value = true;
    }
    if (window.scrollY > 1400) {
        VueAnimation.value = true;
    }
    if (window.scrollY > 1500) {
        WordPress_FigmaAnimation.value = true;
    }
    if (window.scrollY > 1600) {
        VHDL_Animation.value = true;
    }
    if (window.scrollY > 1770) {
        ManagementAndLeadershipAnimation.value = true;
    }
    if (window.scrollY > 1850) {
        CommunicationAnimation.value = true;
    }
    if (window.scrollY > 1930) {
        ProblemSolvingAnimation.value = true;
    }
}

onMounted(() => {
    window.addEventListener('scroll', handleScroll);
});
onUnmounted(() => {
    window.removeEventListener('scroll', handleScroll);
});
</script>

<style scoped>
.leftSection {
    position: absolute;
    left: -350px;
    width: 300px;
    transition: left 0.8s ease;
}
.leftSection.visible {
    left: 0px;
    right: 0px;
}
.counter {
    font-family: "Lora", serif;
    width: 100%;
    text-align: center;
    font-size: 25px;
    padding-bottom: 40px;
}
a {
    color: var(--link-color, blue);
    font-size: 18px;
    text-decoration: underline;
}
a:hover {
    color: darkblue;
    font-size: 20px;
}

@media (max-width: 310px) {
    .itemDescription {
        font-size: 14px;
    }
}

@media (max-width: 960px) {
    .leftSection {
        position: none;
        width: 100%;
        display: block;
        position: static;
    }
    .leftSection.visible {
        left: 0px;
        right: 0px;
    }
}

@media (min-width: 800px)
{
    .sectionHeader {
        font-family: "Lora", serif;
        font-size: 30px;
        font-weight: 600;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 30px;
        margin-bottom: 20px;
    }
    .sectionHeader i {
        margin-right: 10px;
    }
    .sectionInfo > div {
        font-family: "Lora", serif;
        display: flex;
        font-size: 20px;
        font-weight: 300;
        justify-content: center;
        align-items: center;
        margin-top: 15px;
    }
    .sectionInfo i {
        margin-right: 10px;
    }
}

@media (max-width: 1200px)
{
    .sectionHeader {
        font-family: "Lora", serif;
        font-size: 20px;
    }
    .sectionInfo > div {
        font-family: "Lora", serif;
        font-size: 15px;
    }
}

@media (max-width: 900px)
{
    .sidebar {
    width: 100%;
    }
    .sectionHeader {
        font-family: "Lora", serif;
        font-size: 30px;
        font-weight: 600;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 30px;
        margin-bottom: 20px;
    }
    .sectionHeader i {
        margin-right: 10px;
    }
    .sectionInfo > div {
        font-family: "Lora", serif;
        display: flex;
        font-size: 20px;
        font-weight: 300;
        justify-content: center;
        align-items: center;
        margin-top: 15px;
    }
    .sectionInfo i {
        margin-right: 10px;
        justify-content: center;
        align-items: center;
    }
    a {
        justify-content: center;
        align-items: center;
    }
    a:hover {
        justify-content: center;
        align-items: center;
    }
}
</style>