import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:molhooooo/src/config/routes/app_routes.dart';
import 'package:molhooooo/src/core/resources/app_icons.dart';
import 'package:molhooooo/src/core/resources/app_images.dart';

import '../../../../config/themes/app_colors.dart';

class AttendantPage extends StatefulWidget {
  const AttendantPage({Key? key}) : super(key: key);

  @override
  AttendantPageState createState() => AttendantPageState();
}

class AttendantPageState extends State<AttendantPage> {
  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();
  late String title;

  @override
  void initState() {
    title = "Tables";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SliderDrawer(
        appBar: SliderAppBar(
          appBarColor: Theme.of(context).primaryColor,
          appBarHeight: 90,
          drawerIconColor: Colors.white,
          trailing: IconButton(
            onPressed: () {},
            icon: ClipOval(
              child: Image.asset(
                AppImages.avatar,
                width: 35,
              ),
            ),
          ),
          // drawerIcon: IconButton(
          //   icon: SvgPicture.asset(
          //     AppIcons.barsSort,
          //     width: 25,
          //   ),
          //   onPressed: () {
          //     if (!_sliderDrawerKey.currentState!.isDrawerOpen) {
          //       _sliderDrawerKey.currentState!.openSlider();
          //     } else {
          //       _sliderDrawerKey.currentState!.closeSlider();
          //     }
          //   },
          // ),

          title: Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        key: _sliderDrawerKey,
        // sliderOpenSize: 179,

        slider: _SliderView(
          onItemClick: (id) {
            _sliderDrawerKey.currentState!.closeSlider();
            switch (id) {
              case 4:
                Get.toNamed(AppRoutes.report);
                break;
              default:
            }
          },
        ),
        child: _AuthorList(),
      ),
    );
  }
}

class _SliderView extends StatelessWidget {
  final Function(int)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: const EdgeInsets.only(top: 30),
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          SvgPicture.asset(
            AppIcons.logoBranco,
            width: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          // ListTile(
          //   leading: Container(
          //     child: SvgPicture.asset(
          //       AppIcons.opened,
          //       width: 50,
          //     ),
          //   ),
          //   title: const Text(
          //     "Bar Aberto",
          //     style: TextStyle(color: AppColors.whiteColor, fontSize: 22),
          //   ),
          // ),
          // const Text(
          //   'Nome do BAR',
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontWeight: FontWeight.bold,
          //     fontSize: 30,
          //   ),
          // ),
          SvgPicture.asset(
            AppIcons.opened,
            width: 70,
          ),
          const Center(
            child: Text(
              "Fechar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ...[
            Menu(1, AppIcons.settingsSliders, 'Configurações'),
            Menu(2, AppIcons.shop, 'Pedidos pendentes'),
            Menu(3, AppIcons.tablePicnic, 'Estado das Mesas'),
            Menu(4, AppIcons.chartHistogram, 'Statisticas'),
            Menu(5, AppIcons.signOutAlt, 'Terminar Sessão'),
          ]
              .map(
                (menu) => _SliderMenuItem(
                  id: menu.id,
                  title: menu.title,
                  iconData: menu.iconData,
                  onTap: onItemClick,
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}

class _SliderMenuItem extends StatelessWidget {
  final int id;
  final String title;
  final String iconData;
  final Function(int)? onTap;

  const _SliderMenuItem(
      {Key? key,
      required this.id,
      required this.title,
      required this.iconData,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      leading: SvgPicture.asset(
        iconData,
        width: 22,
        color: Colors.white,
      ),
      onTap: () => onTap?.call(id),
    );
  }
}

class _AuthorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Table> tablesList = [
      Table(
          id: 1,
          codeTable: 1,
          status: true,
          qtdPeople: 4,
          date: DateTime.now(),
          money: 0.0,
          qtdDrink: 0),
      Table(
          id: 2,
          codeTable: 2,
          status: false,
          qtdPeople: 0,
          date: DateTime.now(),
          money: 0.0,
          qtdDrink: 0),
      Table(
          id: 3,
          codeTable: 3,
          status: true,
          qtdPeople: 2,
          date: DateTime.now(),
          money: 25.50,
          qtdDrink: 3),
      Table(
          id: 4,
          codeTable: 4,
          status: true,
          qtdPeople: 6,
          date: DateTime.now(),
          money: 120.00,
          qtdDrink: 10),
      Table(
          id: 5,
          codeTable: 5,
          status: false,
          qtdPeople: 0,
          date: DateTime.now(),
          money: 0.0,
          qtdDrink: 0),
      Table(
          id: 6,
          codeTable: 6,
          status: true,
          qtdPeople: 1,
          date: DateTime.now(),
          money: 8.00,
          qtdDrink: 1),
    ];

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        padding: const EdgeInsets.all(10),
        itemCount: tablesList.length,
        itemBuilder: (context, index) {
          final table = tablesList[index];
          return InkWell(
            onTap: () {
              Get.toNamed(AppRoutes.tableDetail);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: DottedBorder(
                color: (table.status == false)
                    ? Colors.transparent
                    : AppColors.strokeColor,
                strokeWidth: 5,
                dashPattern: const [6, 3],
                child: (table.status == true)
                    ? Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: table.status
                              ? Theme.of(context).scaffoldBackgroundColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 1,
                              color: table.status
                                  ? Colors.transparent
                                  : Theme.of(context).colorScheme.shadow,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(AppIcons.users),
                                  Text(
                                    "0${index + 1}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 22,
                                    ),
                                  ),
                                ],
                              ),
                              FittedBox(
                                child: Text(
                                  '${table.qtdPeople} Pessoas',
                                  style: const TextStyle(
                                    fontFamily: 'BalsamiqSans_Blod',
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '10:20',
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        '20:20',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 1,
                                color: Theme.of(context).colorScheme.shadow),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox.shrink(),
                                      Text(
                                        "0${index + 1}",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 22,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              child: Center(
                                child: SvgPicture.asset(
                                  AppIcons.beerSvg,
                                  width: 30,
                                  color: Colors.black12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Table {
  final int id;
  final int codeTable;
  final bool status;
  final int qtdPeople;
  final DateTime date;
  final double money;
  final int qtdDrink;

  const Table(
      {required this.id,
      required this.codeTable,
      required this.status,
      required this.qtdPeople,
      required this.date,
      required this.money,
      required this.qtdDrink});
}

class Menu {
  final int id;
  final String iconData;
  final String title;

  Menu(this.id, this.iconData, this.title);
}
