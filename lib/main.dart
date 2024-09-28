import 'package:fashion_mart/consts/consts.dart';
import 'package:fashion_mart/views/SplashScreen/splashScreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const FashionMart());
}

class FashionMart extends StatelessWidget {
  const FashionMart({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
        fontFamily: regular,
      ),
      home: const Splashscreen(),
    );
  }
}
