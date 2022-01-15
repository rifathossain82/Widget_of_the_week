import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({Key? key}) : super(key: key);

  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

DraggableScrollableController controller=DraggableScrollableController();

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //simple bottom sheet
            ElevatedButton(
              child: Text('Bottom Sheet'),
              onPressed: (){
                showBottomSheet(
                  elevation: 8,
                    backgroundColor: Colors.red,
                    //enableDrag: false,
                    context: context,
                    builder: (context){
                  return Container(
                    height: 200,
                    child: Center(child: Text('Rifat Hossain',style: TextStyle(fontSize: 26),)),
                  );
                });
              },
            ),
            SizedBox(height: 12,),
            //simple cupertino model sheet
            ElevatedButton(
              child: Text('cupertino bottom sheet'),
              onPressed: (){
                showCupertinoModalPopup(
                    context: context,
                    builder: (context){
                      return Container(
                        height: 200,
                        color: Colors.blue,
                        child: Center(child: Text('Rifat Hossain',style: TextStyle(fontSize: 26),)),
                      );
                    });
              },
            ),
            SizedBox(height: 12,),
            //simple bottom modal popup
            ElevatedButton(
              child: Text('bottom model popup'),
              onPressed: (){
                showModalBottomSheet(
                    context: context,

                    builder: (context){
                      return Container(
                        height: 300,
                        color: Colors.grey,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.camera),
                              title: Text('Camera Photo'),
                            ),
                            ListTile(
                              leading: Icon(Icons.camera),
                              title: Text('Camera Photo'),
                            ),
                            ListTile(
                              leading: Icon(Icons.camera),
                              title: Text('Camera Photo'),
                            )
                          ],
                        ),
                      );
                    });
              },
            ),
            SizedBox(height: 12,),
            // custom modal bottom sheet
            ElevatedButton(
              child: Text('Custom'),
              onPressed: (){
                showModalBottomSheet(
                  //enableDrag: false,
                   // isDismissible: false,
                  //isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    context: context,
                    builder: (context){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          children: [
                            Container(
                              child: Text('Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.\n\nBangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger. \n\nBangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.',style: TextStyle(fontSize: 18),),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  child: Text('Close')
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
            ),
            SizedBox(height: 12,),
            // custom draggable scrollable bottom sheet
            ElevatedButton(
              child: Text('Custom Draggable Scrollable Sheet'),
              onPressed: (){
                showModalBottomSheet(
                  //enableDrag: false,
                  // isDismissible: false,
                  //isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    context: context,
                    builder: (context){
                      return DraggableScrollableSheet(
                        initialChildSize: 1,
                          maxChildSize: 1,
                          minChildSize: 0.3,
                          builder: (_,controller){
                        return Container(
                          child: ListView(
                            controller: controller,
                            children: [
                              Text('Rifat Hossain'),
                              Text('App Developer'),
                              Container(
                                child: Text('Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.\n\nBangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger. \n\nBangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.',style: TextStyle(fontSize: 18),),
                              ),
                            ],
                          ),
                        );
                      });
                    });
              },
            ),
          ],
        )
    );
  }
}
