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
            icon: SvgPicture.asset(AppIcons.calculator, color: Colors.white),
          ),
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
        height: 65,
        // padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
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
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: FittedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontFamily: AppStrings.fontFamily,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          children: [
                            // TextSpan(
                            //   text: "Total: ",
                            // ),
                            TextSpan(
                              text: "\$ 150.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: AppColors.primaryColor,
                height: 85,
                width: 100,
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check,
                        color: AppColors.whiteColor,
                      ),
                      Text(
                        "Pago",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                borderRadius: BorderRadius.circular(8),
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
                      contentPadding: const EdgeInsets.all(0),
                      leading: ClipOval(
                        child: Container(
                          color: AppColors.primaryColor,
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            AppIcons.tablePicnic,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      title: const Text(
                        "Mesa nº",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: const Text(
                        "19",
                        style: TextStyle(
                          fontSize: 20,
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
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: const Text(
                        "4",
                        style: TextStyle(
                          fontSize: 20,
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
