import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/res/components/my_text.dart';
import 'package:instagram_clone/view/home_view/stories_view/stories_view.dart';

class HomeVierw extends StatelessWidget {
  const HomeVierw({super.key});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: MyText(title: "Instagram",),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.heart)),
          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.facebookMessenger)),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: height * 0.14,
            child: StoriesView(),
          ),
          Expanded(
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
