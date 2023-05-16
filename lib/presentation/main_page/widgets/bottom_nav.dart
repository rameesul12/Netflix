import 'package:flutter/material.dart';
import '../../../core/colors/color.dart';

ValueNotifier<int>indexNotifier=ValueNotifier(0);
class BottomNavigatioWidgets extends StatelessWidget {
  const BottomNavigatioWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexNotifier, builder: (context,int newIndex,_) {
      return BottomNavigationBar(
      currentIndex: newIndex,
      onTap: (index){
indexNotifier.value=index;
      },
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme:const IconThemeData  (color:Colors.white ),
      unselectedIconTheme: const IconThemeData  (color:Colors.grey ),
      backgroundColor: backgroundColor,
      
      items:const [
      BottomNavigationBarItem( 
        icon: Icon(Icons.home),
      label: 'Home'),
       BottomNavigationBarItem( 
        icon: Icon(Icons.collections),
      label: 'New & Hot'),
       BottomNavigationBarItem( 
        icon: Icon(Icons.emoji_emotions ),
      label: 'FastLaugs'),
       BottomNavigationBarItem( 
        icon: Icon(Icons.search),
      label: 'Search'),
       BottomNavigationBarItem( 
        icon: Icon(Icons.download),
      label: 'Download'),
    ] );
    },);
  }
}