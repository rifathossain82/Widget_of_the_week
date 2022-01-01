import 'package:flutter/material.dart';

class Shader_Mask_Demo extends StatelessWidget {
  const Shader_Mask_Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShaderMask(
              shaderCallback: (bounds) {
                return RadialGradient(
                  radius: 1,
                    center: Alignment.topLeft,
                    tileMode: TileMode.mirror,
                    colors: [Colors.yellow, Colors.deepOrange],
                ).createShader(bounds);
              },
              child: Text(
                'RIFAT HOSSAIN',
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold,color: Colors.white),
              )),
          ShaderMask(
            shaderCallback: (bounds){
              return RadialGradient(
                radius: 1,
                center: Alignment.topLeft,
                tileMode: TileMode.mirror,
                colors: [Colors.yellow, Colors.deepOrange],
              ).createShader(bounds);
            },
            child: Container(
              height: 100,
              width: 100,
              //color: Colors.white,
              child: Icon(Icons.account_circle_outlined,size: 100,color: Colors.white,),
              decoration: BoxDecoration(
                 color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(100),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
