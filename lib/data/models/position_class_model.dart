import 'package:spin_flow/data/models/model.dart';

class PositionClassModel extends Model {
  final int numberBikes;
  final int numberQueue;
  final int limitQueueBikes;
  final int
  positionBikeTeacher; // índice da coluna da bike da professora na fila 0
  final List<List<int>> position; // grade das bikes

  PositionClassModel({
    super.id,
    required super.name,
    required this.numberBikes,
    required this.numberQueue,
    required this.limitQueueBikes,
    required this.positionBikeTeacher,
    required this.position,
  });
}
