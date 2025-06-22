import 'package:spin_flow/data/models/model.dart';
import 'package:spin_flow/data/models/sala_model.dart';

enum WeekDay { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

class ClassModel extends Model {
  final String? description;
  final List<WeekDay> weekDays;
  final String startTime;
  final int durationMinutes;
  final PositionClassModel room;
  final bool active;

  ClassModel({
    required super.id,
    required super.name,
    required this.description,
    required this.weekDays,
    required this.startTime,
    required this.durationMinutes,
    required this.room,
    required this.active,
  });
}
