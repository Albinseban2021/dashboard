import 'package:dashboard/performance_chart.dart';
import 'package:dashboard/project_card.dart';
import 'package:dashboard/project_list.dart';
import 'package:dashboard/top_creator.dart';
import 'package:flutter/material.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Home',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Container(
                width: 250,
                decoration: BoxDecoration(
                  color:const Color(0xFF2F2545), 
                  borderRadius: BorderRadius.circular(20), 
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey[300]),
                          border: InputBorder.none, 
                        ),
                      ),
                    ),
                    Icon(Icons.search, color: Colors.grey[300]), 
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const ProjectCard(),
          const SizedBox(height: 20),
          const Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 3, child: ProjectsList()),
                SizedBox(width: 20),
                Expanded(flex: 2, child: TopCreators()),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Flexible(child: PerformanceChart()),
        ],
      ),
    );
  }
}
