import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Navigation_Rail extends StatefulWidget {
  const Home_Navigation_Rail({Key? key}) : super(key: key);

  @override
  _Home_Navigation_RailState createState() => _Home_Navigation_RailState();
}

class _Home_Navigation_RailState extends State<Home_Navigation_Rail> {

  var index=0;
  bool isExpanded=false;

  final pages=[
    Text('Home',style: TextStyle(fontSize: 52),),
    Text('Favorite',style: TextStyle(fontSize: 52),),
    Text('Feedback',style: TextStyle(fontSize: 52),),
    Text('Settings',style: TextStyle(fontSize: 52),),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
            destinations: [
              NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                label: Text('Favorite'),
                selectedIcon: Icon(Icons.favorite),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.feedback_outlined),
                label: Text('Feedback'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
                padding: EdgeInsets.only(bottom: 10)
              ),
            ],
            selectedIndex: index,
          backgroundColor: Colors.black,
          elevation: 5,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              shape: CircleBorder(),
              clipBehavior: Clip.hardEdge,
              child: Ink.image(
                image: AssetImage('images/my_pic.JPG'),
                height: 62,
                width: 62,
                fit: BoxFit.fitHeight,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      isExpanded=!isExpanded;
                    });
                  },
                ),
              ),
            ),
          ),
          selectedIconTheme: IconThemeData(color: Colors.deepOrange,size: 40),
          unselectedIconTheme: IconThemeData(color: Colors.deepOrange.withOpacity(0.5),size: 40),
          //groupAlignment: -1, //by default
          selectedLabelTextStyle: TextStyle(color: Colors.deepOrange,fontSize: 18),
          unselectedLabelTextStyle: TextStyle(color: Colors.deepOrange.withOpacity(0.5),fontSize: 18),
          //labelType: NavigationRailLabelType.selected,
          minWidth: 50,
          onDestinationSelected: (_index){
              setState(() {
                index=_index;
              });
          },
          extended: isExpanded,
          minExtendedWidth: 250,
          trailing: isExpanded?
    Container(child: Icon(Icons.logout,color: Colors.white,),decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(100)),height: 50,):
          Container(child: Icon(Icons.logout,color: Colors.white,),decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(100)),height: 50,width: 50,),
        ),
        Expanded(child: Container(child: Center(child: pages[index]),))
      ],
    );
  }
}
