import 'package:flutter/material.dart';

class Selectable_text_demo extends StatefulWidget {
  const Selectable_text_demo({Key? key}) : super(key: key);

  @override
  _Selectable_text_demoState createState() => _Selectable_text_demoState();
}

class _Selectable_text_demoState extends State<Selectable_text_demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(
                'My Allah, help me and all of young generation.',
              style: TextStyle(fontSize: 22),
              cursorColor: Colors.red,
              cursorHeight: 20,
              cursorRadius: Radius.circular(8),
              cursorWidth: 5,
              onTap: (){
                  print('yes');
              },
              scrollPhysics: ClampingScrollPhysics(),
              toolbarOptions: ToolbarOptions(copy: true,cut: true,paste: true,selectAll: true),
            ),
            SizedBox(height: 20,),
            SelectableText.rich(
                TextSpan(text: 'Hello world'),
              style: TextStyle(fontSize: 22),
              cursorColor: Colors.red,
              cursorHeight: 20,
              cursorRadius: Radius.circular(8),
              cursorWidth: 5,
              onTap: (){
                print('yes');
              },
              scrollPhysics: ClampingScrollPhysics(),
              toolbarOptions: ToolbarOptions(copy: true,cut: true,paste: true,selectAll: true),

            ),
          ],
        ),
      ),
    );
  }
}
