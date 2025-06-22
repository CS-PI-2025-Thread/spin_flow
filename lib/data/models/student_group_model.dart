import 'package:spin_flow/data/models/student_model.dart';
import 'package:spin_flow/data/models/model.dart';

class StudentGroupModel extends Model {
  final String? description;
  final List<StudentModel> students;
  final bool active;

  StudentGroupModel({
    super.id,
    required super.name,
    this.description,
    required this.students,
    this.active = true,
  });
}
