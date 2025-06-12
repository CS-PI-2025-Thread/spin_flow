// data/models/aluno_model.dart
class AlunoModel {
  final int id;
  final String nome;
  final String email;
  final DateTime dataNascimento;
  final String genero;
  final String telefoneContato;
  final String perfilInstagram;
  final String perfilFacebook;
  final String perfilTiktok;
  final bool ativo;

  AlunoModel({
    required this.id,
    required this.nome,
    required this.email,
    required this.dataNascimento,
    required this.genero,
    required this.telefoneContato,
    required this.perfilInstagram,
    required this.perfilFacebook,
    required this.perfilTiktok,
    required this.ativo,
  });
}