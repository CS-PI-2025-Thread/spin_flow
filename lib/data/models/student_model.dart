import 'package:spin_flow/data/models/model.dart';

class StudentModel extends Model {
  final String email;
  final DateTime dateBirth;
  final String gender;
  final String phone;
  final String? instagramProfile;
  final String? facebookProfile;
  final String? tiktokProfile;
  final bool active;

  StudentModel({
    super.id,
    required super.name,
    required this.email,
    required this.dateBirth,
    required this.gender,
    required this.phone,
    this.instagramProfile,
    this.facebookProfile,
    this.tiktokProfile,
    required this.active,
  });
}
