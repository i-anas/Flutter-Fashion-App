import 'package:fashion_mart/consts/consts.dart';

customTextFieldWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      email.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        decoration: const InputDecoration(
          hintText: 'Email',
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: redColor),
          ),
        ),
      )
    ],
  );
}
