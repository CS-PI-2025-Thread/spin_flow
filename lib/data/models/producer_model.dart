import 'package:spin_flow/data/models/model.dart';

class ProducerModel extends Model {
  final String? description;
  final String? contactName;
  final String? contactEmail;
  final String? contactPhone;
  final bool active;

  ProducerModel({
    super.id,
    required super.name,
    this.description,
    this.contactName,
    this.contactEmail,
    this.contactPhone,
    this.active = true,
  });
}
