import 'dart:ffi';
import 'package:zoe_quiz_app/componets/controlled_enums.dart';


class CardModel{
  late String imagePath;
  final double ratings;
  final Category category;
 
  CardModel({required this.category, required this.imagePath,required this.ratings});
}

List<CardModel> demoData = [
  CardModel(category: Category.Linux, imagePath: "imagePath", ratings:4.2 ),
  CardModel(category: Category.DevOps, imagePath: "imagePath", ratings:3.2 ),
  CardModel(category: Category.Docker, imagePath: "imagePath", ratings:3.2 )
];