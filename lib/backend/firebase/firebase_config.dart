import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCaRqDNs1TEEDQD5LFb91NAjUoIEtuZOb8",
            authDomain: "academinapp.firebaseapp.com",
            projectId: "academinapp",
            storageBucket: "academinapp.appspot.com",
            messagingSenderId: "124385863745",
            appId: "1:124385863745:web:d8555b0096d1fcea967ec0"));
  } else {
    await Firebase.initializeApp();
  }
}
