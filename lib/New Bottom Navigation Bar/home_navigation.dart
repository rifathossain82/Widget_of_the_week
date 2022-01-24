import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Navigation extends StatefulWidget {
  const Home_Navigation({Key? key}) : super(key: key);

  @override
  _Home_NavigationState createState() => _Home_NavigationState();
}

class _Home_NavigationState extends State<Home_Navigation> {

  int index=0;

  var pages=[
    Icon(Icons.home,size: 120,),
    Icon(Icons.favorite,size: 120,),
    Icon(Icons.settings,size: 120,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Navigation Demo'),
      ),
      bottomNavigationBar: NavigationBar(
        height: 60,
          selectedIndex: index,
          onDestinationSelected: (index){
          setState(() {
            this.index=index;
          });
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_outlined),selectedIcon: Icon(Icons.home), label: 'Home',),
            NavigationDestination(icon: Icon(Icons.favorite_outline),selectedIcon: Icon(Icons.favorite), label: 'Favorite',),
            NavigationDestination(icon: Icon(CupertinoIcons.settings),selectedIcon: Icon(CupertinoIcons.settings_solid), label: 'Settings',),
          ]
      ),
      body: Center(
        child: pages[index],
      ),
    );
  }
}
