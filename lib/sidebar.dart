import 'package:dashboard/sidebar_item.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, 
      color: Colors.white, 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Divider(
                    thickness: 1,
                    color: Colors.grey[300]), // Thin line below the logo
              ],
            ),
          ),
          // Profile Section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pooja Mishra',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'Admin',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Divider(thickness: 1, color: Colors.grey[300]),
          const SizedBox(height: 10),
          const SidebarItem(icon: Icons.home, label: 'Home', isSelected: true),
          const SidebarItem(icon: Icons.people, label: 'Employees'),
          const SidebarItem(icon: Icons.check_circle, label: 'Attendance'),
          const SidebarItem(icon: Icons.summarize, label: 'Summary'),
          const SidebarItem(icon: Icons.info, label: 'Information'),
          const SizedBox(height: 10),
          Divider(thickness: 1, color: Colors.grey[300]),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'WORKSPACES',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey),
            ),
          ),
          const SidebarItem(
              icon: Icons.folder, label: 'Adstacks', hasDropdown: true),
          const SidebarItem(
              icon: Icons.monetization_on, label: 'Finance', hasDropdown: true),
          const Spacer(),
          const SidebarItem(icon: Icons.settings, label: 'Setting'),
          const SidebarItem(icon: Icons.logout, label: 'Logout'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
