import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/header.dart';
import '../widgets/balance_card.dart';
import '../widgets/action_box.dart';
import '../widgets/feature_grid.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/best_deals_section.dart';
import '../widgets/latest_updates_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 48, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 192, 18, 18),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Fahridana Ahmad Rayyansyah',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      children: [
                        Flexible(
                          child: BalanceCard(
                            title: 'Your Balance',
                            amount: 'Rp 9.747',
                            icon: FontAwesomeIcons.arrowRight,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Flexible(
                          child: BalanceCard(
                            title: 'Bonus Balance',
                            amount: '0',
                            icon: FontAwesomeIcons.arrowRight,
                            leadingIcon: FontAwesomeIcons.gift,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
              const ActionBox(),
              const SizedBox(height: 8.0),
              const FeatureGrid(),
              const SizedBox(height: 8.0),
              const CarouselWidget(),
              const SizedBox(height: 8.0),
              const BestDealsSection(),
              const SizedBox(height: 8.0),
              const LatestUpdatesSection(),
            ],
          ),
        ),
      ),
    );
  }
}
