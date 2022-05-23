import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nAnya Baerth',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image_profile.png')),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                imageUrl: 'assets/images/image_destination1.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'White Houses',
                city: 'Spain',
                imageUrl: 'assets/images/image_destination2.png',
                rating: 4.7,
              ),
              DestinationCard(
                name: 'Lake Deres',
                city: 'Monaco',
                imageUrl: 'assets/images/image_destination3.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'Anohana',
                city: 'Japan',
                imageUrl: 'assets/images/image_destination4.png',
                rating: 5.0,
              ),
              DestinationCard(
                name: 'Street Marioboro',
                city: 'Mariobor',
                imageUrl: 'assets/images/image_destination5.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              name: 'Danau Beratan',
              city: 'Singajara',
              imageUrl: 'assets/images/image_destination6.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Sydney Opera',
              city: 'Australia',
              imageUrl: 'assets/images/image_destination7.png',
              rating: 4.9,
            ),
            DestinationTile(
              name: 'Roma',
              city: 'Italy',
              imageUrl: 'assets/images/image_destination8.png',
              rating: 4.7,
            ),
            DestinationTile(
              name: 'Payung Teduh',
              city: 'Singapore',
              imageUrl: 'assets/images/image_destination9.png',
              rating: 5.0,
            ),
            DestinationTile(
              name: 'Hill Hey',
              city: 'Moncao',
              imageUrl: 'assets/images/image_destination10.png',
              rating: 4.5,
            ),
          ],
        ),
      );
    }

    return Container(
      child: ListView(
        children: [header(), popularDestination(), newDestination()],
      ),
    );
  }
}
