class Resultados {
  String acertividade;
  String nome;
  String nomeCientifico;
  String descricao;
  List<String> imagens;

  Resultados(
      {this.acertividade,
      this.nome,
      this.nomeCientifico,
      this.descricao,
      this.imagens});

  Resultados.fromJson(Map<String, dynamic> json) {
    acertividade = json['acertividade'];
    nome = json['nome'];
    nomeCientifico = json['nome_cientifico'];
    descricao = json['descricao'];
    imagens = json['imagens'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['acertividade'] = this.acertividade;
    data['nome'] = this.nome;
    data['nome_cientifico'] = this.nomeCientifico;
    data['descricao'] = this.descricao;
    data['imagens'] = this.imagens;
    return data;
  }
}