import 'dart:io';

import 'package:flutter/material.dart';
import 'package:zoe_quiz_app/componets/fetch_and_format_data.dart';
import 'package:zoe_quiz_app/pages/landingpage.dart';

class SlashScreen extends StatefulWidget {
  const SlashScreen({super.key});

  @override
  State<SlashScreen> createState() => _SlashScreenState();
}

class _SlashScreenState extends State<SlashScreen> {
  void nextPage(){
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => const LandingPage(),
      ));
    });
  }

  Future<bool> Test()async{
    try {
  final result = await InternetAddress.lookup('example.com');
  if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
    return true;
  }
} on SocketException catch (_) {
  return false;
}
return false;
  }
  Future<void> testAndNavigate() async {
  bool isConnected = await Test();
  if (isConnected) {
    //Online mode
    nextPage();
  } else {
    //Offline mode
    nextPage();
  }
}

  @override
  void initState() {
    Test();
    // TODO: implement initState
    super.initState();
    


    //loading
    testAndNavigate();

  }
  @override

  
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 270,),
          Icon(Icons.hub_outlined,size: 40,),
          Text("\n\n fetching data..."),
          SizedBox(height: 270,),
          Container(
            height: 10,
            width: 10,
            child: CircularProgressIndicator(color: Colors.black,))
        ],
      ),),
    );
  }
}