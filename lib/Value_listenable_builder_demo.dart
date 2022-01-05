import 'package:flutter/material.dart';

class Value_listenable_builder_demo extends StatefulWidget {
  const Value_listenable_builder_demo({Key? key}) : super(key: key);

  @override
  _Value_listenable_builder_demoState createState() =>
      _Value_listenable_builder_demoState();
}

class _Value_listenable_builder_demoState
    extends State<Value_listenable_builder_demo> {
  final ValueNotifier<String> enter_value = ValueNotifier('');
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
              child: Text(
            'Widget 1',
            style: TextStyle(
              fontSize: 21,
            ),
          )),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter value',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            enter_value.value=controller.text;
          },
          child: Text('Send data to another widget.'),
        ),
        Spacer(),
        Divider(),
        bottom_widget(),
      ],
    );
  }

  Widget bottom_widget() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Center(
              child: Text(
            'Widget 1',
            style: TextStyle(
              fontSize: 21,
            ),
          )),
          SizedBox(height: 32),
          Text('Entered in widget 1 value'),
          ValueListenableBuilder(
            builder: (BuildContext context,String value, Widget? child) {
              return Text(value,style: TextStyle(fontSize: 22),);
            },
            valueListenable: enter_value,
          ),
        ],
      ),
    );
  }
}
