import 'package:flutter/material.dart';
import 'package:netflix/core/colors/color.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
backgroundColor: MaterialStateProperty.all(kwhitecolor),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(12),
    
    )
  ),),
        icon: const Icon(
          Icons.play_arrow,
          size: 30,
          color: kblackColor,
        ),
        label: const Padding(
          padding: EdgeInsets.only(right: 10,left: 5),
          child: Text(
            "Play",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: kblackColor,
            ),
          ),
        ));
  }
}
