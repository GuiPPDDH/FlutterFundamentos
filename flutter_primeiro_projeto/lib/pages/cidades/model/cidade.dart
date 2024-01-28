import 'dart:convert';

class Cidade {
  String cidade;
  String estado;

  Cidade({required this.cidade, required this.estado});

  Map<String, dynamic> toMap() {
    return {
      'cidade': cidade,
      'estado': estado,
    };
  }

  String toJson() {
    return jsonEncode(toMap());
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      cidade: map['cidade'] ?? '',
      estado: map['estado'] ?? '',
    );
  }
  
  factory Cidade.fromJson(String json) {
    return Cidade.fromMap(jsonDecode(json));
  }
}
