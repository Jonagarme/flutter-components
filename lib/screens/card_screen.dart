import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
              name: 'Un hermoso paisaje de carretera',
              imageURL:
                  'https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6.jpg?w=1272&h=954'),
          SizedBox(height: 10),
          CustomCardType2(
              name: 'Un hermoso paisaje',
              imageURL:
                  'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png'),
          SizedBox(height: 10),
          CustomCardType2(
              imageURL:
                  'https://burst.shopifycdn.com/photos/sunset-hiking-like-ants-marching.jpg?width=1200&format=pjpg&exif=1&iptc=1'),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
