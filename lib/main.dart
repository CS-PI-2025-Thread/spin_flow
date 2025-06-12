import 'package:flutter/material.dart';
import 'package:spin_flow/core/constants/app_routes.dart';
import 'package:spin_flow/presentation/screens/forms/form_classroom.dart';
import 'package:spin_flow/presentation/screens/forms/form_producer.dart';
import 'package:spin_flow/presentation/screens/forms/form_student.dart';
import 'package:spin_flow/presentation/screens/forms/form_maintenance_type.dart';
import 'package:spin_flow/presentation/screens/forms/form_video_class.dart';
import 'presentation/screens/dashboard/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardScreen(),
      initialRoute: '/',
      routes: {
        AppRoutes.studentForm: (context) => const FormStudent(),
        AppRoutes.videoClassForm: (context) => const VideoClassForm(),
        AppRoutes.producerForm: (context) => const ProducerForm(),
        AppRoutes.maintenanceTypeForm: (context) => const MaintenanceTypeForm(),
        AppRoutes.classroomForm: (context) => const ClassroomForm(),
        AppRoutes.musicCategoryForm: (context) => const FormStudent(), // Placeholder for music category form
        AppRoutes.artistBandForm: (context) => const FormStudent(), // Placeholder for artist/band form
        AppRoutes.teamForm: (context) => const FormStudent(), // Placeholder for team form
        AppRoutes.bikeForm: (context) => const FormStudent(), // Placeholder for bike form
        AppRoutes.musicForm: (context) => const FormStudent(), // Placeholder for music form
        AppRoutes.mixClassForm: (context) => const FormStudent(), // Placeholder for mix class form
        AppRoutes.groupStudentForm: (context) => const FormStudent(), // Placeholder for group student form
      },
    );
  }
}