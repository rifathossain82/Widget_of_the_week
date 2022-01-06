import 'package:flutter/material.dart';

class Sliver_list_sliver_grid_demo extends StatefulWidget {
  const Sliver_list_sliver_grid_demo({Key? key}) : super(key: key);

  @override
  _Sliver_list_sliver_grid_demoState createState() => _Sliver_list_sliver_grid_demoState();
}

class _Sliver_list_sliver_grid_demoState extends State<Sliver_list_sliver_grid_demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SliverList(
              delegate: SliverChildListDelegate([
                Image.network(
                  'https://source.unsplash.com/random?sig=1',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://source.unsplash.com/random?sig=2',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://source.unsplash.com/random?sig=3',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://source.unsplash.com/random?sig=4',
                  fit: BoxFit.cover,
                ),

              ]),
            )
          )
        ],
      ),
    );
  }
}
