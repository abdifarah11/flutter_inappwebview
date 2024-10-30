import 'package:flutter/material.dart';

class Fries extends StatelessWidget {
  const Fries({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          // child: Text('chees'),
          
        ),
            
        const SizedBox(height: 10),
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
                    'assets/fries.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                SizedBox(height: 50,),
    const Text(
      "fries.dart",
      style: TextStyle(
        fontSize: 36,
        color: Color.fromARGB(255, 10, 23, 167),
      ),
    ),
            ],
          ),
        ],
      
      
    );
    
  }
}