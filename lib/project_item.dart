import 'package:flutter/material.dart';

class ProjectItem extends StatelessWidget {
  final String title;
  final String details;
  final String projectNumber;
  final Color? backgroundColor;

  const ProjectItem(
      {super.key, required this.title,
      required this.projectNumber,
      this.backgroundColor,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7),
      padding: const EdgeInsets.all(7),
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.white),
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    '$projectNumber  .',
                    style: TextStyle(
                       fontSize: 9,
                      color: backgroundColor == const Color(0xFFE94F53)
                          ? Colors.black
                          : Colors.white.withOpacity(0.7),
                    ),
                  ),
                 const SizedBox(
                    width: 20,
                  ),
                  Text(
                    details,
                    style: TextStyle(
                       fontSize: 9,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  )
                ],
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.white), 
            onPressed: () {
              // Handle edit action
            },
          ),
        ],
      ),
    );
  }
}
