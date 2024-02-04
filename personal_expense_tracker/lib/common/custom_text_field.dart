import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomtextFeild extends StatelessWidget {
  final TextEditingController? controller;
  final Icon customicon;
  final bool obscureText;
  final String hintText;
  final Function(String inp)? onChange;
  CustomtextFeild({
    Key? key,
    this.controller,
    required this.customicon,
    required this.hintText,
    required this.obscureText,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      textInputAction: TextInputAction.next,
      enableInteractiveSelection: true,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.titleSmall,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).splashColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(19.0)),
          gapPadding: 3.0,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: customicon,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(19.0)),
          borderSide: BorderSide(
            color: Theme.of(context).focusColor,
          ),
        ),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your $hintText ';
        }
        return null;
      },
    );
  }
}
