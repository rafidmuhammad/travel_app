import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_app/cubit/auth_cubit.dart';
import 'package:new_flutter_app/cubit/destination_cubit.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/widgets/destination_card.dart';
import 'package:new_flutter_app/ui/widgets/destination_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<DestinationCubit>().getDestinations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, top: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Howdy,\n${state.user.name}",
                          style: blackTextStyle.copyWith(
                              fontSize: 24, fontWeight: semibold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Where to fly today?",
                          style: greyTextStyle.copyWith(
                              fontSize: 16, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/image_profile.png"))),
                  )
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30, right: defaultMargin),
        child: SizedBox(
          height: 323,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              DestinationCard(
                city: "Tangerang",
                name: "Lake Ciliwung",
                imageUrl: "assets/image_dest_1.png",
                rating: 4.8,
              ),
              DestinationCard(
                city: "Spain",
                name: "White Houses",
                imageUrl: "assets/image_dest_2.png",
                rating: 4.7,
              ),
              DestinationCard(
                city: "Monaco",
                name: "Hill Heyo",
                imageUrl: "assets/image_dest_3.png",
                rating: 5,
              ),
              DestinationCard(
                city: "Japan",
                name: "Menara",
                imageUrl: "assets/image_dest_4.png",
                rating: 4.8,
              ),
              DestinationCard(
                city: "Singapore",
                name: "Payung Teduh",
                imageUrl: "assets/image_dest_5.png",
                rating: 5,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Destinations",
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
            ),
            const DestinationTile(
              name: "Danau Beratan",
              city: "Singaraja",
              rating: 4.5,
              imageUrl: "assets/image_dest_6.png",
            ),
            const DestinationTile(
              name: "Sydney",
              city: "Australia",
              rating: 4.7,
              imageUrl: "assets/image_dest_7.png",
            ),
            const DestinationTile(
              name: "Rome",
              city: "Italy",
              rating: 4.8,
              imageUrl: "assets/image_dest_8.png",
            ),
            const DestinationTile(
              name: "Payung Teduh",
              city: "singapore",
              rating: 4.5,
              imageUrl: "assets/image_dest_9.png",
            ),
            const DestinationTile(
              name: "Hill Hey",
              city: "Monaco",
              rating: 4.7,
              imageUrl: "assets/image_dest_10.png",
            ),
          ],
        ),
      );
    }

    return BlocConsumer<DestinationCubit, DestinationState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is DestinationFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is DestinationSuccess) {
          return ListView(
            children: [
              header(),
              popularDestination(),
              newDestination(),
            ],
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
