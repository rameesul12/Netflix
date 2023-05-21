import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/color.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';
import '../../core/sizedbox.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  String query = '';
  @override
  Widget build(BuildContext context) {
    //TextEditingController _searchController = TextEditingController();
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            //controller: _searchController,
            onChanged: (value) {
              setState(() {
                query = value;
              });
            },
            backgroundColor: Colors.grey.withOpacity(0.4),
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: kGreycolor,
            ),
            suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: kGreycolor,
            ),
            style: const TextStyle(color: kwhitecolor),
          ),
          kHeight,
          //const Expanded(child: SearchIdleWidget())
          Expanded(child: query.isEmpty?const SearchIdleWidget(): SearchResultWidget(apiQuery: query,))
        ],
      ),
    )));
  }
}
