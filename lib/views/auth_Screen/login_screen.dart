import 'package:fashion_mart/common_components/appWidget.dart';
import 'package:fashion_mart/common_components/background_widget.dart';
import 'package:fashion_mart/consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(Scaffold(
      body: Center(
          child: Column(
        children: [
          (context.screenHeight * 0.12).heightBox,
          appLogoWidget(),
          10.heightBox,
          "Log in to $appname".text.fontFamily(bold).white.size(20).make(),
        ],
      )),
    ));
  }
}
