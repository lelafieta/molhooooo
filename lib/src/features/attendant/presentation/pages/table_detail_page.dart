import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:molhooooo/src/core/resources/app_icons.dart';
import 'package:molhooooo/src/core/strings/app_strings.dart';

import '../../../../config/themes/app_colors.dart';
import '../../../home/presentation/home_page.dart';

class TableDetailPage extends StatefulWidget {
  const TableDetailPage({super.key});

  @override
  State<TableDetailPage> createState() => _TableDetailPageState();
}

class _TableDetailPageState extends State<TableDetailPage> {
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

  List<Map<String, String>> days = [
    {'value': 'mon', 'title': 'Monday'},
    {'value': 'tue', 'title': 'Tuesday'},
    {'value': 'wed', 'title': 'Wednesday'},
    {'value': 'thu', 'title': 'Thursday'},
    {'value': 'fri', 'title': 'Friday'},
    {'value': 'sat', 'title': 'Saturday'},
    {'value': 'sun', 'title': 'Sunday'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detalhes da Mesa",
          style: TextStyle(color: AppColors.whiteColor),
        ),
        foregroundColor: Colors.white,
        toolbarHeight: 70,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 150,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              spreadRadius: 0,
              color: AppColors.strokeColor,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  color: Colors.black,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: "Quantidade: ",
                  ),
                  TextSpan(
                    text: "10",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  color: Colors.black,
                  fontSize: 30,
                ),
                children: [
                  TextSpan(
                    text: "Total: ",
                  ),
                  TextSpan(
                    text: "\$ 150.00",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {}, child: Text("CONFIRMAR O CONSUMO")),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 5,
                    color: Theme.of(context).colorScheme.shadow,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.all(0),
                      leading: ClipOval(
                        child: Container(
                          color: AppColors.primaryColor,
                          padding: EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            AppIcons.tablePicnic,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      title: const Text(
                        "Mesa num.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        "19",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      horizontalTitleGap: 10,
                      contentPadding: const EdgeInsets.all(0),
                      leading: ClipOval(
                        child: Container(
                          color: AppColors.primaryColor,
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            AppIcons.users,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      title: const Text(
                        "Consumidores",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        "4",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            // Text(
            //   "Pedidos",
            //   style: Theme.of(context)
            //       .textTheme
            //       .titleLarge!
            //       .copyWith(color: AppColors.blackColor),
            // ),
            // const Divider(
            //   height: 35,
            //   color: AppColors.strokeColor,
            // ),
            const TextField(
              decoration: InputDecoration(hintText: "Telefone, nome"),
            ),

            Expanded(
              child: Scrollbar(
                thumbVisibility: false,
                thickness: 3.0,
                radius: const Radius.circular(5.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.separated(
                        itemCount: marcas.length,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final marca = marcas[index];

                          return ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(marca.imagem),
                                ),
                              ),
                            ),
                            title: Text(
                              marca.nome,
                              style:
                                  const TextStyle(color: AppColors.blackColor),
                            ),
                            subtitle: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const [
                                  TextSpan(text: 'Quantidade: '),
                                  TextSpan(
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    text: '5',
                                  )
                                ],
                              ),
                            ),
                            trailing: const SizedBox(
                              width: 100,
                              child: FittedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$ 300,000",
                                      style: TextStyle(
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      size: 30,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              // Ação ao clicar no item
                              print('Clicou no item ${index + 1}');
                            },
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider(
                            height: 20,
                            color: AppColors.strokeColor,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
