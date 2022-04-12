import 'package:carrinho_de_compras/list.dart';
import 'package:carrinho_de_compras/widgets/container.dart';
import 'package:flutter/material.dart';

class CarrinhoDeCompras extends StatelessWidget {
  const CarrinhoDeCompras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (ctx, orientation) {
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
              SizedBox(
                height: orientation == Orientation.portrait ? 400 : 150,
                child: GridView.count(
                  crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    card(
                      img: 'assets/images/Frame.png',
                      nome: 'Cereja',
                      valor: '9,99',
                    ),
                    card(
                      img: 'assets/images/Frame1.png',
                      nome: 'Pera',
                      valor: '1,99',
                    ),
                    card(
                      img: 'assets/images/Frame2.png',
                      nome: 'Maçã Verde',
                      valor: '2,99',
                    ),
                    card(
                      img: 'assets/images/Frame3.png',
                      nome: 'Framboesa',
                      valor: '7,99',
                    ),
                    card(
                      img: 'assets/images/Frame4.png',
                      nome: 'Kiwi',
                      valor: '6,99',
                    ),
                    card(
                      img: 'assets/images/Frame5.png',
                      nome: 'Melancia',
                      valor: '5,99',
                    ),
                    card(
                      img: 'assets/images/Frame6.png',
                      nome: 'Uva',
                      valor: '3,99',
                    ),
                    card(
                      img: 'assets/images/Frame7.png',
                      nome: 'Laranja',
                      valor: '2,99',
                    ),
                    card(
                      img: 'assets/images/Frame8.png',
                      nome: 'Morango',
                      valor: '9,99',
                    )
                  ],
                ),
              ),
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
    });
  }
}

Widget card(
    {required String img, required String nome, required String valor}) {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(img),
        Text(
          nome,
          style: const TextStyle(color: Colors.blue),
        ),
        Text(
          'R\$$valor',
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )
      ],
    ),
  );
}
