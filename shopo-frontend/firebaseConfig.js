import { initializeApp } from "firebase/app";
import { getMessaging } from "firebase/messaging";
import store from "./src/store/store";

const getConfig = store.getState().websiteSetup?.websiteSetup?.payload?.firebase_info;

let messaging;

const firebaseCloudMessaging = {
    //initializing firebase app
    init: async function () {
        if (getConfig) {
            const app = initializeApp({
                apiKey: getConfig.apiKey,
                authDomain: getConfig.authDomain,
                projectId: getConfig.projectId,
                storageBucket: getConfig.storageBucket,
                messagingSenderId: getConfig.messagingSenderId,
                appId: getConfig.appId,
                measurementId: getConfig.measurementId,
            });
            messaging = getMessaging(app);
        }
    },
    getToken: async function () {
        if (!messaging) {
            await this.init();
        }
        // Add your logic to get the token here
        // Example: return await getToken(messaging, { vapidKey: 'YOUR_VAPID_KEY' });
    },
};

export { firebaseCloudMessaging };
