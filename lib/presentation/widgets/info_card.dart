import 'package:flutter/material.dart';
import 'package:spin_flow/core/constants/app_colors.dart';

class InfoCard extends StatelessWidget {
  final BuildContext context;
  final IconData icon;
  final String value;
  final String title;

  const InfoCard({
    Key? key,
    required this.context,
    required this.icon,
    required this.value,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Card(
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: AppColors.primary),
          const SizedBox(height: 12),
          Text(value, style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 4),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    ),
  );
}
}