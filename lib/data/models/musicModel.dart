import 'package:spin_flow/dto/dto.dart';

class MusicModel extends DTO {
  final String? name;
  final String? letter;
  final double? duration;
  final String? artist;

  MusicModel({
    super.id,
    required super.nome,
    this.name,
    this.letter,
    this.duration,
    this.artist,
  });
}
