import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/widgets/videolistitem.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
      children: List.generate(
          10,
          (index) => VideoListItemWidget(
                index: index,
              )),
    ));
  }
}
