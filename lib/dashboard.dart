import 'package:dashboard/dashboard_contest.dart';
import 'package:dashboard/right_panel.dart';
import 'package:dashboard/sidebar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 20,
            child: Sidebar(),
          ),
          Expanded(
            flex: 60,
            child: DashboardContent(),
          ),
          Expanded(
            flex: 20,
            child: RightPanel(),
          ),
        ],
      ),
    );
  }
}
