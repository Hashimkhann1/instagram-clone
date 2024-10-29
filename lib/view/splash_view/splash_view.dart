import 'package:instagram_clone/res/files_paths/files_paths.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    SplashViewModel().splashTime(context);
    super.initState();
  }

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
            margin: const EdgeInsets.symmetric(vertical: 14),

            /// child
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                /// logo
                Image.asset('assets/images/logo.png',width: 70,height: 90,),

                /// text
                const Column(
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
