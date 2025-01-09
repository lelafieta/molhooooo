import 'package:flutter/material.dart';

import '../../../../config/themes/app_colors.dart';
import '../../../home/presentation/home_page.dart';

class DrinkPage extends StatefulWidget {
  const DrinkPage({super.key});

  @override
  State<DrinkPage> createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinkPage> {
  final List<MarcaModel> marcas = [
    MarcaModel(id: "2", nome: "Blue", imagem: "assets/images/blue.png"),
    MarcaModel(id: "3", nome: "Booster", imagem: "assets/images/booster.png"),
    MarcaModel(
        id: "4", nome: "Coca Cola", imagem: "assets/images/coca-cola.png"),
    MarcaModel(id: "5", nome: "Cuca", imagem: "assets/images/cuca.png"),
    MarcaModel(id: "6", nome: "Eka", imagem: "assets/images/eka.png"),
    MarcaModel(id: "7", nome: "Fanta", imagem: "assets/images/fanta.png"),
    MarcaModel(id: "8", nome: "Nocal", imagem: "assets/images/nocal.png"),
    MarcaModel(id: "9", nome: "Tigra", imagem: "assets/images/tigra.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bebidas",
          style: TextStyle(color: AppColors.whiteColor),
        ),
        foregroundColor: Colors.white,
        toolbarHeight: 70,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    "Novo",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 55,
        ),
        itemCount: marcas.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              horizontalTitleGap: 10,
              contentPadding: EdgeInsets.all(0),
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(marcas[index].imagem),
                  ),
                ),
              ),
              title: Text(
                marcas[index].nome,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        },
      ),
    );
  }
}
