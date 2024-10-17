import 'package:flutter/material.dart';

class SidebarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final bool hasDropdown;

  const SidebarItem({
    super.key,
    required this.icon,
    required this.label,
    this.isSelected = false,
    this.hasDropdown = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          label == "Adstacks" || label == "Finance"
              ? Container()
              : Icon(icon,
                  color: isSelected ? Colors.black : Colors.grey[600],
                  size: 24),
          const SizedBox(width: 25),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: isSelected ? FontWeight.w800 : FontWeight.w400,
            ),
          ),
          if (hasDropdown)
            Icon(Icons.keyboard_arrow_down, color: Colors.grey[600]),
        ],
      ),
    );
  }
}
