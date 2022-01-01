import 'package:flutter/material.dart';

class List_Scroll_view_demo extends StatefulWidget {
  const List_Scroll_view_demo({Key? key}) : super(key: key);

  @override
  _List_Scroll_view_demoState createState() => _List_Scroll_view_demoState();
}

class _List_Scroll_view_demoState extends State<List_Scroll_view_demo> {
  List<String> name = [
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

  List<String> details = [
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
    double x = name.length.toDouble();
    return ListWheelScrollView(itemExtent: 120, children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
            name[0],
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
                fontSize: 34),
          ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width - 40,
          child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 34),
              ))),
    ]);
  }
}
