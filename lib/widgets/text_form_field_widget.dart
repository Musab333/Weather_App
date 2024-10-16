import 'package:flutter/material.dart';

import '../shared/colors_app.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.text,
    required this.keyPadType,
    required this.prefixIcon,
    this.validate,
    this.onTop,
  });

  final String text;
  final TextInputType keyPadType;
  final Icon prefixIcon;
  final String? Function(String?)? validate;
  final Function()? onTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: TextFormField(
        keyboardType: keyPadType,
        //textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            color: primaryColor,
            fontFamily: 'Cairo',
            //fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          prefixIcon: prefixIcon,

          //border: OutlineInputBorder(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onTap: onTop,

        validator: validate,
      ),
    );
  }
}
