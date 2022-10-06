import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final bool isObscure;

  const CustomTextField(
      {super.key, required this.title, this.isObscure = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: isObscure,
            cursorColor: textcolor,
            decoration: InputDecoration(
              hintText: "Your ${title.toLowerCase()}",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(color: primarycolor)),
            ),
          ),
        ],
      ),
    );
  }
}
