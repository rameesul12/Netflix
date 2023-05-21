import 'package:flutter/material.dart';
import 'package:netflix/core/colors/color.dart';

import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_nav.dart';


import '../download/screen_download.dart';
import '../fast_laugh/fast_laugh_page.dart';
import '../new_and_hot/screen_new_and_hot.dart';
import '../search/search_page.dart';


class ScreenMain extends StatelessWidget {
   ScreenMain({super.key});

  final _pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
     ScreenDownload()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexNotifier,
          builder: (BuildContext context, dynamic index, Widget? _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigatioWidgets(),
    );
  }
}
