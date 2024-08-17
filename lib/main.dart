import 'package:flutter/material.dart';
import 'package:movies/Counter%20App.dart';
import 'package:movies/dynamic_row_column.dart';
import 'package:movies/photo_gallery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

        useMaterial3: true,
      ),
      home: const PhotoGallery(),
      debugShowCheckedModeBanner: false,
    );
  }
}



