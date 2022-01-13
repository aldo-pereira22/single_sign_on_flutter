import '../models/filmes.dart';

class HomeController {
  late List<Filmes> listaFilmes;

  HomeController() {
    this.listaFilmes = [
      Filmes("Teste Titulo", "Teste Subtitulo", "Descrição!"),
      Filmes("Teste 2 titulo", "Teste 2 subtitulo", "Descricao")
    ];
  }
}
