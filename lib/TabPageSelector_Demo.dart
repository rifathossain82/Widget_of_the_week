import 'package:flutter/material.dart';

class TabPageSelector_Demo extends StatefulWidget {
  const TabPageSelector_Demo({Key? key}) : super(key: key);

  @override
  _TabPageSelector_DemoState createState() => _TabPageSelector_DemoState();
}

class _TabPageSelector_DemoState extends State<TabPageSelector_Demo> {
  static const icon=<Icon>[
    Icon(Icons.home),
    Icon(Icons.settings),
    Icon(Icons.account_circle),
    Icon(Icons.favorite_border),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: icon.length,
        child: Builder(
            builder: (BuildContext context)=>Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Expanded(
                      child: IconTheme(
                        data: IconThemeData(size: 138,color: Theme.of(context).accentColor),
                        child: TabBarView(children: icon),
                      )
                  ),
                  TabPageSelector(),
                  RaisedButton(onPressed: (){
                    setState(() {
                      TabController controller=DefaultTabController.of(context) as TabController;
                      var x=controller.length;
                      //print(x);
                      controller.animateTo(icon.length-1);
                    });
                  },
                    child: Text('SKIP',style: TextStyle(color: Colors.orange),),
                  )
                ],
              ),
            )
        )
    );
  }
}
