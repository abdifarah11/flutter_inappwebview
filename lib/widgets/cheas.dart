import 'package:flutter/material.dart';

class CheesePizzaTab extends StatelessWidget {
  const CheesePizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Center(
         
        ),
        SizedBox(height: 10),
          Column(
            children: [
              // Circular avatar for the picture
              ClipOval(
                child: Container(
                  width: 300, // Diameter of the circular image
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange,
                      width: 0,
                    ),
                  ),
                  child: Image.asset(
                    'assets/cheespiza.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
  //             Stack(
  // children: [
    
  //   Positioned(
  //     top: 2, // Offset the shadow
  //     left: 2, // Offset the shadow
  //     child: Text(
  //       "Elevated Text",
  //       style: TextStyle(
  //         fontSize: 24,
  //         color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3), // Shadow color
  //       ),
  //     ),
  //   ),
    // Main text
    SizedBox(height:170,),
    Text(
      "cheese_pizza.dart",
      style: TextStyle(
        fontSize: 36,
        color: const Color.fromARGB(255, 10, 23, 167),
      ),
    ),
  ],
)

            ],
         // ),
        //],
      
      
    );
  }
}