import 'package:flutter/material.dart';
import 'package:spin_flow/presentation/screens/dashboard/tabs/class_tab.dart';
import 'package:spin_flow/presentation/screens/dashboard/tabs/forms_tab.dart';
import 'package:spin_flow/presentation/screens/dashboard/tabs/home.dart';
import 'package:spin_flow/presentation/screens/dashboard/tabs/maintenance.dart';
import 'package:spin_flow/presentation/screens/dashboard/tabs/message.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabs = ['Visão Geral', 'Cadastros', 'Aulas', 'Manutenção', 'Recados'];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          bottom: TabBar(isScrollable: true, tabs: tabs.map((e) => Tab(text: e)).toList()),
        ),
        body: const TabBarView(
          children: [
            Home(),
            FormsTabs(),
            ClassTab(),
            Maintenance(),
            Message(),
          ],
        ),
      ),
    );
  }
}