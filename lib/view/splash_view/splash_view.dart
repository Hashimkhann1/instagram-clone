
import 'package:instagram_clone/res/app_colors/app_colors.dart';
import 'package:instagram_clone/res/components/my_text.dart';
import 'package:instagram_clone/res/files_paths/files_paths.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: width,
            height: height * 0.61,
            margin: EdgeInsets.symmetric(vertical: 14),

            /// child
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                /// logo
                Image.asset('assets/images/logo.png',width: 70,height: 90,),

                /// text
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyText(title: "from",color: MyColors.greyColor,),
                    MyText(title: "Meta",color: MyColors.darkPinkColor,fontWeight: FontWeight.bold,fontSize: 18,),
                  ],
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
