import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FastLaughPage extends StatelessWidget {
  const FastLaughPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: 
      Center(
        child: Text("Fast Laugh"),
      )
      ),
    );
  }
}