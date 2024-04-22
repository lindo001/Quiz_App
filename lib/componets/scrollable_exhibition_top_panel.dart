import 'package:flutter/material.dart';

class ScrollableExhibitionTopPanel extends StatelessWidget {
  final screenDetals ;

  const ScrollableExhibitionTopPanel({super.key,required this.screenDetals});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: screenDetals.height* 0.30,
      width: screenDetals.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           holders(screenDetals: screenDetals),
           holders(screenDetals: screenDetals),
           holders(screenDetals: screenDetals),
        ],),
      ),
    );
  }
}

class holders extends StatelessWidget {
  const holders({
    super.key,
    required this.screenDetals,
  });

  final dynamic screenDetals;

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(right: 30),height:  screenDetals.height* 0.30,width:  screenDetals.width* 0.60
    ,decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(10)
    ),
    
    );
  }
}