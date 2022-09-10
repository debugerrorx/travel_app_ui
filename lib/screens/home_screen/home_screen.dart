import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constants.dart';
import 'components/all_destinations/all_destinations.dart';
import 'components/top_destinations/top_destinations.dart';

class HomeScreen extends StatelessWidget {
  static const _padding = 24.0;
  static const _spacing = 24.0;

  const HomeScreen({Key? key}) : super(key: key);

  Widget appBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            FontAwesomeIcons.barsStaggered,
            color: kSecondaryColor,
            size: 24,
          ),
          Icon(
            FontAwesomeIcons.bell,
            color: kSecondaryColor,
            size: 24,
          ),
        ],
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Descover',
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Explore the best places in the world!',
            style: TextStyle(
              color: kSecondaryColor.withOpacity(0.6),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _padding),
      child: Container(
        height: 46,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: kSecondaryColor.withOpacity(0.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Search your trip',
              style: TextStyle(
                color: kSecondaryColor.withOpacity(0.6),
              ),
            ),
            Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: kSecondaryColor.withOpacity(0.6),
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget categories() {
    final categoryList = ['America', 'Europe', 'Asia', 'Oceania'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const Text(
                'All',
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 2),
              Container(
                width: 4,
                height: 4,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kSecondaryColor,
                ),
              ),
            ],
          ),
          for (final category in categoryList)
            Text(
              category,
              style: TextStyle(
                color: kSecondaryColor.withOpacity(0.6),
                fontSize: 16,
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 52),
          appBar(),
          const SizedBox(height: 24),
          header(),
          const SizedBox(height: 24),
          searchBar(),
          const SizedBox(height: 36),
          categories(),
          const SizedBox(height: 16),
          const AllDestinations(
            padding: _padding,
            spacing: _spacing,
          ),
          const SizedBox(height: 36),
          const TopDestinations(
            padding: _padding,
            spacing: _spacing,
          ),
        ],
      ),
    );
  }
}
