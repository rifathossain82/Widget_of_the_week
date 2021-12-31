import 'package:flutter/material.dart';

class ExpansionPanel_Demo extends StatefulWidget {
  const ExpansionPanel_Demo({Key? key}) : super(key: key);

  @override
  _ExpansionPanel_DemoState createState() => _ExpansionPanel_DemoState();
}

class _ExpansionPanel_DemoState extends State<ExpansionPanel_Demo> {

  List<String> name=[
    'Rifat Hossain',
    'Rasel Miyah',
    'Joabayer Hossain',
    'Kawchar Uddin',
    'Faruk Hossain',
    'Jillur Miyah',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
    'kamal Hossain',
  ];



  List<String> details=[
    'Rifat Hossain. Beginner of programming',
    'Rasel Miyah. Beginner of programming',
    'Joabayer Hossain. Beginner of programming',
    'Kawchar Uddin. Beginner of programming',
    'Faruk Hossain. Beginner of programming',
    'Jillur Miyah. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
    'kamal Hossain. Beginner of programming',
  ];

  var _isOpen=false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: name.length,
        itemBuilder: (context,index){
          return ExpansionTile(
            iconColor: Colors.white,
            collapsedIconColor: Colors.white,
            childrenPadding: EdgeInsets.all( 16),
            expandedAlignment: Alignment.centerLeft,
            title: Text(name[index],style: TextStyle(color: Colors.white),),
            children: [
              Text(details[index],style: TextStyle(color: Colors.white),)
            ],

          );
        }
    );
  }
}


/*
//demo of expansionTile

 */
