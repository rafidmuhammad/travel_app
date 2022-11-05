import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/widgets/custom_button.dart';
import 'package:new_flutter_app/ui/widgets/custom_text_field.dart';
import 'package:new_flutter_app/ui/widgets/tacbutton.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          "Join us and get\nyour next journey",
          style: blackTextStyle.copyWith(
              fontSize: defaultMargin, fontWeight: semibold),
        ),
      );
    }

    Widget inputSection() {
      Widget button() {
        return CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            },
            title: "Get Started");
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: whitecolor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            const CustomTextField(
              title: "Full name",
            ),
            const CustomTextField(title: "Email Address"),
            const CustomTextField(
              title: "Password",
              isObscure: true,
            ),
            const CustomTextField(title: "Hobby"),
            button(),
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: backgroundcolor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ListView(
              children: [
                title(),
                inputSection(),
                const TacButton(margin: EdgeInsets.only(top: 50, bottom: 73)),
              ],
            ),
          ),
        ));
  }
}
