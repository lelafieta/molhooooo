import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/themes/app_colors.dart';
import '../../../core/resources/app_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        backgroundColor: AppColors.primaryColor,
        title: SvgPicture.asset(
          AppIcons.logoBranco,
          width: 55,
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  horizontalTitleGap: 0,
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    "Hey! Nierere",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  subtitle: Text(
                    "Tenha um bom dia!",
                    style: TextStyle(color: Colors.white.withOpacity(0.6)),
                  ),
                  trailing: IconButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.white.withOpacity(.3),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.settings,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor:
                          MaterialStateProperty.all(AppColors.primaryColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppIcons.doorOpen,
                          color: AppColors.primaryColor,
                          width: 18,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Abrir o bar",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  EasyDateTimeLine(
                    initialDate: DateTime.now(),
                    locale: "pt_BR",
                    timeLineProps:
                        const EasyTimeLineProps(backgroundColor: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const TitleWidget(
                    title: "Eventos",
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListView.separated(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey.withOpacity(.3),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                contentPadding: const EdgeInsets.all(8),
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color:
                                        AppColors.primaryColor.withOpacity(.1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      AppIcons.beer,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ),
                                title: Text("José da Silva"),
                                subtitle: Text("Convidou você para um evento"),
                                trailing: Container(
                                  width: 40,
                                  height: 40,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color:
                                        AppColors.primaryColor.withOpacity(.1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      AppIcons.fileEdit,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Colors.black12,
                                height: 1,
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 10),
                                  itemBuilder: (context, index) {
                                    final marca = marcas[index];
                                    return Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor
                                            .withOpacity(.1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              marca.imagem,
                                              width: 30,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              marca.nome,
                                              style: const TextStyle(
                                                color: AppColors.primaryColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      width: 10,
                                    );
                                  },
                                  itemCount: marcas.length,
                                ),
                              ),
                              const Divider(
                                color: Colors.black12,
                                height: 1,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 5,
                                ),
                                child: Wrap(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor
                                            .withOpacity(.1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SvgPicture.asset(
                                          AppIcons.beerSvgColor),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor
                                            .withOpacity(.1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SvgPicture.asset(
                                          AppIcons.beerSvgColor),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor
                                            .withOpacity(.1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SvgPicture.asset(AppIcons.beerSvg),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      // padding: const EdgeInsets.all(8),
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        // color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: const Text(
                                          "[2|6]",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                      itemCount: 7,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String title;
  final VoidCallback? callbackAction;

  const TitleWidget({
    super.key,
    required this.title,
    this.callbackAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
          ),
          const Text(
            "Ver todos",
            style: TextStyle(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class MarcaModel {
  final String id;
  final String nome;
  final String imagem;

  MarcaModel({
    required this.id,
    required this.nome,
    required this.imagem,
  });

  // Método para converter um JSON em uma instância de MarcaModel
  factory MarcaModel.fromJson(Map<String, dynamic> json) {
    return MarcaModel(
      id: json['id'] as String,
      nome: json['nome'] as String,
      imagem: json['imagem'] as String,
    );
  }

  // Método para converter uma instância de MarcaModel em JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'imagem': imagem,
    };
  }
}
