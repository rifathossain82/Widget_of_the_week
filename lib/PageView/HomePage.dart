import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:widget_of_the_week/PageView/Transformer/MyTransformer.dart';

import 'AllSource.dart';
import 'Transformer/Transformers.dart';
import 'Widget/CardWidget.dart';

class Home_PageView extends StatelessWidget {
  const Home_PageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TransformerPageView(
        curve: Curves.easeInBack,
        scrollDirection: Axis.vertical,
        itemCount: AllSource.description.length,
        transformer: MyTransformer(),
        itemBuilder: (context, index) => CardWidget(
            AllSource.uriImage[index],
            AllSource.title[index],
            AllSource.description[index]
        )
    );
  }
}
