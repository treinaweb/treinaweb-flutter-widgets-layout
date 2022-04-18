import 'package:carrinho_de_compras/list.dart';
import 'package:flutter/material.dart';

class ColumnRowView extends StatelessWidget {
  const ColumnRowView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 200,
                    child: Text(
                        "Aqui na TreinaWeb, nos preocupamos muito com os nossos alunos. Por isso criamos um formulário para que você possa, facilmente, sugerir assuntos para novos cursos."),
                  ),
                  Container(
                    width: 200,
                    child: Text(
                        "Aqui na TreinaWeb, nos preocupamos muito com os nossos alunos. Por isso criamos um formulário para que você possa, facilmente, sugerir assuntos para novos cursos."),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    child: Text(
                        "Aqui na TreinaWeb, nos preocupamos muito com os nossos alunos. Por isso criamos um formulário para que você possa, facilmente, sugerir assuntos para novos cursos."),
                  ),
                  Container(
                    width: 100,
                    child: Text(
                        "Aqui na TreinaWeb, nos preocupamos muito com os nossos alunos. Por isso criamos um formulário para que você possa, facilmente, sugerir assuntos para novos cursos."),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 200,
            child: Text('treinaweb@treinaweb'),
          ),
        ],
      ),
    );
  }
}
