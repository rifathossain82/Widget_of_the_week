import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Dismissible_demo/list_item.dart';
import 'package:widget_of_the_week/Dismissible_demo/widget/Dismissible_widget.dart';

class Dismissible_list_demo extends StatefulWidget {
  const Dismissible_list_demo({Key? key}) : super(key: key);

  @override
  _Dismissible_list_demoState createState() => _Dismissible_list_demoState();
}

class _Dismissible_list_demoState extends State<Dismissible_list_demo> {
  List<List_item> items = [
    List_item('Rifat', 'beginner of Programming.',
        'https://source.unsplash.com/random?sig=1'),
    List_item('Kawchar', 'beginner of Programming.',
        'https://source.unsplash.com/random?sig=2'),
    List_item('Jobayer', 'beginner of Programming.',
        'https://source.unsplash.com/random?sig=3'),
    List_item('Jony', 'beginner of Programming.',
        'https://source.unsplash.com/random?sig=4'),
    List_item('Shawal', 'beginner of Programming.',
        'https://source.unsplash.com/random?sig=5'),
    List_item('Emon', 'beginner of Programming.',
        'https://source.unsplash.com/random?sig=6'),
    List_item('Nishat', 'beginner of Programming.',
        'https://source.unsplash.com/random?sig=7'),
    List_item('Rakhi', 'beginner of Programming.',
        'https://source.unsplash.com/random?sig=8'),
    List_item('Arman', 'beginner of Programming.',
        'https://source.unsplash.com/random?sig=9'),
    List_item('Shifat', 'beginner of Programming.',
        'https://source.unsplash.com/random?sig=10'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible_widget(
              item,
              buildListTile(item),
              (directon){
                dismissItem(context,index,directon);
              }
          );
        },
      ),
    );
  }

  void dismissItem(BuildContext context,int index,DismissDirection direction){
    setState(() {
      items.removeAt(index);
    });
  }

  Widget buildListTile(List_item item) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      leading: CircleAvatar(
        radius: 28,
        backgroundImage: NetworkImage(item.image),
      ),
      title: Text(
        item.name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(item.title),
      onTap: () {},
    );
  }
}
