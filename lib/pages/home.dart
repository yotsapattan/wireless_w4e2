import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

    
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: appBar(),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        resOptions(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(0xffD9D9D9),
              padding: const EdgeInsets.only(top:10,left:10),
              child: Row(   
                children: [    
                  Image.asset('images/arL.png', height: 30,),
                  const Text('Back to Homepages') 
                ] 
              ),
            ),
            Container(
              height: 510,
              color: Color(0xffD9D9D9),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      // Image on the left
                      Image.asset('images/tsuru.png', height: 90,),
                      SizedBox(width: 10), // Adjust the spacing as needed
                      // White box
                      Container(
                        width: 180,
                        height: 80, // Adjusted height to accommodate additional text
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Tsuru ramen (Central World)',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                '4.5 (269 reviews)',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Open: 11:00 - 20:00 everyday',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 139,
              color: Color(0xFF355197),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                          padding: const EdgeInsets.only(left: 30, top:20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Copyright 2024-present',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'TuesdayMenu Co.,Ltd',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'All right reserved',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right:30),
                        child: Image.asset("images/logoTues.png", height: 60,))
                      
                  ],
                ),
              )
            )
          ],
        ),
      ],
    ),
  );
}


  AppBar appBar() {
    return AppBar(
      backgroundColor: Color(0xffD9D9D9),
      elevation: 0.0,
      centerTitle: true,
      leading: Container(
        margin: const EdgeInsets.all(10),
        child: Image.asset('assets/images/map.png'),
      ),
      title: Column(
        children: [
          const Text(
            'Name of restaurant',
            style: TextStyle(
              color: Colors.black,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.symmetric(vertical: 0),
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue, 
              borderRadius: BorderRadius.circular(20),
            ),
            child:  TextField(
              style: TextStyle(fontSize: 12),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffFDFED2),
                hintText: 'Search..',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                )
              ),
            ),
          ),
        ],
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(10),
          child: Image.asset('assets/images/setting.png'),
        ),
      ],
    );
  }
  
  Container resOptions() {
    return   Container(
          height: 250,
          color: Color(0xFF355197),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: const EdgeInsets.all(20),
              width: 180,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'The highest review Restaurants',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset('images/highest.png',
                    width: 70,
                    height: 70,
                     ),
                    )
                  )
                ],
              ),
            ),
          ),
        );
         // go here
  }
}



