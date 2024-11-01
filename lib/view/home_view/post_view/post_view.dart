import 'package:instagram_clone/res/files_paths/files_paths.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        /// Profile section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          child: Row(
            children: [
              CircleAvatar(radius: 24),
              SizedBox(width: 10),
              MyText(title: "Profile Name Here", fontSize: 17, fontWeight: FontWeight.w500),
            ],
          ),
        ),

        /// Post data
        Container(
          height: height * 0.48,
          color: Colors.black,
        ),

        /// Like, comment, and share buttons
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Row(
            children: [
              Icon(FontAwesomeIcons.heart, size: 30),
              SizedBox(width: 10),
              Icon(FontAwesomeIcons.comment, size: 30),
              SizedBox(width: 10),
              Icon(FontAwesomeIcons.paperPlane, size: 30),
            ],
          ),
        ),
      ],
    );
  }
}
