import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:societe_immobiliere/splash_screen/splash_screen.dart';
import 'package:societe_immobiliere/utilitaires/habitat.dart';
import 'package:societe_immobiliere/utilitaires/login.dart';
import 'package:societe_immobiliere/utilitaires/signup.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyD-B9Jey9J8Z9VJgDDCsB7riFKh7ExGvjA",
        authDomain: "flutter-firebase-2b250.firebaseapp.com",
        projectId: "flutter-firebase-2b250",
        storageBucket: "flutter-firebase-2b250.appspot.com",
        messagingSenderId: "763938617849",
        appId: "1:763938617849:web:8b3c44779409e9aec4e528",
        measurementId: "G-PLGQBTKQRR",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: LoginPage(),
        ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HabitantPage(),
      },
    );
  }
}
