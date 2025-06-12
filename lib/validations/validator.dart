import 'package:spin_flow/core/error.dart';

class ValidatorUrl {
  static String? validarUrl(String? value) {
    if (value == null || value.isEmpty) return null; // campo opcional

    // RegExp simples para URL básica (http, https)
    final regexUrl = RegExp(
      r'^(https?:\/\/)?' // http:// ou https:// (opcional)
      r'([\w\-]+\.)+[\w\-]+' // domínio (ex: www.exemplo.com)
      r'(\:[0-9]+)?' // porta (opcional)
      r"(\/[\w\-._~:/?#[\]@!$&'()*+,;=]*)?$", // caminho e query (opcional)
      caseSensitive: false,
    );

    if (!regexUrl.hasMatch(value)) {
      return Error.invalidUrl;
    }
    return null;
  }
}