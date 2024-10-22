import 'package:flutter/material.dart';

class AccountItem extends StatelessWidget {
  final String title;
  final String? value;

  const AccountItem({
    super.key,
    required this.title,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              if (value != null) ...[
                Text(
                  value!,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Color.fromARGB(255, 197, 197, 197),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 16.0),
              ],
              const Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 138, 24, 24),
                size: 14.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
