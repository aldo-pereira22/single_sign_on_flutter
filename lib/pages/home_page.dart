import 'package:flutter/material.dart';
import 'package:single_sign_on/comtroller/home_controller.dart';
import '../comtroller/home_controller.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filmes"),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext contexto, int i) {
            final tabela = controller.listaFilmes;
            return ListTile(
              leading: Icon(Icons.movie_creation_outlined),
              title: Text(tabela[i].titulo),
              trailing: Text(
                tabela[i].descricao,
              ),
            );
          },
          separatorBuilder: (_, __) => Divider(),
          padding: EdgeInsets.all(16),
          itemCount: controller.listaFilmes.length),
    );
  }
}
