import 'package:fashion_mart/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget CustomButton({onpress, color, textcolor, String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(12),
        backgroundColor: color,
      ),
      onPressed: onpress,
      child: title!.text.color(textcolor).fontFamily(bold).make());
}
