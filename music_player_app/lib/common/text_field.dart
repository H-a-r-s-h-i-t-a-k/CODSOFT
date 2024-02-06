import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomtextFeild extends StatelessWidget {
  var controller;
  final Icon? customicon;
  final Icon? sf_icon;
  final bool obscureText;
  final String text;
  final Function(String inp)? onChange;

  CustomtextFeild({
    Key? key,
    this.sf_icon,
    this.customicon,
    required this.text,
    required this.obscureText,
    this.onChange,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return TextFormField(
      style: Theme.of(context).textTheme.labelMedium,
      textInputAction: text == "" ? TextInputAction.done : TextInputAction.next,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: isDarkMode
            ? TextStyle(color: Color.fromARGB(255, 255, 255, 255))
            : TextStyle(color: Color.fromARGB(130, 4, 4, 4)),
        hintText: text,
        hintStyle: isDarkMode
            ? TextStyle(color: Color.fromARGB(153, 12, 10, 7))
            : GoogleFonts.pontanoSans(
                fontSize: 30, fontWeight: FontWeight.w900),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 113, 79, 79),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(19),
            bottomRight: Radius.circular(19),
          ),
          gapPadding: 3.0,
        ),
        suffixIcon: sf_icon,
        suffixIconColor: Colors.white,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: customicon,
        ),
        prefixIconColor: Colors.tealAccent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(19.0)),
          borderSide: BorderSide(
            color: Colors.tealAccent,
          ),
        ),
      ),
    );
  }

  String? validation(val) {
    if (val == null || val.isEmpty) {
      return 'Enter your $text ';
    }
    return null;
  }
}
