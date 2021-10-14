class Movel {
  late String titulo;
  late int preco;
  late String foto;
  late String descricao;

  Movel(this.titulo, this.preco, this.foto, this.descricao);

  Movel.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    preco = json['preco'];
    foto = json['foto'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = this.titulo;
    data['preco'] = this.preco;
    data['foto'] = this.foto;
    data['descricao'] = this.descricao;
    return data;
  }
}
