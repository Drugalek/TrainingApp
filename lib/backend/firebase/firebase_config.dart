import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyACSUcVQGqX_SGsByxmGnCFcb0xBxKSNzk",
            authDomain: "fitnessapp-80001.firebaseapp.com",
            projectId: "fitnessapp-80001",
            storageBucket: "fitnessapp-80001.appspot.com",
            messagingSenderId: "897549096658",
            appId: "1:897549096658:web:93decedbf08a92174f7f0b"));
  } else {
    await Firebase.initializeApp();
  }
}
