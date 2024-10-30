import 'package:flutter/material.dart';

class vigitable extends StatelessWidget {
  const vigitable({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
        

SizedBox(height: 20,),

        Container(height: 200,
        width: 400,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
          child: Image.asset("assets/pizza.jpg",fit: BoxFit.cover,)),
          Container(child: Column(
          children: [
              SizedBox(height: 170,),
    Text(
      "home.dart",
      style: TextStyle(
        fontSize: 36,
        color: const Color.fromARGB(255, 10, 23, 167),
      ),
    ),
          ],
        ),)
        ],
        
    );
  }
}
