import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/pages/home_page.dart';
import 'package:new_flutter_app/ui/widgets/navigation_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    return Scaffold(
      backgroundColor: backgroundcolor,
      body: buildContent(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 60,
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        decoration: BoxDecoration(
            color: whitecolor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            NavBar(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            NavBar(
              imageUrl: 'assets/icon_book.png',
            ),
            NavBar(
              imageUrl: 'assets/icon_card.png',
            ),
            NavBar(
              imageUrl: 'assets/icon_settings.png',
            ),
          ],
        ),
      ),
    );
  }
}
