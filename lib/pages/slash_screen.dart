

import 'package:flutter/material.dart';
import 'package:zoe_quiz_app/pages/landing_page.dart';

class SlashScreen extends StatefulWidget {
  const SlashScreen({super.key});

  @override
  State<SlashScreen> createState() => _SlashScreenState();
}

class _SlashScreenState extends State<SlashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
        return LandingPage();
      }));
    })
   ;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    
    final screendetails = MediaQuery.of(context).size;
    return  Scaffold(

      backgroundColor: Colors.white,
      body: Container(
        height: screendetails.height,
        width:  screendetails.width,
        child: Center(child: Column(
          children: [
            SizedBox(height: 200,),
            Text("Q",style: TextStyle(fontSize: 100),),
            Text("Simple Quiz",style: TextStyle(),),

            // Image.asset("assets/logo.png",width: 170,),
            SizedBox(height: 100,),
            Image.asset("assets/icons/light_theme_loading_logo.gif",),

            
          ],
        )),
      ),
    );
  }
}