import 'package:flutter/material.dart';
import 'package:travel_app/screens/discorver_screen.dart';

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

                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(40),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20)
                                  ),
                                  color: Colors.red,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal:0),
                                  child: Image.asset('./assets/nature.png'),
                                ),
                              ),

                  ///---->   Button and skip  ----> ////
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical:70.0),
                                child: RaisedButton(
                                  onPressed: () =>{
                                   Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context) => DiscoverScreen()), 
                                   )
                                  },
                                  color: Colors.white,
                                   shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                                    child: Icon(Icons.keyboard_arrow_right,
                                    size: 30,
                                    ),
                                  ),
                                  ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () =>{
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DiscoverScreen()), 
                                   ),
                                  },
                                      child: Text("Skip",
                                      style: TextStyle(
                                          fontSize: 16,
                                      ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                ///---->   Button and skip (End) ----> ////
                
                            ],
                          ),
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