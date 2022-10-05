import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/widgets/custom_button.dart';

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
      Widget fullNameInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Full Name",
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: textcolor,
                decoration: InputDecoration(
                  hintText: 'Your full name',
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

      Widget emailInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email Address",
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: textcolor,
                decoration: InputDecoration(
                  hintText: 'Your email address',
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

      Widget password() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                obscureText: true,
                cursorColor: textcolor,
                decoration: InputDecoration(
                  hintText: 'Your password',
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

      Widget hobbyInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hobby",
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: textcolor,
                decoration: InputDecoration(
                  hintText: 'Your hobby',
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
            fullNameInput(),
            emailInput(),
            password(),
            hobbyInput(),
            button(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 73),
        child: TextButton(
            onPressed: () {},
            child: Text(
              "Terms and Condition",
              style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                  decoration: TextDecoration.underline),
            )),
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
                tacButton(),
              ],
            ),
          ),
        ));
  }
}
