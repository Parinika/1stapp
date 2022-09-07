import 'package:shortlisting/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [kBGColor, lightBG])),
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 10,
          centerTitle: true,
          title:
              Text("Welcome to My App",
                  style: TextStyle(
                      fontFamily: 'Open Sans', fontWeight: FontWeight.bold)),
        ),
        body:Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(flex: 10),
                Spacer(),
                Text(
                        'Welcome to my Sample app',
                        style: TextStyle(fontSize: 20.0),
                ),
                Spacer(flex:3),
                Text(
                        'Here is a pic of cat',
                        style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child:Image.network('https://www.pexels.com/photo/selective-focus-photography-of-orange-tabby-cat-1170986/'),
                  ),
                
              ]
            )
            ],
          ),
        )
      )
    );
  }
}
