import 'package:flutter/material.dart';
import 'package:kuiss/models/car.dart';
import 'package:kuiss/pages/home.dart';
import 'package:kuiss/pages/profile.dart';

class Root extends StatefulWidget {
  final String username;
  const new({super.key, required this.username});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  //untuk nyesuaikan bottom barnya pakai index(inisiasi)
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    //pagenya dibuat list
    final List<Widget> pages = [HomePage(), ProfilePage(username: widget.username,)];

    return Scaffold(
      appBar: AppBar(title: Text("Halo, ${widget.username}"), 
      backgroundColor: Colors.green, foregroundColor: Colors.white,),
      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        //selected (ngehighlight)
        currentIndex: _selectedIndex,
        //logic ganti selected index
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
