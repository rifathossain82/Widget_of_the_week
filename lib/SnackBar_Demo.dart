import 'package:flutter/material.dart';

class Snackbar_demo extends StatefulWidget {
  const Snackbar_demo({Key? key}) : super(key: key);

  @override
  _Snackbar_demoState createState() => _Snackbar_demoState();
}

class _Snackbar_demoState extends State<Snackbar_demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: (){
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Row(
              children: [
                Icon(Icons.favorite,color: Colors.white,),
                SizedBox(width: 10,),
                Text('Thank You'),
              ],
            ),
              backgroundColor: Colors.orange,
            )
          );
        },
        child: Text('Show Snackbar'),
      ),
    );
  }
}
