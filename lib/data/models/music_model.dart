import 'package:spin_flow/data/models/model.dart';

class MusicModel extends Model {
  final String? letter;
  final double? duration;
  final String? artist;

  MusicModel({
    super.id,
    required super.name,
    this.letter,
    this.duration,
    this.artist,
  });
}
