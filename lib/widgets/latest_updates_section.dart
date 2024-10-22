import 'package:flutter/material.dart';

class LatestUpdatesSection extends StatefulWidget {
  const LatestUpdatesSection({Key? key}) : super(key: key);

  @override
  _LatestUpdatesSectionState createState() => _LatestUpdatesSectionState();
}

class _LatestUpdatesSectionState extends State<LatestUpdatesSection> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPage = 0;

  final List<Map<String, String>> _updates = [
    {
      "title": "Update 1",
      "subtitle": "New features in our app",
    },
    {
      "title": "Update 2",
      "subtitle": "Improved performance",
    },
    {
      "title": "Update 3",
      "subtitle": "Bug fixes and improvements",
    },
    {
      "title": "Update 4",
      "subtitle": "New user interface",
    },
    {
      "title": "Update 5",
      "subtitle": "Special offers for you",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header (Latest Updates)
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Latest Updates",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        // Slider (PageView)
        SizedBox(
          height: 250, // Tinggi dari slider termasuk title dan subtitle
          child: PageView.builder(
            controller: _pageController,
            itemCount: _updates.length,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160.0, // Tinggi dari slider
                      decoration: BoxDecoration(
                        color: Colors.grey[300], // Placeholder background
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Title and Subtitle for the Current Page
                    Text(
                      _updates[index]["title"] ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      _updates[index]["subtitle"] ?? '',
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
