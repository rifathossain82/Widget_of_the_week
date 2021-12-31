import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/material.dart';

class Slidable_Demo extends StatefulWidget {
  const Slidable_Demo({Key? key}) : super(key: key);

  @override
  _Slidable_DemoState createState() => _Slidable_DemoState();
}

class _Slidable_DemoState extends State<Slidable_Demo> {
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
          return Slidable(
            startActionPane: ActionPane(
              motion: ScrollMotion(),
            children: [
              SlidableAction(
                  onPressed: doNothing,
                backgroundColor: Colors.blue,
                flex: 2,
                icon: Icons.settings,
                label: 'Settings',
                autoClose: true,
              ),
              SlidableAction(
                onPressed: doNothing,
                backgroundColor: Colors.orange,
                flex: 2,
                icon: Icons.favorite,
                label: 'Favourite',
                autoClose: true,
              ),
              SlidableAction(
                onPressed: doNothing,
                backgroundColor: Colors.lightGreenAccent,
                flex: 2,
                icon: Icons.account_circle,
                label: 'Profile',
                autoClose: true,
              ),
              SlidableAction(
                onPressed: doNothing,
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
                flex: 2,
                icon: Icons.close,
                label: 'Close',
                autoClose: true,
              ),
            ],
            ),
            endActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Colors.blue,
                  flex: 1,
                  icon: Icons.settings,
                  label: 'Settings',
                  autoClose: true,
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Colors.orange,
                  //flex: 1,
                  icon: Icons.favorite,
                  label: 'Favourite',
                  autoClose: true,
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Colors.lightGreenAccent,
                  flex: 1,
                  icon: Icons.account_circle,
                  label: 'Profile',
                  autoClose: true,
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                  flex: 1,
                  icon: Icons.close,
                  label: 'Close',
                  autoClose: true,
                ),
              ],
            ),
            child: ListTile(
              onTap: (){},
              title: Text(name[index],style: TextStyle(color: Colors.white),),
              subtitle: Text(details[index],style: TextStyle(color: Colors.grey),),
            ),

          );
        }
    );
  }

  void doNothing(BuildContext context){

  }

}
