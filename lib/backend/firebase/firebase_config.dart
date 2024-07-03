import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBGpC7hZvSx91RQs-NTgvIqOh-NygyEhBc",
            authDomain: "vauice-v1.firebaseapp.com",
            projectId: "vauice-v1",
            storageBucket: "vauice-v1.appspot.com",
            messagingSenderId: "507776909463",
            appId: "1:507776909463:web:744907da9ab91cf55229d2"));
  } else {
    await Firebase.initializeApp();
  }
}
