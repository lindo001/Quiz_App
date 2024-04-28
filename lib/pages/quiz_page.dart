

import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  String question;
  List<String> possible_answers;
   QuizPage({super.key,required this.question, required this.possible_answers});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int outside_index = 0;
  void NextPage(){
    setState(() {
      outside_index +=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(flex: 1,child: Text(widget.question[outside_index])),

        Expanded(
          flex: 1,child: ListView.builder(
            itemBuilder: (context,index){
              return ListTile( title: Text(widget.possible_answers[index]));

            }))
      ],),
    );
  }
}