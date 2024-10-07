import 'package:fashion_mart/common_components/appWidget.dart';
import 'package:fashion_mart/common_components/background_widget.dart';
import 'package:fashion_mart/common_components/customButton_widget.dart';
import 'package:fashion_mart/common_components/textfield_widget.dart';
import 'package:fashion_mart/consts/consts.dart';
import 'package:fashion_mart/views/auth_Screen/login_screen.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
          "Join $appname".text.fontFamily(bold).white.size(20).make(),
          15.heightBox,
          Column(
            children: [
              customTextFieldWidget(hint: namHint, title: name),
              customTextFieldWidget(hint: emailHint, title: email),
              customTextFieldWidget(hint: passwordHint, title: password),
              customTextFieldWidget(hint: passwordHint, title: retypepassword),
              5.heightBox,
              Row(
                children: [
                  Checkbox(
                      value: false,
                      checkColor: redColor,
                      onChanged: (newValue) {}),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(fontFamily: bold, color: fontGrey)),
                      TextSpan(
                          text: termAndCondition,
                          style: TextStyle(fontFamily: bold, color: redColor)),
                      TextSpan(
                          text: " & ",
                          style: TextStyle(fontFamily: bold, color: fontGrey)),
                      TextSpan(
                          text: privecyPolicy,
                          style: TextStyle(fontFamily: bold, color: redColor))
                    ])),
                  )
                ],
              ),
              5.heightBox,
              CustomButton(
                      onpress: () {},
                      color: redColor,
                      textcolor: whiteColor,
                      title: signupbtn)
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: alreadyHaveAccount,
                    style: TextStyle(fontFamily: bold, color: fontGrey)),
                TextSpan(
                    text: loginbtn,
                    style: TextStyle(fontFamily: bold, color: redColor)),
              ])).onTap(() {
                Get.back();
              }),
              5.heightBox,
            ],
          )
              .box
              .white
              .rounded
              .shadowSm
              .padding(const EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .make(),
        ],
      )),
    ));
  }
}
