import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String btnText;
  final Color btnBgColor;
  final Color btnTxtColor;

  const AppButton({
    super.key,
    required this.btnText,
    this.btnBgColor = const Color.fromARGB(255, 250, 250, 250),
    this.btnTxtColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: btnBgColor,
        foregroundColor: btnTxtColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: Size(deviceWidth * 0.14, 40),
      ),
      onPressed: () {},
      child: Text(btnText),
    );
  }
}
