import 'package:flutter/material.dart';
import 'package:zoe_quiz_app/util/image_paths.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // change according to theme
      backgroundColor: Colors.grey,

      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            centerTitle: true,
            expandedHeight: 127,
            backgroundColor: Colors.white38,
            title: Text("Q simple quiz"),
            pinned: true,
            ),
            
            SliverGrid( 
              
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisSpacing :15,mainAxisSpacing:19,crossAxisCount: 2),
              delegate: SliverChildBuilderDelegate((BuildContext context,int index){
                return Padding(
                  padding: const EdgeInsets.only(right: 4,left: 4),
                  child: Container(
                  
                  decoration: BoxDecoration(
                  
                    color: Colors.white70,
                    image: DecorationImage(image: AssetImage(image_path[index])),
                    gradient: RadialGradient(colors:[ Colors.black,Colors.black45,Colors.white,Colors.grey]),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("20/12",style: TextStyle(color: Colors.white38),)
                    ],),
                  ),
                  ),
                );
                
              }
              ,childCount: image_path.length
              ),
              ),
              
        ],
      ),
    );
  }
}