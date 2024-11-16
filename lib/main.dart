import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:siga_alunos/pages/home.dart';
import 'package:siga_alunos/pages/home_page.dart';
import 'package:siga_alunos/pages/login_page.dart';
import 'package:siga_alunos/pages/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyAxqAEeBXe7kjlXH6uNH6b5qXsEuOw-RHk', 
      appId: '1:536923141009:web:d9a7a77bfff06c44b0a030', 
      messagingSenderId: '536923141009', 
      projectId: 'siga-alunos'
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Siga',
      debugShowCheckedModeBanner: false,
      home: Home(),
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
    );
  }
}
