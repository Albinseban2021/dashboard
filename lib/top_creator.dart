import 'package:dashboard/creator_item.dart';
import 'package:flutter/material.dart';

class TopCreators extends StatelessWidget {
  const TopCreators({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF141D50),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade900,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              children: [
                Text(
                  'Top Creators',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        '    Name',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Artworks',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Rating',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const CreatorItem(
            name: '@maddison_c21',
            artworks: 9621,
            rating: 0.9,
          ),
          const CreatorItem(
            name: '@karl_will02',
            artworks: 7032,
            rating: 0.7,
          ),
          const CreatorItem(
            name: '@maddison_c21',
            artworks: 9821,
            rating: 0.8,
          ),
        ],
      ),
    );
  }
}
