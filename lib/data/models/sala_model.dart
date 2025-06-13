import 'package:spin_flow/dto/dto.dart';

class PositionClassDTO extends DTO {
  int numberBikes;
  int numberQueue;
  int limitQueueBikes;
  int positionBikeTeacher; // índice da coluna da bike da professora na fila 0
  List<List<int>> position; // grade das bikes

  PositionClassDTO({
    required super.id,
    required super.nome,
    required this.numberBikes,
    required this.numberQueue,
    required this.limitQueueBikes,
    required this.positionBikeTeacher,
    required this.position,
  });
}
