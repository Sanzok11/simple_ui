import 'package:flutter/material.dart';


class ChoiceOption extends StatelessWidget {
  const ChoiceOption({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Color.fromARGB(255, 192, 188, 188)),
      padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 13),
      margin: const EdgeInsets.only(left: 10), 
      child:Text(text,style:const TextStyle(fontWeight: FontWeight.bold))   
    );
  }
}
