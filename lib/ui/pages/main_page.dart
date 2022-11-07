import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_app/cubit/page_cubit.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/pages/home_page.dart';
import 'package:new_flutter_app/ui/pages/settings_page.dart';
import 'package:new_flutter_app/ui/pages/transaction_page.dart';
import 'package:new_flutter_app/ui/pages/wallet_page.dart';
import 'package:new_flutter_app/ui/widgets/navigation_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingsPage();
        default:
          return const HomePage();
      }
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: backgroundcolor,
          body: buildContent(currentIndex),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Container(
            height: 60,
            width: MediaQuery.of(context).size.width - (2 * defaultMargin),
            decoration: BoxDecoration(
                color: whitecolor,
                borderRadius: BorderRadius.circular(defaultRadius)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                NavBar(
                  index: 0,
                  imageUrl: 'assets/icon_home.png',
                ),
                // ignore: prefer_const_constructors
                NavBar(
                  index: 1,
                  imageUrl: 'assets/icon_book.png',
                ),
                // ignore: prefer_const_constructors
                NavBar(
                  index: 2,
                  imageUrl: 'assets/icon_card.png',
                ),
                // ignore: prefer_const_constructors
                NavBar(
                  index: 3,
                  imageUrl: 'assets/icon_settings.png',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
