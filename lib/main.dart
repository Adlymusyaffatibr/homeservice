import 'package:flutter/material.dart';
import 'package:widget_sederhana/belajar_listview.dart';
import 'package:widget_sederhana/belajar_toggle.dart';
import 'package:widget_sederhana/home_page.dart';
import 'package:widget_sederhana/home_servis.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: service(),
    );
  }
}