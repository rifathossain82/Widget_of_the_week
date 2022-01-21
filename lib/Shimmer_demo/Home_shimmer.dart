import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Shimmer_demo/data/all_products.dart';
import 'package:widget_of_the_week/Shimmer_demo/model/product.dart';
import 'package:widget_of_the_week/Shimmer_demo/widget/shimmerWidget.dart';

class Home_shimmer extends StatefulWidget {
  const Home_shimmer({Key? key}) : super(key: key);

  @override
  _Home_shimmerState createState() => _Home_shimmerState();
}

AppBar appbar_shimmer=AppBar();


class _Home_shimmerState extends State<Home_shimmer> {

  List<Product> products=[];
  bool isLoading=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
    appbar_shimmer= AppBar(
      title: TyperAnimatedTextKit(
        text: ['Widget Of The Week'],
        textStyle: TextStyle(fontSize: 22),
      ),
      elevation: 0,
      //backgroundColor: Colors.transparent,
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){loadData();}, icon: Icon(Icons.refresh))
      ],
    );
  }

  Future loadData()async{
    setState(() {
      isLoading=true;
    });
    await Future.delayed(Duration(seconds: 2),(){});
    products=List.of(all_products);
    setState(() {
      isLoading=false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: isLoading? 12: products.length,
        itemBuilder: (context, index) {
          return isLoading?buildShimmer():buildProduct(products[index]);
        });
  }

  Widget buildProduct(Product product){
    return ListTile(
      leading: CircleAvatar(radius: 32,backgroundImage: AssetImage(product.image),),
      title: Text(product.title,style: TextStyle(fontSize: 16),),
      subtitle: Text(product.des,style: TextStyle(fontSize: 14),maxLines: 1,),
    );
  }

  Widget buildShimmer(){
    return ListTile(
      leading: ShimmerWidget.circular(height: 64,width: 64),
      title: Align(alignment: Alignment.centerLeft,child: ShimmerWidget.rectangle(height: 16,width: MediaQuery.of(context).size.width*0.3,)),
      subtitle: ShimmerWidget.rectangle(height: 14),
    );
  }


}
