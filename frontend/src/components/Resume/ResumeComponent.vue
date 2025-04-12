<template>
    <div>
        <SectionHeader :iconSrc="'fa-brands fa-creative-commons-nd'" titleText="EMPLOYMENT HISTORY" />
        <div class="section" :class="{ 'fade-in': Animation1 }">
            <SectionTitle title="COOP-Bioinformatic Programmer" location="Agriculture & Agri-Food Canada, Remote" date="Sep. 2022-Apr. 2023" />
            <SectionDescription :list="[{ text:'Comprehensive documentation of software tools and workflows.'}]" />
            <SectionDescription :list="[{ text:'Generating dot plots using Gnuplot software and Mummer software in Linux.'}]" />
            <SectionDescription :list="[{ text:'Genetic variant identification using C++, Java, and Python languages.'}]" />
            <SectionDescription :list="[{ text:'Advanced Data Analysis through Sequence Comparison.'}]" />
            <SectionDescription :list="[{ text:'Impact on public health through Bioinformatics.'}]" />
            <b><SectionDescription :list="[{ text: 'Technologies used: Python, C++, Gnuplot for data visualization, Git for version control.'}]" isStar /></b>
        </div>
        <div class="section" :class="{ 'fade-in': Animation2 }">
            <SectionTitle title="COOP-Electrical Engineering Intern" location="SaskPower, Regina" date="Jan. 2022-Aug. 2022" />
            <SectionDescription :list="[{ text:'Preparing contract’s documents between SaskPower and the contractors.'}]" />
            <SectionDescription :list="[{ text:'Contacting various vendors and purchasing the required equipment through emails.'}]" />
            <SectionDescription :list="[{ text:'Preparing Excel sheets and PowerPoint presentations in Microsoft 365.'}]" />
            <SectionDescription :list="[{ text:'Identifying the scope of work with the contractor while visiting the field.'}]" />
            <SectionDescription :list="[{ text:'Uninstalling relays and switches and salvaging them in the proper containers.'}]" />
            <b><SectionDescription :list="[{ text:'Technologies used: Microsoft Office, Project management, Email communication platforms, Electrical equipment handling.'}]" isStar /></b>
        </div>
        <div class="section" :class="{ 'fade-in': Animation3 }">
            <SectionTitle title="Store Manager" location="YM Inc Urban Planet, Regina" date="Nov. 2018-Dec. 2022" />
            <SectionDescription :list="[{ text:'Managing schedules and making sure the store needs are covered.'}]" />
            <SectionDescription :list="[{ text:'Making monthly sales targets.'}]" />
            <SectionDescription :list="[{ text:'Analyzing the business based on the top sellers in the store and the company.'}]" />
            <SectionDescription :list="[{ text:'Managing the wage cost for the store.'}]" />
            <SectionDescription :list="[{ text:'Assisting customers and making sure they were satisfied before they left the store.'}]" />
            <SectionDescription :list="[{ text:'Performing partnership with other banners.'}]" />
            <b><SectionDescription :list="[{ text:'Technologies used: Team leadership, Sale analysis, Schedule organization, Customer service.'}]" isStar /></b>
        </div>
        <div class="section" :class="{ 'fade-in': Animation4 }">
            <SectionTitle title="Project Coordinator" location="ZGEMI, Regina" date="Jan. 2018-May 2018" />
            <SectionDescription :list="[{ text:'Supervising the laborers and making sure the tasks were getting completed.'}]" />
            <SectionDescription :list="[{ text: 'Measuring the area of the rooms and walls.' }]" />
            <SectionDescription :list="[{ text:'Completing the final report for each room and reporting any uncompleted work.'}]" />
            <SectionDescription :list="[{ text:'Recording and adding the employees hours and wage through Microsoft Office – Excel.'}]" />
            <b><SectionDescription :list="[{ text:'Technologies used: Project management, Digital measurement, Comprehensive reports, Microsoft Excel.'}]" isStar /></b>
        </div>

        <SectionHeader :iconSrc="'fa-solid fa-diagram-project'" titleText="PROJECTS" />
        <div class="section" :class="{ 'fade-in': Animation5 }">
            <SectionTitle title="IFS DriverAlert, AI/ML" location="Graduation Project" date="Apr. 2025" />
            <SectionDescription :list="[{ text:'Developed a real-time driver drowsiness detection system using Python, OpenCV, and MediaPipe, which was upgraded from an initial CNN model for broader feature detection.'}]" />
            <SectionDescription :list="[{ text:'Enhanced the system to detect closed eyes, yawning, and looking away using real-time facial landmark tracking.'}]" />
            <SectionDescription :list="[{ text:'Optimized the system for deployment on Raspberry Pi 5, ensuring efficient performance and low startup latency.'}]" />
            <SectionDescription :list="[{ text:'Integrated hardware components including GPIO-connected switches, USB stereo speakers, and camera for complete system functionality.'}]" />
            <SectionDescription :list="[{ text:'Designed a privacy-focused, fully offline solution that processes data in real-time without storing or transmitting user information.'}]" />
            <b><SectionDescription :list="[{ preText: 'To view full details: ', text: 'Capstone', url: 'https://github.com/ferasaljoudi/Capstone' }]" isStar /></b>
        </div>
        <div class="section" :class="{ 'fade-in': Animation6 }">
            <SectionTitle title="FIA-Local Service Finder" location="ENSE375 class" date="Jul. 2024" />
            <SectionDescription :list="[{ text:'Collaborated with a team to develop a secure service platform using Java (Spring Boot) for backend and React.js for frontend, enabling users to list, search, and manage services.'}]" />
            <SectionDescription :list="[{ text:'Implemented user authentication and data management to ensure secure login, registration, and profile updates.'}]" />
            <SectionDescription :list="[{ text:'Designed and integrated responsive user interfaces for seamless service discovery, focusing on usability and accessibility.'}]" />
            <SectionDescription :list="[{ text:'Conducted comprehensive testing, including boundary value analysis and integration testing, to ensure system reliability and robust performance.'}]" />
            <b><SectionDescription :list="[{ preText: 'To view full details: ', text: 'FIA-LocalServiceFinder', url: 'https://github.com/ferasaljoudi/FIA-Local-Service-Finder' }]" isStar /></b>
        </div>
        <div class="section" :class="{ 'fade-in': Animation7 }">
            <SectionTitle title="Top Languages Service" location="Personal" date="Jun. 2024" />
            <SectionDescription :list="[{ text:'Developed a web service providing API endpoints to generate visual language usage insights for GitHub users.'}]" />
            <SectionDescription :list="[{ text:'Enabled customization options, including format, title color, and background color, for personalized output.'}]" />
            <SectionDescription :list="[{ text:'Designed the service for public use, supporting data from both forked and original repositories for comprehensive analysis.'}]" />
            <b><SectionDescription :list="[{ preText: 'To view full details: ', text: 'TopLanguages', url: 'https://github.com/ferasaljoudi/TopLanguages' }]" isStar /></b>
        </div>
        <div class="section" :class="{ 'fade-in': Animation8 }">
            <SectionTitle title="STM32-Based Smart Parking Management System" location="ENEL351 class" date="Mar. 2024" />
            <SectionDescription :list="[{ text:'Engineered a smart parking solution using STM32 microcontroller, featuring real-time parking availability display, automated gate operation, and fire alarm.'}]" />
            <SectionDescription :list="[{ text:'Integrated various sensors including pressure, infrared, and gas sensors to manage parking operations efficiently.'}]" />
            <SectionDescription :list="[{ text:'Incorporated servo motors and various sensors including pressure, infrared (IR), and gas sensors to manage parking operations.'}]" />
            <b><SectionDescription :list="[{ preText: 'To view full details: ', text: 'AljoudiParkingSystem', url: 'https://github.com/ferasaljoudi/AljoudiParkingSystem' }]" isStar /></b>
        </div>
        <div class="section" :class="{ 'fade-in': Animation9 }">
            <SectionTitle title="Embedded Systems and Interactive Game Design" location="ENSE352 class" date="Nov. 2023" />
            <SectionDescription :list="[{ text:'Engineered a Simon Game using C with an STM32 Nucleo Board for hardware interfacing, featuring 10 levels of increasing difficulty, input handling, and visual feedback.'}]" />
            <SectionDescription :list="[{ text:'Utilized classic ”Cylon Eye Scanner” start sequence and level progress/failure indicators.'}]" />
            <SectionDescription :list="[{ text:'Applied time constraints to user inputs for enhanced gameplay challenge and utilized an isolated resistor for LED current regulation.'}]" />
            <b><SectionDescription :list="[{ preText: 'To view full details: ', text: 'SimonGame', url: 'https://github.com/ferasaljoudi/SimonGame' }]" isStar /></b>
        </div>
        <div class="section" :class="{ 'fade-in': Animation10 }">
            <SectionTitle title="FPGA-Based Digital Scheduling and Display System" location="ENEL384 class" date="Nov. 2023" />
            <SectionDescription :list="[{ text:'Developed a class scheduling digital circuit on a BASYS-3 FPGA board using VHDL in Vivado, featuring multiplexed display logic for rapid switching.'}]" />
            <SectionDescription :list="[{ text:'Integrated LED indicators for class selection and weekly schedule display to enhance user experience.'}]" />
            <SectionDescription :list="[{ text:'Demonstrated proficiency in digital system design and FPGA programming, showcasing practical application of hardware description languages.'}]" />
            <b><SectionDescription :list="[{ preText: 'To view full details: ', text: 'ClassesSchedule', url: 'https://github.com/ferasaljoudi/ClassesSchedule' }]" isStar /></b>
        </div>

        <SectionHeader :iconSrc="'fa-solid fa-graduation-cap'" titleText="EDUCATION" />
        <div class="section" :class="{ 'fade-in': Animation11 }">
            <SectionTitle title="University of Regina, Degree" date="Sep. 2018 - Apr. 2025" />
            <SectionDescription :list="[{ text:'Bachelor of Applied Science in Software Systems Engineering'}]" />
        </div>
    </div>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from "vue";
