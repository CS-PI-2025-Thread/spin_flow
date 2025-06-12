import 'package:flutter/material.dart';
import 'package:spin_flow/core/constants/app_routes.dart';
import 'package:spin_flow/presentation/widgets/form_tile.dart';

class FormsTabs extends StatelessWidget {
  const FormsTabs ({super.key});

  @override
  Widget build(BuildContext context) {
    final cadastros = {
      'Vídeo Aula': AppRoutes.videoClassForm,
      'Aluno': AppRoutes.studentForm,
      'Fabricante': AppRoutes.producerForm,
      'Sala': AppRoutes.classroomForm,
      'Tipo Manutenção': AppRoutes.maintenanceTypeForm,
      'Categoria Música': AppRoutes.musicCategoryForm,
      'Banda Artista': AppRoutes.artistBandForm,
      'Turma': AppRoutes.teamForm,
      'Bike': AppRoutes.bikeForm,
      'Música': AppRoutes.musicForm,
      'Mix Aula (Playlist)': AppRoutes.mixClassForm,
      'Grupo Aluno': AppRoutes.groupStudentForm,
    };

    return ListView(
      children: cadastros.entries.map((e) => FormTile(title: e.key, route: e.value)).toList(),
    );
  }
}