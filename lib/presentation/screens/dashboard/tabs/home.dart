import 'package:flutter/material.dart';
import 'package:spin_flow/core/constants/app_icons.dart';
import 'package:spin_flow/core/utils/responsive_helper.dart';
import 'package:spin_flow/presentation/widgets/info_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final infoData = [
      {'icon': AppIcons.message, 'value': '3', 'title': 'Recados'},
      {'icon': AppIcons.person, 'value': '82', 'title': 'Alunos Ativos'},
      {'icon': AppIcons.schedule, 'value': '12', 'title': 'Aulas Agendadas'},
      {'icon': AppIcons.musicNote, 'value': '4', 'title': 'Mix de Músicas'},
      {'icon': AppIcons.bike, 'value': '18', 'title': 'Bikes OK'},
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: ResponsiveHelper.getCrossAxisCount(context),
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 1,
        children: infoData.map((data) => InfoCard(
          context: context,
          icon: data['icon'] as IconData,
          value:data['value'] as String,
          title: data['title'] as String,
        )).toList(),
      ),
    );
  }
}