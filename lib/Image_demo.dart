import 'package:flutter/material.dart';


class Image_demo extends StatefulWidget {
  const Image_demo({Key? key}) : super(key: key);

  @override
  _Image_demoState createState() => _Image_demoState();
}

class _Image_demoState extends State<Image_demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
          width: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Image.asset('images/sandwich.jpg',colorBlendMode: BlendMode.colorBurn,),
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Image.network("https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg",
            loadingBuilder: (context,child,progress){
              return progress==null? child: CircularProgressIndicator();
            },
            ),
          ),
        ],
      ),
    );
  }
}
