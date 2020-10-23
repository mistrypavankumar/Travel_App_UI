import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget {
  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
              child: Column(
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      maxRadius: 25,
                      child: Icon(
                        Icons.people_alt_sharp,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20.0),
                    child: Icon(Icons.search_sharp),
                  ),
                  ],
                ),

                //-----> HEADING <--------//

                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical:20 ),
                  child: Text("Discover",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                )
          ],
        ),
      ),
    );
  }
}