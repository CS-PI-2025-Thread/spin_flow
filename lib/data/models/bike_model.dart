import 'package:spin_flow/data/models/model.dart';
import 'package:spin_flow/data/models/producer_model.dart';

class BikeModel extends Model {
  final String? serialNumber;
  final ProducerModel producer;
  final DateTime aquisitionDate;
  final DateTime registerDate;
  final bool active;

  BikeModel({
    super.id,
    required super.name,
    required this.serialNumber,
    required this.producer,
    required this.aquisitionDate,
    required this.registerDate,
    required this.active,
  });
}
