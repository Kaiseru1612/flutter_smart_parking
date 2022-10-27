// import 'package:flutter/material.dart';
// import 'package:spark/Navbar/Navbar.dart';
// import 'Navbar/BottomNavbar.dart';

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text("Home"),
//     //   ),
//     // );
//     return Scaffold(
//         body: Container(
//           // constraints: BoxConstraints(maxWidth: 1200),
//           decoration: BoxDecoration(color: Colors.blue[400]),
//           child: Column(
//             children: [
//               Navbar(),
//             ],
//           ),
//         ),

//         bottomNavigationBar: BottomNavbar(),
//         );
//   }
// }

import 'package:flutter/material.dart';
import 'package:spark/Maps/Maps.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Scaffold(
      body: Stack(children: <Widget>[
        MapScreen(),
        Positioned(
          top: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color.fromRGBO(144, 202, 249, 1),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 70,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color.fromRGBO(144, 202, 249, 1),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ]),
    ),
    Text(
      'Index 2: Bookmark',
      style: optionStyle,
    ),
    Text(
      'Index 3: Booking',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Saved',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                label: 'Booking',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.white,
              ),
            ],
            currentIndex: _selectedIndex,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Color.fromRGBO(144, 202, 249, 1),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
