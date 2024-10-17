import 'package:dashboard/aniversary.dart';
import 'package:dashboard/birthday.dart';
import 'package:dashboard/calendar.dart';
import 'package:flutter/material.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: [
                Icon(Icons.receipt_long, size: 30, color: Colors.grey[800]),
                const Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.orange,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Stack(
              children: [
                Icon(Icons.notifications, size: 30, color: Colors.grey[800]),
                const Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.orange,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
            const Icon(Icons.power_settings_new, size: 30, color: Colors.black),
            const SizedBox(width: 70),
            const CircleAvatar(
              radius: 16,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          color: const Color(0xff1a254a),
          padding: const EdgeInsets.all(20.0),
          child: const Column(
            children: [
              CalendarWidget(),
              SizedBox(height: 13),
              BirthdayWidget(),
              SizedBox(height: 13),
              AnniversaryWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
