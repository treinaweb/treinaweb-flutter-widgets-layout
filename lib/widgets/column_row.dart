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
          SizedBox(
            child: Column(
              children: [
                Row(
                  children: const [
                    SizedBox(
                      width: 200,
                      child: Text(
                          'loren yopon loren yopon loren yopon loren yopon loren yopon loren yoponloren yopon vloren yoponloren yopon'),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                          ' loren yopon loren yoponloren yopon vloren yoponloren yopon loren yopon loren yoponloren yopon vloren yoponloren yopon'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 300,
                      child: Text(
                          'loren yopon loren yopon loren yopon loren yopon loren yopon loren yoponloren yopon vloren yoponloren yopon on loren yopon loren yopon loren yopon loren yoponloren yopon v on loren yopon loren yopon loren yopon loren yoponloren yopon v'),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                          ' loren yopon loren yoponloren yopon vloren yoponloren yopon loren yopon loren yoponloren yopon vloren yoponloren yopon'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Treinawe'),
                Text('@'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
