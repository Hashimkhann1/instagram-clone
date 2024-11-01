import 'package:instagram_clone/res/files_paths/files_paths.dart';

class StoriesView extends StatelessWidget {
  const StoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context , index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: CircleAvatar(radius: 38,backgroundColor: MyColors.greyColor.withOpacity(0.3),),
          );
        });
  }
}
