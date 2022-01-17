import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Slider_demo.dart';
import 'package:widget_of_the_week/pass_data/PageTwo_passData.dart';

class PageOne_passData extends StatelessWidget {
  PageOne_passData({Key? key}) : super(key: key);

  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter Data',
            ),
          ),
          SizedBox(height: 16,),
          ElevatedButton(
            child: Text('Send'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageTwo_passData(name: controller.text)));
            },
          ),
        ],
      ),
    );
  }
}
