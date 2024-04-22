import 'package:http/http.dart' as http;
import 'package:zoe_quiz_app/componets/controlled_enums.dart';
import 'package:zoe_quiz_app/componets/key.dart';




  class FetchAndFormatData{
    
  // step1 :fetchs data
  Future fetchPost() async {
  String apiUrl = 'https://quizapi.io/api/v1/questions';
  String apiKey = apikey;
  int limit = 10;
  String cat = Category.cloud.toString();
  try {
    var response = await http.get(
      Uri.parse('$apiUrl?apiKey=$apiKey&limit=$limit&category=DevOps'),
    );
      print("1");

    if (response.statusCode == 200) {
      print("10");
          print( response.body);//404
    } else {
      // return ;
      print(response.statusCode);

    }
  } catch (e) {
    print('Error: $e');
  }
}


  // step 2: await for data? step 3: loading screen
    

  // step 3: formates the data into a simple map
    formatter(){
      var responseData = [{"id":1017,"question":"What Is The Use Of Kube-controller-manager?","description":null,"answers":{"answer_a":"kube-controller-manager embeds the core control loop which is a non-terminating loop that regulates the state of the system.","answer_b":"kube-controller-manager embeds the core control loop which is a terminating loop that regulates the state of the system.","answer_c":null,"answer_d":null,"answer_e":null,"answer_f":null},"multiple_correct_answers":"false","correct_answers":{"answer_a_correct":"true","answer_b_correct":"false","answer_c_correct":"false","answer_d_correct":"false","answer_e_correct":"false","answer_f_correct":"false"},"correct_answer":null,"explanation":null,"tip":null,"tags":[{"name":"Kubernetes"}],"category":"DevOps","difficulty":"Medium"},
                          {"id":960,"question":"What is a cluster?","description":null,"answers":{"answer_a":"A system made up of multiple servers and other resources","answer_b":"A computer program or device that provides services to other computers","answer_c":"A specific set of ordered operations","answer_d":"A software package that performs a specific function for an end user","answer_e":null,"answer_f":null},"multiple_correct_answers":"false","correct_answers":{"answer_a_correct":"true","answer_b_correct":"false","answer_c_correct":"false","answer_d_correct":"false","answer_e_correct":"false","answer_f_correct":"false"},"correct_answer":null,"explanation":null,"tip":null,"tags":[{"name":"Kubernetes"}],"category":"DevOps","difficulty":"Easy"},];
      for( var con in responseData ){

      }


    }
  // step 4: hand sit to the custom page
  }