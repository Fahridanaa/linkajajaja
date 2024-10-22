import 'package:flutter/material.dart';

class BestDealsSection extends StatefulWidget {
  const BestDealsSection({super.key});

  @override
  _BestDealsSectionState createState() => _BestDealsSectionState();
}

class _BestDealsSectionState extends State<BestDealsSection> {
  final PageController _pageController = PageController(viewportFraction: 0.9);

  final List<Map<String, String>> _deals = [
    {
      "title": "Deal 1",
      "subtitle": "Up to 50% off on electronics",
    },
    {
      "title": "Deal 2",
      "subtitle": "Buy 1 get 1 free on groceries",
    },
    {
      "title": "Deal 3",
      "subtitle": "25% off on clothing",
    },
    {
      "title": "Deal 4",
      "subtitle": "Special discount on furniture",
    },
    {
      "title": "Deal 5",
      "subtitle": "20% cashback on mobile phones",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Best Deals",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 209, 46, 46),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        SizedBox(
          height: 250,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _deals.length,
            onPageChanged: (int index) {
              setState(() {});
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      _deals[index]["title"] ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      _deals[index]["subtitle"] ?? '',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
