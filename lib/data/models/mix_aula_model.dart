import 'package:spin_flow/data/models/model.dart';
import 'package:spin_flow/data/models/music_model.dart';

class PlaylistModel extends Model {
  final DateTime? startDate;
  final DateTime? endDate;
  final String? description;
  final List<MusicModel> musicList;
  final bool active;

  PlaylistModel({
    super.id,
    required super.name,
    this.startDate,
    this.endDate,
    this.description,
    required this.musicList,
    this.active = true,
  });
}
