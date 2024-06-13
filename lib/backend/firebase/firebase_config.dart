import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBJVAx2zMMJXGTihRDahPZ6C1Gy7ihfhbU",
            authDomain: "transport-a-i-2ghsh9.firebaseapp.com",
            projectId: "transport-a-i-2ghsh9",
            storageBucket: "transport-a-i-2ghsh9.appspot.com",
            messagingSenderId: "222202246350",
            appId: "1:222202246350:web:a3f68cae8a4dea55d64c9f"));
  } else {
    await Firebase.initializeApp();
  }
}