import SectionHeader from "./SectionHeader.vue";
import SectionTitle from "./SectionTitle.vue";
import SectionDescription from "./SectionDescription.vue";

const Animation1 = ref(false);
const Animation2 = ref(false);
const Animation3 = ref(false);
const Animation4 = ref(false);
const Animation5 = ref(false);
const Animation6 = ref(false);
const Animation7 = ref(false);
const Animation8 = ref(false);
const Animation9 = ref(false);
const Animation10 = ref(false);
const Animation11 = ref(false);

const offset = 100;

function handleScroll() {
    const scrollTop = window.scrollY + window.innerHeight - offset;
    const marginElements = document.querySelectorAll(".section");
    marginElements.forEach((element, index) => {
        if (element instanceof HTMLElement && scrollTop > element.offsetTop) {
            switch (index) {
                case 0:
                    Animation1.value = true;
                    break;
                case 1:
                    Animation2.value = true;
                    break;
                case 2:
                    Animation3.value = true;
                    break;
                case 3:
                    Animation4.value = true;
                    break;
                case 4:
                    Animation5.value = true;
                    break;
                case 5:
                    Animation6.value = true;
                    break;
                case 6:
                    Animation7.value = true;
                    break;
                case 7:
                    Animation8.value = true;
                    break;
                case 8:
                    Animation9.value = true;
                    break;
                case 9:
                    Animation10.value = true;
                    break;
                case 10:
                    Animation11.value = true;
                    break;
            }
        }
    });
}

onMounted(() => {
    window.addEventListener("scroll", handleScroll);
});

onUnmounted(() => {
    window.removeEventListener("scroll", handleScroll);
});
</script>

<style scoped>
.section {
    height: auto;
    margin-top: 20px;
    margin-bottom: 20px;
    padding-bottom: 20px;
    opacity: 0;
    transform: translateY(20px);
    transition: opacity 0.8s ease-out, transform 0.8s ease-out;
    background-color: var(--container-color);
}
.fade-in {
    opacity: 1;
    transform: translateY(0);
}
</style>
