import 'package:flutter/material.dart';
import 'package:translation_app/widgets/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Language Translator Application',
      //debugShowMaterialGrid: true,
      //showSemanticsDebugger: true,
      debugShowCheckedModeBanner: false,
      home: LanguageTranslationPage(),
    );
  }
}
