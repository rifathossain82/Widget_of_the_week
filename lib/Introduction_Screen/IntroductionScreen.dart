import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:widget_of_the_week/Introduction_Screen/Home_intro.dart';


//attention
/*
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Widget Of The Week',
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        debugShowCheckedModeBanner: false,
        home: IntroductionScreen_demo()
    );
  }
}
 */


class IntroductionScreen_demo extends StatelessWidget {
  IntroductionScreen_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'A reader lives a thousands lives',
              body: 'The man who never reads lives only one',
              image: Image.asset('images/book1.png',width: 350,),
              decoration: PageDecoration(
                  imagePadding: EdgeInsets.all(12),
                  titlePadding: EdgeInsets.all(12),
                  titleTextStyle: TextStyle(fontSize: 26,fontWeight: FontWeight.bold)
              ),
            ),
            PageViewModel(
              title: 'A reader lives a thousands lives',
              body: 'The man who never reads lives only one',
              image: Image.asset('images/book2.png',width: 350,),
              decoration: PageDecoration(
                  imagePadding: EdgeInsets.all(12),
                  titlePadding: EdgeInsets.all(12),
                  titleTextStyle: TextStyle(fontSize: 26,fontWeight: FontWeight.bold)
              ),
            ),
            PageViewModel(
              title: 'A reader lives a thousands lives',
              body: 'The man who never reads lives only one',
              image: Image.asset('images/book3.png',width: 350,),
              decoration: PageDecoration(
                  imagePadding: EdgeInsets.all(12),
                  titlePadding: EdgeInsets.all(12),
                  titleTextStyle: TextStyle(fontSize: 26,fontWeight: FontWeight.bold)
              ),
            ),
            PageViewModel(
              title: 'A reader lives a thousands lives',
              body: 'The man who never reads lives only one',
              image: Image.asset('images/book4.png',width: 350,),
              footer: ElevatedButton(
                child: Text('Start Reading'),
                onPressed: (){
                  goToNextPage(context);
                },
              ),
              decoration: PageDecoration(
                imagePadding: EdgeInsets.all(12),
                descriptionPadding: EdgeInsets.all(16),
                titleTextStyle: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
              ),

            ),
          ],
          showDoneButton: true,
          done: Text('Done',style: TextStyle(fontWeight: FontWeight.bold),),
          onDone: (){
            goToNextPage(context);
          },
          skip: Text('Skip'),
          showSkipButton: true,
          onSkip: (){
            goToNextPage(context);
          },
          showNextButton: true,
          next: Icon(Icons.arrow_forward),
          dotsDecorator: DotsDecorator(
            color: Colors.grey,
            size: Size(10, 10),
            activeColor: Colors.deepOrange,
            activeSize: Size(22, 10),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )
          ),
          onChange: (value)=>print('you click ${value} no page'),
          freeze: false,
          //dotsFlex: 2,
          //isProgressTap: false,
          //isProgress: false,
          animationDuration: 500,
          skipFlex: 0,
          nextFlex: 0,
        )
    );
  }


  void goToNextPage(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home_intro()));
  }

}
