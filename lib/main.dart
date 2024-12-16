import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDzbzZu7blwoivBsKq0B6iMQvzHvGFUFlg",
          authDomain: "quiz-app-8d0ab.firebaseapp.com",
          projectId: "quiz-app-8d0ab",
          storageBucket: "quiz-app-8d0ab.firebasestorage.app",
          messagingSenderId: "218508880841",
          appId: "1:218508880841:web:0af14e179ee6b873945618",
          measurementId: "G-S9B02ZB4BX"),
    );
  } else {
    Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz-App',
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Error");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return LoginPage();
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
