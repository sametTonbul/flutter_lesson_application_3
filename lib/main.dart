import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Recipe Meatball'),);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title:Text(
            widget.title,
            style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black),
            ),
            backgroundColor: Color.fromARGB(255, 176, 127, 13),
        ),
            body: 
            
            Recipe(),
      );
      
      }
      }

class Recipe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                width: screenWidth,
                child: Image.asset('pictures/food.jpg')),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: screenWidth/8,
                          child: TextButton(
                            child: Texts('Like', screenWidth/25),
                            onPressed: (){
                            print('Food Liked!');},
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 88, 5, 81))),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: screenWidth/8,
                          child: TextButton(
                            child: Texts('Comment', screenWidth/25,),
                            onPressed: (){
                              print('Comment Opening');},
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 100, 57))),
                          ),
                        ),
                      ),
                    ], // Children
                  ),
                  Padding(
                    padding:  EdgeInsets.all(screenHeight/100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Meatball',style:TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth/20
                          ),
                        ),
                        Row(
                          children: [
                            Texts('High Temperature Cookable', screenWidth/25),
                            Spacer(),
                            Texts('8 Ağustos', screenWidth/25),
                          ], //Children
                        )
                      ], //Children
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(screenHeight/100),
                    child: Texts(
                      
        'Mix all the ingredients in a large bowl. Knead with your hands for about 5-10 minutes. Leave it in the fridge at least for 2-3 hours.'
        'Grab egg size pieces and make round shaped thin meat balls. Repeat this until you use all the mixture. Then cook them over a barbecue or electric grill, till both sides get lightly brown.'
        'Serve them while still hot.'
        'ENJOY', screenWidth/25),
                  ),
                
             
              
             
        
                
        
        
        
        
            
            
            
            
          
        
        
        
        
        
        
            
            ],
          ),
              ),
        ),
    );
  }
}

class Texts extends StatelessWidget {

  String userContext;
  double userContextStyle;

  Texts( 
    this.userContext,
    this.userContextStyle);

  @override
  Widget build(BuildContext context) {
    return Text(userContext,style: TextStyle(fontSize: userContextStyle),);
  }

}

