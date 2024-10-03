import 'dart:io';

import 'package:e_commerce_app/views/buyers/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
            apiKey: 'AIzaSyD5u_LN7pAzSZagZbzaTjrQPB8MnzXsrkU',
            appId: '1:260677097183:android:8a58a1a1266e1e02b97b6a',
            messagingSenderId: '260677097183',
            projectId: 'e-commerce-app-26944',
            storageBucket: 'gs://e-commerce-app-26944.appspot.com',
          ),
        )
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
