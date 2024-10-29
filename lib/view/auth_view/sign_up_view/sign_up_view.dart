import 'package:instagram_clone/res/components/my_text_button.dart';
import 'package:instagram_clone/res/components/my_text_form_field.dart';
import 'package:instagram_clone/res/files_paths/files_paths.dart';
import 'package:instagram_clone/view/auth_view/sign_up_view/sign_up_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: MyColors.backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// ///// Language /////
              MyText(title: "English (US)"),
              SizedBox(height: height * 0.1,),

              /// Logo
              Image.asset(
                "assets/images/logo.png",
                width: 70,
                height: 60,
              ),

              Column(
                children: [
                  SizedBox(
                    height: height * 0.1,
                  ),

                  /// ///// Form /////
                  Form(
                      child: Column(
                        children: [
                          /// User name OR Email
                          MyTextFormFeild(
                            hintText: "Username , email",
                            borderSide: BorderSide(
                                color: MyColors.greyColor.withOpacity(0.9)),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          MyTextFormFeild(
                            hintText: "Email",
                            borderSide: BorderSide(
                                color: MyColors.greyColor.withOpacity(0.9)),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          /// Password
                          MyTextFormFeild(
                            hintText: "Password",
                            obscureText: true,
                            borderSide: BorderSide(
                                color: MyColors.greyColor.withOpacity(0.9)),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),

                          /// Login Button
                          MyTextButton(
                            title: "Sign in",
                            backgroundColor: MyColors.blueColor,
                            height: height * 0.06,
                            borderRadius: 26,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            textColor: MyColors.whiteColor,
                          ),
                          SizedBox(height: 10,),

                          /// Forget password
                          // MyTextButton(
                          //   title: "Forgot Password?",
                          //   fontSize: 17,
                          //   fontWeight: FontWeight.bold,
                          //   textColor: MyColors.blackColor.withOpacity(0.7),
                          // )
                        ],
                      )),
                ],
              ),
              SizedBox(height: height * 0.12,),

              /// Create New Account
              Column(
                children: [
                  MyTextButton(
                    title: "Already have an account",
                    fontSize: 18,
                    textColor: MyColors.blueColor,
                    border: Border.all(color: MyColors.blueColor),
                    borderRadius: 26,
                    height: height * 0.06,
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInView())),
                  ),
                  MyText(
                    title: "Meta",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: MyColors.blackColor.withOpacity(0.7),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
