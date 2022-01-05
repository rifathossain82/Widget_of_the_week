import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Reorderable_listview/Data.dart';
import 'package:widget_of_the_week/Slider_demo.dart';

class Reorderable_listview_demo extends StatefulWidget {
  const Reorderable_listview_demo({Key? key}) : super(key: key);

  @override
  _Reorderable_listview_demoState createState() => _Reorderable_listview_demoState();
}

class _Reorderable_listview_demoState extends State<Reorderable_listview_demo> {

  List<Data> datalist=[
    Data('Rifat Hossain', 'images/image1.png'),
    Data('Jobayer Hossain', 'images/image2.png'),
    Data('Md Kawchar', 'images/burger.jpg'),
    Data('Rasle Miyah', 'images/pizza.jpg'),
    Data('Faruk Hossain', 'images/pizza2.jpg'),
    Data('Alamin Miyah', 'images/sandwich.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView.builder(
        itemCount: datalist.length,
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            var index=newIndex>oldIndex?newIndex-1:newIndex;
            final data=datalist.removeAt(oldIndex);
            datalist.insert(index, data);
          });
        },
        itemBuilder: (context, index){
        return builderUser(index,datalist[index]);
      },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          shuffle_data();
        },
        child: Icon(Icons.shuffle),
      ),
    );
  }

  void shuffle_data(){
    setState(() {
      datalist.shuffle();
    });
  }


  Widget builderUser(int index,Data data){
    return ListTile(
      key: ValueKey(data),
      leading: CircleAvatar(
        backgroundImage: AssetImage(data.image,),
      ),
      title: Text(data.name),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: (){
                update_data(index);
              },
              icon: Icon(Icons.edit)
          ),
          IconButton(
              onPressed: (){
                remove_data(index);
              },
              icon: Icon(Icons.delete)
          )
        ],
      ),
    );
  }

  void remove_data(int index){
    setState(() {
     datalist.removeAt(index);
    });
  }

  void update_data(int index){
    showDialog(
        context: context,
        builder: (context){
          final data=datalist[index].name;
          return AlertDialog(
            content: TextFormField(
              initialValue: data,
              onChanged: (name){
                setState(() {
                  datalist[index].name=name;
                });
              },
              onFieldSubmitted: (_){
                Navigator.pop(context);
              },
            ),
          );
        }
    );
  }
}
