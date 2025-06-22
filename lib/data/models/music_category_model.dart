import 'package:spin_flow/data/models/model.dart';

class MusicCategory extends Model {
  final String? description;
  final bool active;

  MusicCategory({
    super.id,
    required super.name,
    this.description,
    required this.active,
  });
}
