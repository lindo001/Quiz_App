import 'package:flutter/material.dart';
// import 'pages/landingpage.dart';
import 'package:http/http.dart'as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPost();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Placeholder(),
    );
  }
}


Future fetchPost() async {
  String apiUrl = 'https://quizapi.io/api/v1/questions';
  String apiKey = 'iWhurQWlfvCeeoJrkcv5VXmsbDNQby0tTnSZErCJ';
  int limit = 10;
  String cat = "DevOps";
  try {
    var response = await http.get(
      Uri.parse('$apiUrl?apiKey=$apiKey&limit=$limit&category=$cat'),
    );

    if (response.statusCode == 200) {
      // Request successful, handle the response here
      print(response.body);
    } else {
      // Request failed
      print('Failed to fetch quiz questions: ${response.statusCode}');
    }
  } catch (e) {
    // Exception occurred during request
    print('Error: $e');
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