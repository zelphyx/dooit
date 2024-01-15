import 'package:dooit/binding/binding.dart';
import 'package:dooit/main/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main/tabbarbawah.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: controllerbind(),
      home: homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

