import 'package:flutter/material.dart';
import 'package:netflix/core/colors/color.dart';
import 'package:netflix/core/sizedbox.dart';

import '../widgets/app_bar_widget.dart';


class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(50),
       child:AppBarWidgets(tittle: 'Download') ,),
      body:ListView(
        children: [
          Row(
            children:  [
              kwidth,
             const Icon(Icons.settings),
             kwidth,
             const Text("Smart Downloads")
            ],
          ),
        const  SizedBox(height: 30,),
        Text("Intoducing Download For You",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: textColor),),
        Text('We Will Download a Personalized Selection of Movies and Shows,So there is always something to watch on your Device ',style: TextStyle(),),
        MaterialButton(
          color: kbuttonColor,
          onPressed: (){}, child:const Text('Setup',style: TextStyle(color: textColor),),)
        ],
        
      ),
    );
  }
}