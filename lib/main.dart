import 'package:flutter/material.dart';
// import 'pages/landingpage.dart';
import 'package:http/http.dart'as http;
import 'package:zoe_quiz_app/componets/fetch_and_format_data.dart';
import 'package:zoe_quiz_app/pages/landingpage.dart';
import 'package:zoe_quiz_app/pages/slash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // // This widget is the root of your application.
  // @override
  // // void initState() {
  // //   // TODO: implement initState
  // //   super.initState();
  //  final io = FetchAndFormatData();
  //  io.fetchPost();
   
  // // }
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SlashScreen(),
      );
  }
}



enum Category{
LINUX,
DEVOPS,
NETWORKING,
PROGRAMMING,
CLOUD,
DOCKER,
KUBERNETES,
}