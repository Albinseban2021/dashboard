import 'package:flutter/material.dart';

class CreatorItem extends StatelessWidget {
  final String name;
  final int artworks;
  final double rating;

  const CreatorItem({
    super.key,
    required this.name,
    required this.artworks,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              name,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: Text(
              artworks.toString(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    value: rating,
                    color: Colors.purpleAccent,
                    backgroundColor: Colors.white30,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
