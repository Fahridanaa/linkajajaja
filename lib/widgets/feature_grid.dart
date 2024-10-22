import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeatureGrid extends StatelessWidget {
  const FeatureGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FeatureItem(
              icon: FontAwesomeIcons.mobileAlt,
              label: 'Pulsa/Data',
            ),
            FeatureItem(
              icon: FontAwesomeIcons.bolt,
              label: 'Electricity',
            ),
            FeatureItem(
              icon: FontAwesomeIcons.tv,
              label: 'Cable TV & Internet',
            ),
            FeatureItem(
              icon: FontAwesomeIcons.creditCard,
              label: 'Kartu Uang Elektronik',
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FeatureItem(
              icon: FontAwesomeIcons.church,
              label: 'Gereja',
            ),
            FeatureItem(
              icon: FontAwesomeIcons.handHoldingHeart,
              label: 'Infaq',
            ),
            FeatureItem(
              icon: FontAwesomeIcons.donate,
              label: 'Other Donations',
            ),
            FeatureItem(
              icon: FontAwesomeIcons.ellipsisH,
              label: 'More',
            ),
          ],
        ),
      ],
    );
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const FeatureItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4 - 24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            size: 24.0,
            color: Colors.redAccent,
          ),
          const SizedBox(height: 8.0),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
