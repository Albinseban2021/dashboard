import 'package:dashboard/project_item.dart';
import 'package:flutter/material.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF081937),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'All Projects',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children:const  [
                ProjectItem(
                  title: 'Technology behind the Blockchain',
                  projectNumber: 'Project #1',
                  backgroundColor:  Color(0xFFE94F53),
                  details: 'See Project details',
                ),
                ProjectItem(
                  title: 'Technology behind the Blockchain',
                  projectNumber: 'Project #2',
                  backgroundColor:  Color(0xFF1A2E47),
                  details: 'See Project details',
                ),
                ProjectItem(
                  title: 'Technology behind the Blockchain',
                  projectNumber: 'Project #3',
                  backgroundColor:  Color(0xFF1A2E47),
                  details: 'See Project details',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
