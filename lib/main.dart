import 'package:doggie/screens/login/log_in.dart';
import 'package:doggie/screens/register/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => const LogIn(),
        '/register': (context) => const Register(),
      },
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    );
  }
}

