import 'package:flutter/material.dart';
//import "package:font_awesome_flutter/font_awesome_flutter.dart";

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webview/widgets/cheas.dart';
import 'package:webview/widgets/frias.dart';
import 'package:webview/widgets/vigitable.dart';

import 'widgets/facbook/facebook.dart';
import 'widgets/twitter/twitter.dart';


class VegetableWidget extends StatefulWidget {
  const VegetableWidget({super.key});

  @override
  State<VegetableWidget> createState() => _VegetableWidgetState();
}

class _VegetableWidgetState extends State<VegetableWidget> {
  int _selectedTab = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 148, 11),
        title: const Text(
          'How Pizza',
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.twitter), 
            onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Twitter()));
          
            },
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.facebook),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Facebook()));
          
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _changeTab(0),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _selectedTab == 0 ? const Color.fromARGB(255, 115, 229, 22) : Colors.grey,
                ),
                child: const Text('Vegetable Pizza'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () => _changeTab(1),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _selectedTab == 1 ? Colors.orange : Colors.grey,
                ),
                child: const Text('Cheese Pizza'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () => _changeTab(2),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _selectedTab == 2 ? const Color.fromARGB(255, 0, 30, 255) : Colors.grey,
                ),
                child: const Text('Fries'),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: _getTabContent(_selectedTab),
          ),
        ],
      ),
    );
  }

  Widget _getTabContent(int index) {
    switch (index) {
      case 0:
        return const vigitable();
      case 1:
        return const CheesePizzaTab();
      case 2:
        return const Fries();
      default:
        return const vigitable();
    }
  }
}







  // ),
        
      
      
        // body: Column(
        //   children: [
            
        //   //mainAxisAlignment: MainAxisAlignment.center, // Center the column content
       
             
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         ElevatedButton(onPressed: () {}, child: const Text('Vegetable', style: TextStyle(fontSize: 18)),
        //         ),
        //         const SizedBox(width: 10),
        //         ElevatedButton(
        //           onPressed: () {
                    
        //           },
        //           child: const Text('Cheese Pizza', style: TextStyle(fontSize: 18)),
        //         ),
        //         const SizedBox(width: 10),
        //         ElevatedButton( onPressed: () {} , child: const Text('Fries', style: TextStyle(fontSize: 18)),),
               
        //       ],
              
        //     ),
                  
                
                
            
           
        //   ],
        // ),