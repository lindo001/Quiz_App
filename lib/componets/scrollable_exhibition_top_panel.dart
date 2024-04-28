import 'package:flutter/material.dart';
import 'package:zoe_quiz_app/componets/fetch_and_format_data.dart';

class ScrollableExhibitionTopPanel extends StatelessWidget {
  final screenDetals ;

   ScrollableExhibitionTopPanel({super.key,required this.screenDetals});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: screenDetals.height* 0.30,
      width: screenDetals.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ListView.builder(itemCount: 2,itemBuilder: (context,index){
          // holders(screenDetals: screenDetals);
          Text("default text");
        }),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //    holders(screenDetals: screenDetals),
        //    holders(screenDetals: screenDetals),
        //    holders(screenDetals: screenDetals),
        // ],),
      ),
    );
  }
}

class holders extends StatelessWidget {
  const holders({
    super.key,
    required this.screenDetals,
    required this.imgPath
  });

  final dynamic screenDetals;
  final dynamic imgPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
  //  FetchAndFormatData fetchAndFormatData =  FetchAndFormatData();
  //  fetchAndFormatData.fetchPost
  //  fvar h = fetchAndFormatData.getList();
   
      print(imgPath.toString().split("/")[1].split(".")[0]); 
        FetchAndFormatData().fetchPost("BASH");
      },
      child: Container(margin: EdgeInsets.only(right: 30),height:  screenDetals.height* 0.30,width:  screenDetals.width* 0.60
      ,decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imgPath)),
        color: Colors.amber.shade100,
        borderRadius: BorderRadius.circular(10)
      ),
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          
          child: Text(imgPath.toString().split("/")[1].split(".")[0])),
      )
      ),
    );
  }
}