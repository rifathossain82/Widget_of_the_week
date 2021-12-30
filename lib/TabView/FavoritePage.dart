import 'package:flutter/material.dart';


class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "This is Favorite Page",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
      ),
    );
  }
}
