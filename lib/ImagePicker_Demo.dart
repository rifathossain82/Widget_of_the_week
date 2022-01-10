import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';


class ImagePickerDemo extends StatefulWidget {
  const ImagePickerDemo({Key? key}) : super(key: key);

  @override
  _ImagePickerDemoState createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  File? _image;

  Future cameraImage()async{
    try{
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if(image==null) return;

      //final imageTemporary=File(image.path);  //to set image temporary
      final imagePermanent=await saveImagePermanently(image.path);   //to set image permanent in local storage
      setState(() {
        this._image=imagePermanent;
      });
    }
    on PlatformException catch(e){
      print('Faild to pick image: $e');
    }
  }

  Future galleryImage()async{
    try{
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image==null) return;

      //final imageTemporary=File(image.path);   //to set image temporary
      final imagePermanent=await saveImagePermanently(image.path);   //to set image permanent in local storage
      setState(() {
        this._image=imagePermanent;
      });
    }
    on PlatformException catch(e){
      print('Faild to pick image: $e');
    }
  }


  Future<File> saveImagePermanently(String imagePath)async{
    final directory=await getApplicationDocumentsDirectory();
    final name=basename(imagePath);
    final image=File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(child: _image==null ? Center(child: Text('No Image selected')) : Image.file(_image!,fit: BoxFit.cover,height: 200,width: 200,)),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
                onPressed: (){
                  cameraImage();
                },
              child: Icon(Icons.camera),
            ),
            SizedBox(width: 12,),
            FloatingActionButton(
              onPressed: (){
                galleryImage();
              },
              child: Icon(Icons.image),
            ),
          ],
        )
      ],
    );
  }
}
