import 'package:instagram_clone/res/files_paths/files_paths.dart';

class SplashViewModel {

  void splashTime(BuildContext context) {
    Future.delayed(const Duration(seconds: 2) , () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInView()));
    });
  }

}