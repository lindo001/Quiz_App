import 'package:flutter/material.dart';
import 'package:zoe_quiz_app/componets/controlled_enums.dart';
import 'package:zoe_quiz_app/componets/scrollable_exhibition_bottom_panel.dart';
import 'package:zoe_quiz_app/componets/scrollable_exhibition_top_panel.dart';

class LandingPage extends StatelessWidget {
  bool loadFromInternet;
 LandingPage({Key? key, required this.loadFromInternet}) : super(key: key);

  //If there are any Issues will run this as default
  LandingPage.noArgument(): loadFromInternet = false;

  static String id = "LandingPage";
    
  final List<String> imgPath = [
"assets/BASH.png",
"assets/DevOps.png",
"assets/Docker.png",
"assets/HTML.png",
"assets/JavaScript.png",
"assets/Kubernetes.png",
"assets/Laravel.png",
"assets/Linux.png",
"assets/MySQL.png",
"assets/Python.png",
"assets/WordPress.png"
  ];
  @override
  Widget build(BuildContext context) {
    final mediaDetail = MediaQuery.of(context).size; 
    return  Scaffold(
      body: SafeArea(child: ListView.builder(
        itemCount: Category.values.length,
        shrinkWrap: true,
        itemBuilder: (context,index)=> Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              holders(screenDetals: mediaDetail,imgPath: imgPath[index]),
            ],
          ),
        ),)
        ),
      
    );
    
  }
}

class Header extends StatelessWidget {
  final screenDetals ;
  const Header({super.key,required this.screenDetals});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenDetals.height *0.25,
      width: double.infinity,
      decoration: BoxDecoration(
      color: Color(0xFF162A49),

        // borderRadius: BorderRadius.vertical(bottom: Radius.circular(280))
      ),
    );
  }
}