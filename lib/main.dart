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


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
     formatter(){
      var responseData = [{"id":1017,"question":"What Is The Use Of Kube-controller-manager?","description":null,"answers":{"answer_a":"kube-controller-manager embeds the core control loop which is a non-terminating loop that regulates the state of the system.","answer_b":"kube-controller-manager embeds the core control loop which is a terminating loop that regulates the state of the system.","answer_c":null,"answer_d":null,"answer_e":null,"answer_f":null},"multiple_correct_answers":"false","correct_answers":{"answer_a_correct":"true","answer_b_correct":"false","answer_c_correct":"false","answer_d_correct":"false","answer_e_correct":"false","answer_f_correct":"false"},"correct_answer":null,"explanation":null,"tip":null,"tags":[{"name":"Kubernetes"}],"category":"DevOps","difficulty":"Medium"},
                          {"id":960,"question":"What is a cluster?","description":null,"answers":{"answer_a":"A system made up of multiple servers and other resources","answer_b":"A computer program or device that provides services to other computers","answer_c":"A specific set of ordered operations","answer_d":"A software package that performs a specific function for an end user","answer_e":null,"answer_f":null},"multiple_correct_answers":"false","correct_answers":{"answer_a_correct":"true","answer_b_correct":"false","answer_c_correct":"false","answer_d_correct":"false","answer_e_correct":"false","answer_f_correct":"false"},"correct_answer":null,"explanation":null,"tip":null,"tags":[{"name":"Kubernetes"}],"category":"DevOps","difficulty":"Easy"},];
       
       for (var i in responseData){
        print(i["id"].toString() + i["question"].toString());
       }
       }  // for( var con in responseData ){}
// "question"
// "answer - fillers"
formatter();
    return const Placeholder(
      
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