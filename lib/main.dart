import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ff/crud_example.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
    apiKey: 'AIzaSyAaAh4ecYhmrPPZQv_U4E3O7tg69-PwSFY',
    appId: '1:1089110668507:web:e3b6aaf1b44fbd258b08fe',
    messagingSenderId: '1089110668507',
    projectId: 'testing-76dc1',
    authDomain: 'testing-76dc1.firebaseapp.com',
    storageBucket: 'testing-76dc1.firebasestorage.app',));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CRUDExample(),
    );
  }
}