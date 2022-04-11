import 'package:carrinho_de_compras/list.dart';
import 'package:carrinho_de_compras/widgets/container.dart';
import 'package:flutter/material.dart';

class CarrinhoDeCompras extends StatelessWidget {
  const CarrinhoDeCompras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Carrinho de compras',
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: Container(
        color: Colors.green[400],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: const [
                Text(
                  'CARRINHO DA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'TREINAWEB',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(),
            SizedBox(
              width: 250,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'COMPRAR',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
