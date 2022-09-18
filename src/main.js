import { createApp } from "vue";
import "./style.css";
import App from "./App.vue";

let password;
do {
  password = prompt("Please enter the password");
} while (password !== import.meta.env.VITE_APP_PASSWORD);

createApp(App).mount("#app");
