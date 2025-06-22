import 'package:spin_flow/data/models/model.dart';

class VideoLessonModel extends Model {
  final String? link;
  final bool active;

  VideoLessonModel({
    super.id,
    required super.name,
    this.link,
    this.active = true,
  });
}
