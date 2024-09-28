import 'package:fashion_mart/common_components/appWidget.dart';
import 'package:fashion_mart/consts/consts.dart';
import 'package:fashion_mart/views/auth_Screen/login_screen.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
//Creating method to change screen for (if user is logged in or not).

  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      //changing screens using getx

      Get.to(() => LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
                child: Image.asset(
              icSplashBg,
              width: 300,
            )),

            // we are using Velocity X to design our UI it helps in making designs easier

            20.heightBox,
            appLogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,

            //Our SplashScreen UI is completed...
          ],
        ),
      ),
    );
  }
}
