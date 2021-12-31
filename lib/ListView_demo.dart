import 'package:flutter/material.dart';

class ListView_Demo extends StatefulWidget {
  const ListView_Demo({Key? key}) : super(key: key);

  @override
  _ListView_DemoState createState() => _ListView_DemoState();
}

class _ListView_DemoState extends State<ListView_Demo> {

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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: name.length,
        itemBuilder: (context,index){
        return ListTile(
          onTap: (){},
          title: Text(name[index],style: TextStyle(color: Colors.white),),
          subtitle: Text(details[index],style: TextStyle(color: Colors.grey),),
        );
        }
    );
  }
}
