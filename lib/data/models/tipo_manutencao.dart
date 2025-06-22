import 'package:spin_flow/data/models/model.dart';

class MainteinanceType extends Model {
  final String description;
  final bool active;

  MainteinanceType({
    super.id,
    required super.name,
    required this.description,
    required this.active,
  });
}
