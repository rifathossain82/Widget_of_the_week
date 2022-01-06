import 'package:flutter/material.dart';

class Stream_builder_Demo extends StatefulWidget {
  const Stream_builder_Demo({Key? key}) : super(key: key);

  @override
  _Stream_builder_DemoState createState() => _Stream_builder_DemoState();
}

class _Stream_builder_DemoState extends State<Stream_builder_Demo> {

  double bitCoinsPrice=32000;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<double>(
        initialData: bitCoinsPrice,
        stream: getBitCoinPrice(),
        builder: (context,snapshot){
          final bitcoins=snapshot.data?.toStringAsFixed(2);
          return Center(
            child:  Text(
              '${bitcoins}',
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,),
            ),
          );
        },

      ),
    );
  }

  Stream<double> getBitCoinPrice(){
    return Stream<double>.periodic(
      Duration(seconds: 1),
        (count){
        return bitCoinsPrice+count*0.5;
        }
    );
  }
}
