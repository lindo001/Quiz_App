import 'package:http/http.dart' as http;
import 'package:zoe_quiz_app/componets/controlled_enums.dart';
import 'package:zoe_quiz_app/componets/key.dart';
import 'package:zoe_quiz_app/componets/response_sheet.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

List Responce_sheet_container = [];


  class FetchAndFormatData{
    


  // step1 :fetchs data
  Future  fetchPost(String genre) async {
  String apiUrl = 'https://quizapi.io/api/v1/questions';
  String apiKey = apikey;
  int limit = 10;

    List getList(){
    return Responce_sheet_container;
  }
 
  try {
    var response = await http.get(
      Uri.parse('$apiUrl?apiKey=$apiKey&limit=$limit&category=$genre'),
    );
      print("1");

    if (response.statusCode == 200) {
      print("10");
      List responseBody = jsonDecode(response.body);
      // return responseBody;
        var io =  formatter(responseBody);
        // print(Responce_sheet_container);
        //  print( "PROD "+FO);
          return Responce_sheet_container;
    } else {
      // return ;
      print(response.statusCode);

    }
  } catch (e) {
    print('Error: $e');
  }


  void fetchRandomQuizData(){}
  void fetchChoosenQuizData(String genre){
      fetchPost(genre);
  }
}


  // step 2: await for data? step 3: loading screen
    

  // step 3: formates the data into a simple map
    formatter(var res){
      
     for(var i=0; i !=4;i++ ){
      
      Responce_sheet(
        Question: res[i]["question"], 
        Answers: res[i]["answers"], 
        CorrectAnswers: res[i]["correct_answers"], 
        multiple_correct_answers:(res[i]["multiple_correct_answers"]== "true")?true:false
        );
        // print(res);
      Responce_sheet_container.add(res);
    // print(res[i]["question"]);
  }
    }
  // step 4: hand sit to the custom page
  }