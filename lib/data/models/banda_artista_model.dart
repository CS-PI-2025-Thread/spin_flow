import 'package:spin_flow/data/models/model.dart';

class ArtistBandModel extends Model {
  final String? description;
  final String? link;
  final String? imageUrl;
  final bool active;

  ArtistBandModel({
    super.id,
    required super.name,
    this.description,
    this.link,
    this.imageUrl,
    required this.active,
  });
}
