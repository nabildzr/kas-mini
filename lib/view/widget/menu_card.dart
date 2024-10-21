
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MainCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const MainCard({super.key, 
  required this.title, 
  required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
        },
        child: AspectRatio(
          aspectRatio: 1/1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 56.43,
              ),
              const Gap(2),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
