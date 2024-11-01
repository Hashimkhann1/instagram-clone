import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/res/files_paths/files_paths.dart';
import 'package:instagram_clone/view/home_view/post_view/post_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: MyText(title: "Instagram"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.heart)),
          IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.facebookMessenger)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Stories section
            Container(
              height: height * 0.14, // Adjust height as needed for stories
              child: StoriesView(),
            ),

            /// post data
            ListView.builder(
              itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context , index) {
                  return PostView();
                })

          ],
        ),
      ),
    );
  }
}
