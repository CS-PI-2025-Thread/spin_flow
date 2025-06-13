import 'package:spin_flow/dto/dto.dart';

class ProducerModel extends DTO {
  final String? description;
  final String? contractName;
  final String? contactName;
  final String? contactPhone;
  final bool active;

  ProducerModel({
    super.id,
    required super.nome,
    this.description,
    this.contractName,
    this.contactName,
    this.contactPhone,
    this.active = true,
  });
}