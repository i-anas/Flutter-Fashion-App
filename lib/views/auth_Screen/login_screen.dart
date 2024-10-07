import 'package:fashion_mart/common_components/appWidget.dart';
import 'package:fashion_mart/common_components/background_widget.dart';
import 'package:fashion_mart/common_components/customButton_widget.dart';
import 'package:fashion_mart/common_components/textfield_widget.dart';
import 'package:fashion_mart/consts/consts.dart';
import 'package:fashion_mart/consts/socialiconslist.dart';
import 'package:fashion_mart/views/auth_Screen/signup_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        children: [
          (context.screenHeight * 0.12).heightBox,
          appLogoWidget(),
          10.heightBox,
          "Log in to $appname".text.fontFamily(bold).white.size(20).make(),
          15.heightBox,
          Column(
            children: [
              customTextFieldWidget(hint: emailHint, title: email),
              customTextFieldWidget(hint: passwordHint, title: password),
              Align(
                alignment: Alignment.centerRight,
                child:
                    TextButton(onPressed: () {}, child: forgetpass.text.make()),
              ),
              5.heightBox,
              // CustomButton().box.width(context.screenWidth - 50).make(),
              CustomButton(
                      onpress: () {},
                      color: redColor,
                      textcolor: whiteColor,
                      title: loginbtn)
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              5.heightBox,
              createNewAccount.text.color(fontGrey).make(),

              5.heightBox,
              CustomButton(
                      onpress: () {
                        Get.to(() => SignupScreen());
                      },
                      color: lightgolden,
                      textcolor: redColor,
                      title: signupbtn)
                  .box
                  .width(context.screenWidth - 50)
                  .make(),

              10.heightBox,
              loginwith.text.color(fontGrey).make(),

              5.heightBox,

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socialIconList[index],
                              width: 30,
                            ),
                          ),
                        )),
              )
            ],
          )
              .box
              .white
              .rounded
              .shadowSm
              .padding(EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .make(),
        ],
      )),
    ));
  }
}
