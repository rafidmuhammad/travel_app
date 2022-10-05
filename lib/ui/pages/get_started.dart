import 'package:flutter/material.dart';
import 'package:new_flutter_app/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image_getstarted.png'))),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Fly Like a Bird",
                  style: whiteTextStyle.copyWith(
                      fontSize: 32, fontWeight: semibold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: light),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                    margin: EdgeInsets.only(top: 50, bottom: 80),
                    title: "Get Started",
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/sign-up',
                      );
                    },
                    width: 220)
              ],
            ),
          )
        ],
      ),
    );
  }
}
