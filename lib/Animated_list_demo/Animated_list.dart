import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Animated_list_demo/Data_model.dart';

import 'ListItemWidget.dart';

class Animated_list extends StatefulWidget {
  const Animated_list({Key? key}) : super(key: key);

  @override 
  _Animated_listState createState() => _Animated_listState();
}

class _Animated_listState extends State<Animated_list> {
 final listkey=GlobalKey<AnimatedListState>();
  List<Data_model> items=[
    Data_model('Apple', 'https://source.unsplash.com/random?sig=1'),
    Data_model('Onion', 'https://source.unsplash.com/random?sig=2'),
    Data_model('Orange', 'https://source.unsplash.com/random?sig=3'),
    Data_model('Banana', 'https://source.unsplash.com/random?sig=4'),
    Data_model('Ginger', 'https://source.unsplash.com/random?sig=5'),
    Data_model('Garlic', 'https://source.unsplash.com/random?sig=6'),
    Data_model('Tomato', 'https://source.unsplash.com/random?sig=7'),
    Data_model('Bean', 'https://source.unsplash.com/random?sig=8'),
    Data_model('Milk', 'https://source.unsplash.com/random?sig=9'),
    Data_model('Sugar', 'https://source.unsplash.com/random?sig=10'),
  ];


 List<Data_model> items2=[
   Data_model('Apple', 'https://source.unsplash.com/random?sig=11'),
   Data_model('Onion', 'https://source.unsplash.com/random?sig=21'),
   Data_model('Orange', 'https://source.unsplash.com/random?sig=31'),
   Data_model('Banana', 'https://source.unsplash.com/random?sig=41'),
   Data_model('Ginger', 'https://source.unsplash.com/random?sig=51'),
   Data_model('Garlic', 'https://source.unsplash.com/random?sig=61'),
   Data_model('Tomato', 'https://source.unsplash.com/random?sig=71'),
   Data_model('Bean', 'https://source.unsplash.com/random?sig=81'),
   Data_model('Milk', 'https://source.unsplash.com/random?sig=91'),
   Data_model('Sugar', 'https://source.unsplash.com/random?sig=101'),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedList(
        key: listkey,
        initialItemCount: items.length,
          itemBuilder: (context,index,animation){
          return ListItemWidget(
              items[index],
              animation,
                  (){
                return removeitemIndex(index);
              }
                  );
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: insertItem,
        child: Icon(Icons.add),
      ),
    );
  }

  void insertItem(){
    var newIndex=1;
    var newItem=(List.of(items2)..shuffle()).first;

    items.insert(newIndex, newItem);
    listkey.currentState!.insertItem(newIndex,duration: Duration(milliseconds: 600
    ));
  }
  void removeitemIndex(int index){
    var removeItem=items[index];

    items.removeAt(index);
    listkey.currentState!.removeItem(
        index, (context, animation) => ListItemWidget(removeItem, animation, (){}),duration: Duration(milliseconds: 600));
  }
}
