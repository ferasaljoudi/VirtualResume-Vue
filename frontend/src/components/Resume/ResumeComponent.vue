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
            <SectionTitle title="Store Manager" location="YM Inc Urban Planet, Regina" date="Nov. 2018-Dec. 2021" />
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
            <SectionTitle title="Drowsiness Detection" location="Machine Learning and Image Processing (ENSE412 class)" date="Apr. 2024" />
            <SectionDescription :list="[{ text:'Developed a Driver Drowsiness Detection model using Python and TensorFlow, utilizing a Convolutional Neural Network (CNN) with a pre-trained VGG16 model.'}]" />
            <SectionDescription :list="[{ text:'Employed image preprocessing techniques to resize and normalize facial images sourced from a Kaggle dataset.'}]" />
            <SectionDescription :list="[{ text:'Explored other multiple machine learning algorithms, including Random Forest, K-Nearest Neighbors (KNN), and Decision Trees.'}]" />
            <SectionDescription :list="[{ text:'Integrated the CNN model into a Flask-based web application to demonstrate real-time image analysis and prediction capabilities.'}]" />
            <SectionDescription :list="[{ text:'Achieved high prediction accuracy, validating the model with both test images and external datasets.'}]" />
            <SectionDescription :list="[{ text:'Documented the project development process, model training, and performance analysis in a detailed Jupyter notebook.'}]" />
            <b><SectionDescription :list="[{ preText: 'To view full details: ', text: 'DriverDrowsinessDetection', url: 'https://github.com/ferasaljoudi/DriverDrowsinessDetection' }]" isStar /></b>
        </div>
        <div class="section" :class="{ 'fade-in': Animation6 }">
            <SectionTitle title="Aljoudi Parking System" location="STM32-Based Smart Parking Management System (ENEL351 class)" date="Mar. 2024" />
            <SectionDescription :list="[{ text:'Engineered a smart parking solution using the STM32F103RB microcontroller to optimize parking space usage and enhance vehicle safety within limited-space environments.'}]" />
            <SectionDescription :list="[{ text:'Implemented a user interface with an LCD display to provide real-time parking availability, the rate based on vehicle weight, and fire alarm alerts.'}]" />
            <SectionDescription :list="[{ text:'Incorporated various sensors including pressure, infrared (IR), and gas sensors to manage parking operations and ensure safety.'}]" />
            <SectionDescription :list="[{ text:'Developed mechanisms for automated entrance and exit gate operation using servo motors controlled via pressure and IR sensors.'}]" />
            <SectionDescription :list="[{ text:'Designed and implemented a fire alarm system using a gas sensor and buzzer to enhance emergency responsiveness.'}]" />
            <SectionDescription :list="[{ text:'Programmed the entire system in C, focusing on modular design for easy maintenance and scalability.'}]" />
            <b><SectionDescription :list="[{ preText: 'To view full details: ', text: 'AljoudiParkingSystem', url: 'https://github.com/ferasaljoudi/AljoudiParkingSystem' }]" isStar /></b>
        </div>
        <div class="section" :class="{ 'fade-in': Animation7 }">
            <SectionTitle title="Simon Game" location="Embedded Systems and Interactive Game Design (ENSE352 class)" date="Nov. 2023" />
            <SectionDescription :list="[{ text:'Engineered a Simon Game using C on Keil uVision, incorporating an STM32F103 Nucleo Board for hardware interfacing.'}]" />
            <SectionDescription :list="[{ text:'Designed game logic to run 10 levels of increasing difficulty, with visual feedback provided through a system of 4 LEDs and a separate fail indicator LED. Implemented input handling via push buttons with debounced inputs for accurate player interaction.'}]" />
            <SectionDescription :list="[{ text:'Utilized classic Cylon Eye Scanner as a dynamic start sequence and an innovative binary display to indicate level progression or failure.'}]" />
            <SectionDescription :list="[{ text:'Applied time constraints to user inputs for enhanced gameplay challenge and utilized an isolated resistor for LED current regulation.'}]" />
            <b><SectionDescription :list="[{ preText: 'To view full details: ', text: 'SimonGame', url: 'https://github.com/ferasaljoudi/SimonGame' }]" isStar /></b>
        </div>
        <div class="section" :class="{ 'fade-in': Animation8 }">
            <SectionTitle title="Classes Schedule" location="FPGA-Based Digital Scheduling and Display System (ENEL384 class)" date="Nov. 2023" />
            <SectionDescription :list="[{ text:'Conceptualized and developed a synchronous digital circuit for class scheduling on a BASYS-3 FPGA board.'}]" />
            <SectionDescription :list="[{ text:'Programmed using VHDL in Vivado to control display logic, including class, lab, seminar, midterm, and final schedules with user-interactive buttons and switches.'}]" />
            <SectionDescription :list="[{ text:'Engineered a multiplexing solution to display text and numbers across four 7-segment displays, achieving seamless visual output through rapid switching (0.0025 seconds interval).'}]" />
            <SectionDescription :list="[{ text:'Implemented LED indicators for class selection and a weekly schedule display, enhancing user sectionName and interface intuitiveness.'}]" />
            <SectionDescription :list="[{ text:'Demonstrated proficiency in digital system design and the practical application of hardware description languages and FPGA programming.'}]" />
            <b><SectionDescription :list="[{ preText: 'To view full details: ', text: 'ClassesSchedule', url: 'https://github.com/ferasaljoudi/ClassesSchedule' }]" isStar /></b>
        </div>
        <div class="section" :class="{ 'fade-in': Animation9 }">
            <SectionTitle title="SKDCA Website" location="Team Project for Saskatchewan Career Development Association (SKCDA)" date="May 2023" />
            <SectionDescription :list="[{ text:'Collaborated with a team to design and launch a WordPress-based website aimed at supporting Career Development Practitioners across Saskatchewan.'}]" />
            <SectionDescription :list="[{ text:'Engaged in the full project lifecycle from conceptualization to deployment, ensuring the site provides resources, advocacy, and networking opportunities for professional development.'}]" />
            <SectionDescription :list="[{ text:'Integrated features for member engagement, including forums, event calendars, and professional development modules, leveraging WordPress’s versatile platform.'}]" />
            <SectionDescription :list="[{ text:'Coordinated with cross-functional teams to gather requirements, align objectives, and deliver a user-centric sectionName that aligns with SKDCA’s mission and values.'}]" />
            <SectionDescription :list="[{ text:'Contributed to the creation of a content strategy that addresses the needs of diverse stakeholders within the career development field, enhancing the association’s digital presence.'}]" />
            <b><SectionDescription :list="[{ preText: 'To view full details: ', text: 'SKCDA Project', url: 'https://github.com/ferasaljoudi/SKCDA---Webpage---Design' }]" isStar /></b>
        </div>

        <SectionHeader :iconSrc="'fa-solid fa-graduation-cap'" titleText="EDUCATION" />
        <div class="section" :class="{ 'fade-in': Animation10 }">
            <SectionTitle title="University of Regina" date="Present" />
            <SectionDescription :list="[{ text:'B.A.S. in Software System Engineering'}]" />
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
