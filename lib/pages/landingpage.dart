import 'package:flutter/material.dart';
import 'package:zoe_quiz_app/componets/scrollable_exhibition_bottom_panel.dart';
import 'package:zoe_quiz_app/componets/scrollable_exhibition_top_panel.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});
  static String id = "LandingPage";
    
  @override
  Widget build(BuildContext context) {
    final mediaDetail = MediaQuery.of(context).size; 
    return Scaffold(

      backgroundColor: Colors.grey,
      body: Stack(children: <Widget>[
        SafeArea(child: Column(
children: [
            //Header
            Header(screenDetals: mediaDetail),
          //body
          SizedBox(height: 30,),
          ScrollableExhibitionTopPanel(screenDetals: mediaDetail,),
          SizedBox(height: 30,),

          // Container(color: Colors.amber,height: 200,width: double.infinity,)
],
        )
        ),
        
      ],),
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