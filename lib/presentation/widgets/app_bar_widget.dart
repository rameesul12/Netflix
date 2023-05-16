import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../core/sizedbox.dart';


class AppBarWidgets extends StatelessWidget {
   AppBarWidgets({super.key,required this.tittle});

final String tittle;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        kwidth,
        Text(
        tittle,
       style:const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      const Spacer(),
        IconButton(onPressed: (){}, icon:const Icon(Icons.cast)),
    kwidth,
        Container(
          height: 30,
          width: 30,
          color: Colors.blue,
        )
      ],
    );
  }
}