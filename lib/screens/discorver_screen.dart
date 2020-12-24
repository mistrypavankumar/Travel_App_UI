import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DiscoverScreen extends StatefulWidget {
  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final List<String> menu = [
    "Best Nature",
    "Historical",
    "Most View",
    "Peace Place",
    "Beautify Nature"
  ];

  bool isActive = false;
  int _selectedItem;

  @override
  void initState() {
    _selectedItem = 0;

    super.initState();
  }

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
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(Icons.search_sharp),
                ),
              ],
            ),

            //-----> HEADING <--------//

            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    "Discover",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            Expanded(
              child: Container(
                height: 20,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: menu.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: GestureDetector(
                        onTap: () => {
                          setState(() => {
                            _selectedItem = index

                          })
                        },
                        child: Text(
                          menu[index],
                          style: TextStyle(
                            fontSize: 16,
                            color: _selectedItem == index ? Colors.green : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
