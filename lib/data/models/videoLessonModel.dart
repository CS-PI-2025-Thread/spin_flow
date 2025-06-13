import 'package:spin_flow/dto/dto.dart';

class VideoLessonModel extends DTO {
  final String? videoLink;
  final bool active;

  VideoLessonModel({
    super.id,
    required super.nome,
    this.videoLink,
    this.active = true,
  });
}
