import 'package:flutter/material.dart';

class FormTile extends StatelessWidget {
  final String title;
  final String route;

  FormTile({required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return ListTile(
    title: Text(title),
    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
    onTap: () => Navigator.pushNamed(context, route),
  );
  }
}