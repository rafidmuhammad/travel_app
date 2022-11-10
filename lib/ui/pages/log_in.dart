import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_app/cubit/auth_cubit.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/widgets/custom_button.dart';
import 'package:new_flutter_app/ui/widgets/custom_text_field.dart';
import 'package:new_flutter_app/ui/widgets/tacbutton.dart';

import '../../cubit/page_cubit.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          "Sign in to start\nyour journey",
          style: blackTextStyle.copyWith(
              fontSize: defaultMargin, fontWeight: semibold),
        ),
      );
    }

    Widget inputSection() {
      Widget button() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/main-page',
                (route) => false,
              );
              //NOTE: set ke main-page karena last state dari pagecubit adalah settings page
              context.read<PageCubit>().setPage(0);
              //
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.error),
                backgroundColor: redcolor,
              ));
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return CustomButton(
                onPressed: () {
                  context.read<AuthCubit>().signIn(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                },
                title: "Sign In");
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: whitecolor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            CustomTextField(
                title: "Email Address", controller: emailController),
            CustomTextField(
              title: "Password",
              isObscure: true,
              controller: passwordController,
            ),
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
                CustomTextButton(
                    margin: const EdgeInsets.only(top: 30, bottom: 73),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                    name: "Don't have an account?"),
              ],
            ),
          ),
        ));
  }
}
