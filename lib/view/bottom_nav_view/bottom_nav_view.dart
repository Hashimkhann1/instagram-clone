import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/res/files_paths/files_paths.dart';




class BottomNavView extends StatefulWidget {
  const BottomNavView({super.key});

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {

  int selectedView = 0;

  List views = [

    HomeView(),
    SearchView(),
    AddPostView(),
    ReelsView(),
    ProfileView()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[selectedView],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedView,
        elevation: 0,
        selectedItemColor: MyColors.blackColor,
        onTap: (index) {
          setState(() {
            selectedView = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 32,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search,size: 32,),label: ''),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.squarePlus),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video_rounded,size: 32,),label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_alt_circle_fill,size: 32,),label: ''),
        ],
      ),
    );
  }
}
