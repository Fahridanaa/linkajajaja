import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActionBox extends StatelessWidget {
  const ActionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 3.0,
            spreadRadius: 0.5,
            offset: Offset(0.5, 0.5),
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ActionItem(
            icon: FontAwesomeIcons.plus,
            label: 'Top up',
          ),
          ActionItem(
            icon: FontAwesomeIcons.moneyBill,
            label: 'CashOut',
          ),
          ActionItem(
            icon: FontAwesomeIcons.paperPlane,
            label: 'Send Money',
          ),
          ActionItem(
            icon: FontAwesomeIcons.ellipsisH,
            label: 'See All',
          ),
        ],
      ),
    );
  }
}

class ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const ActionItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaIcon(
          icon,
          size: 24.0,
          color: Colors.black87,
        ),
        const SizedBox(height: 4.0),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
