import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'image_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Widget Of The Week",
      home: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: CustomSliverAppBarDelegate(expandedHeight: 200),
                pinned: true,
              ),
              buildImages(),
            ],
          )
      ),
    );
  }

  Widget buildImages() => SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      delegate: SliverChildBuilderDelegate(
            (context,index)=>ImageWidget(index),
        childCount: 20,
      )
  );


}


class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const CustomSliverAppBarDelegate({
    required this.expandedHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final size = 60;
    final top = expandedHeight - shrinkOffset - size / 2;

    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        buildBackground(shrinkOffset),
        buildAppBar(shrinkOffset),
        Positioned(
          top: top,
          left: 20,
          right: 20,
          child: buildFloating(shrinkOffset),
        ),
      ],
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  Widget buildAppBar(double shrinkOffset) => Opacity(
    opacity: appear(shrinkOffset),
    child: AppBar(
      title: Text("Advanced Sliver AppBar"),
      centerTitle: true,
    ),
  );

  Widget buildBackground(double shrinkOffset) => Opacity(
    opacity: disappear(shrinkOffset),
    child: Image.network(
      'https://source.unsplash.com/random?mono+dark',
      fit: BoxFit.cover,
    ),
  );

  Widget buildFloating(double shrinkOffset) => Opacity(
    opacity: disappear(shrinkOffset),
    child: Card(
      child: Row(
        children: [
          Expanded(child: buildButton(text: 'Share', icon: Icons.share)),
          Expanded(child: buildButton(text: 'Like', icon: Icons.thumb_up)),
        ],
      ),
    ),
  );

  Widget buildButton({
    required String text,
    required IconData icon,
  }) =>
      TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Text(text, style: TextStyle(fontSize: 20)),
          ],
        ),
        onPressed: () {},
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}