
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HistoryCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const HistoryCard({super.key, 
  required this.title, 
  required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 32, top: 32, left: 38, right: 38),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 56.43,
              ),
              Gap(2),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
