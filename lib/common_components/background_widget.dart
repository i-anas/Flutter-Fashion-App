import 'package:fashion_mart/consts/consts.dart';

BackGroundWidget(Widget? child) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}
