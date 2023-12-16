import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB14J2HCISaB3bLibVruizUHU62j-dWBjw",
            authDomain: "pdf-upload-e353f.firebaseapp.com",
            projectId: "pdf-upload-e353f",
            storageBucket: "pdf-upload-e353f.appspot.com",
            messagingSenderId: "844226587716",
            appId: "1:844226587716:web:6b629a0c5f139512802011",
            measurementId: "G-RXS8SGR1WD"));
  } else {
    await Firebase.initializeApp();
  }
}
