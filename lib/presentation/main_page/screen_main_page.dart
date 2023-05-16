import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix/presentation/fast_laugh/fast_laugh_page.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_Nav.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentation/search/search_page.dart';

import '../../core/colors/color.dart';
import '../download/screen_download.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});
  final pages=[
  ScreenHomePage(),
  NewAndHot(),
  FastLaughPage(),
  SearchPage(),
  ScreenDownload(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexNotifier, builder: (context,int index, _) {
          return pages[index];
        },),
      ),
      bottomNavigationBar: BottomNavigatioWidgets(),

    );
  }
}