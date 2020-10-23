import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: Stack(
              children: [
               Column(
                  children: [
                     Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 90),
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.teal[900],
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.elliptical(100,150),
                          )
                        ),
                  child:  SafeArea(
                      child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Explore",
                              style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("India with us",
                              style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                  
                ),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color:Colors.teal[900],
                          border: Border.all(
                            color:Colors.teal[900],
                            width: 0,
                            style: BorderStyle.solid,
                          ),
                        ),

                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                            color:Colors.white,
                            width: 0,
                            style: BorderStyle.solid,
                          ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80),
                            )
                          ),

                          child: Image.asset('./assets/nature.png'),
                        ),
                      )
                    ],
              ),
                ),
            ],
          ),
            ],
        ),
    );
  }
}