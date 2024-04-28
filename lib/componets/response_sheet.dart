

class Responce_sheet{
  String Question;
  var Answers;
  var CorrectAnswers;
  bool multiple_correct_answers;
  var base = [];
  
  Responce_sheet({
    required this.Question,
    required this.Answers,
    required this.CorrectAnswers,
    required this.multiple_correct_answers


    
    }){
      base.add([Question,Answers,CorrectAnswers,multiple_correct_answers]);
    }
}