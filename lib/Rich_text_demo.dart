import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Rich_text_demo extends StatelessWidget {
  const Rich_text_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: 'My name is',style: TextStyle(color: Colors.black54)),
                  TextSpan(text: ' Rifat Hossain 💋🛀🏻',style: TextStyle(fontSize: 21,color: Colors.red)),
                ]
              )
          ),
          SizedBox(height: 16,),
          RichText(
              text: TextSpan(
                text: 'Contact me: ',style: TextStyle(color: Colors.black54),
                  children: [
                    WidgetSpan(child: Icon(Icons.email)),
                    TextSpan(
                        text: ' Email',
                        style: TextStyle(fontSize: 21,color: Colors.red),
                      recognizer: TapGestureRecognizer()..onTap=launchEmail,  //to override use ..
                    ),
                  ]
              )
          ),
          SizedBox(height: 16,),
          RichText(
              text: TextSpan(
                  text: 'Call me: ',style: TextStyle(color: Colors.black54),
                  children: [
                    TextSpan(
                      text: ' 01882508771',
                      style: TextStyle(fontSize: 21,color: Colors.red,decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()..onTap=launchPhone,  //to override use ..
                    ),
                  ]
              )
          ),
          SizedBox(height: 16,),
          RichText(
              text: TextSpan(
                  text: 'My Website: ',style: TextStyle(color: Colors.black54),
                  children: [
                    TextSpan(
                      text: ' here',
                      style: TextStyle(fontSize: 21,color: Colors.red,decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()..onTap=launchweb,  //to override use ..
                    ),
                  ]
              )
          ),
        ],
      ),
    );
  }


  Future launchEmail() async{
    final toEmail='rhrifat940279@gmail.com';
    final sub='Email';
    final body='How are you Rifat?';

    final email="mailto:$toEmail?subject=${Uri.encodeFull(sub)}&body=${Uri.encodeFull(body)}";
  await launch(email);
  }

  Future launchPhone()async{
    await launch('tel:01885256220');
  }
  Future launchweb()async{
    await launch('https://getemoji.com/');
  }
}
