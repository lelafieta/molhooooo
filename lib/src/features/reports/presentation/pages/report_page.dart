import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/app_colors.dart';
import '../../../../core/resources/app_icons.dart';
import '../../../home/presentation/home_page.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
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
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Relatório",
          style: TextStyle(color: AppColors.whiteColor),
        ),
        foregroundColor: Colors.white,
        toolbarHeight: 70,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.fileExport,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          EasyDateTimeLine(
            initialDate: DateTime.now(),
            locale: "pt_BR",
            timeLineProps:
                const EasyTimeLineProps(backgroundColor: Colors.white),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Text(
                    //   "Coached Program",
                    //   style:
                    //       TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    // ),
                    // const SizedBox(height: 16),
                    // AspectRatio(
                    //   aspectRatio: 1.7,
                    //   child: BarChart(
                    //     BarChartData(
                    //       alignment: BarChartAlignment.spaceAround,
                    //       barGroups: [
                    //         makeGroupData(0, 3, 5, 2),
                    //         makeGroupData(1, 4, 6, 3),
                    //         makeGroupData(2, 5, 3, 4),
                    //         makeGroupData(3, 6, 4, 5),
                    //         makeGroupData(4, 3, 5, 6),
                    //         makeGroupData(5, 4, 6, 3),
                    //         makeGroupData(6, 5, 3, 4),
                    //       ],
                    //       titlesData: FlTitlesData(
                    //         show: true,
                    //         bottomTitles: AxisTitles(
                    //           sideTitles: SideTitles(
                    //             showTitles: true,
                    //             getTitlesWidget: (double value, title) {
                    //               switch (value.toInt()) {
                    //                 case 0:
                    //                   return Text('S');
                    //                 case 1:
                    //                   return Text('M');
                    //                 case 2:
                    //                   return Text('T');
                    //                 case 3:
                    //                   return Text('W');
                    //                 case 4:
                    //                   return Text('T');
                    //                 case 5:
                    //                   return Text('F');
                    //                 case 6:
                    //                   return Text('S');
                    //                 default:
                    //                   return Text('');
                    //               }
                    //             },
                    //           ),
                    //         ),
                    //       ),
                    //       borderData: FlBorderData(
                    //         show: false,
                    //       ),
                    //       barTouchData: BarTouchData(enabled: false),
                    //     ),
                    //   ),
                    // ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                // ClipOval(
                                //   child: Container(
                                //     width: 10,
                                //     height: 10,
                                //     color: Colors.red,
                                //   ),
                                // ),
                                // SizedBox(
                                //   width: 5,
                                // ),
                                Text("Total de vendas do dia")
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "48.000",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                ClipOval(
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    color: Colors.red,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("Kwanzas")
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        Container(
                          width: 55,
                          child: DashedCircularProgressBar.aspectRatio(
                            aspectRatio: 1, // width ÷ height
                            valueNotifier: _valueNotifier,
                            progress: 80,
                            maxProgress: 100,
                            corners: StrokeCap.butt,
                            foregroundColor: AppColors.primaryColor,
                            backgroundColor: const Color(0xffeeeeee),
                            foregroundStrokeWidth: 3,
                            backgroundStrokeWidth: 3,
                            animation: true,
                            child: Center(
                              child: ValueListenableBuilder(
                                valueListenable: _valueNotifier,
                                builder: (_, double value, __) => Text(
                                  '${value.toInt()}%',
                                  style: const TextStyle(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final marca = marcas[index];

                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(marca.imagem),
                              ),
                            ),
                          ),
                          title: const Text(
                            "40.000kz",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(marca.nome),
                          trailing: SizedBox(
                            width: 100,
                            // color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  AppIcons.table,
                                  color: AppColors.strokeColor,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("0/Grades")
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                      itemCount: marcas.length,
                    )
                    // GridView.builder(
                    //   physics: const NeverScrollableScrollPhysics(),
                    //   shrinkWrap: true,
                    //   gridDelegate:
                    //       const SliverGridDelegateWithFixedCrossAxisCount(
                    //     crossAxisCount: 2,
                    //     crossAxisSpacing: 5,
                    //     mainAxisSpacing: 5,
                    //     mainAxisExtent: 125,
                    //   ),
                    //   itemCount: marcas.length,
                    //   itemBuilder: (context, index) {
                    //     final marca = marcas[index];
                    //     return Card(
                    //       elevation: 1,
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(10),
                    //       ),
                    //       child: Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.start,
                    //           children: [
                    //             Row(
                    //               children: [
                    //                 Padding(
                    //                   padding: const EdgeInsets.all(8.0),
                    //                   child: Container(
                    //                     width: 60,
                    //                     height: 40,
                    //                     padding: EdgeInsets.all(5),
                    //                     decoration: BoxDecoration(
                    //                       color: AppColors.primaryColor
                    //                           .withOpacity(.3),
                    //                       borderRadius:
                    //                           BorderRadius.circular(5),
                    //                     ),
                    //                     child: Image.asset(
                    //                       marca.imagem,
                    //                       fit: BoxFit.contain,
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 Text(
                    //                   marca.nome,
                    //                   style: const TextStyle(
                    //                     color: Colors.black,
                    //                   ),
                    //                 )
                    //               ],
                    //             ),
                    //             const SizedBox(height: 0),
                    //             FittedBox(
                    //               alignment: Alignment.centerLeft,
                    //               child: Row(
                    //                 crossAxisAlignment:
                    //                     CrossAxisAlignment.start,
                    //                 mainAxisAlignment: MainAxisAlignment.start,
                    //                 children: [
                    //                   RichText(
                    //                     text: TextSpan(
                    //                       style: DefaultTextStyle.of(context)
                    //                           .style,
                    //                       children: const [
                    //                         TextSpan(
                    //                           text: "78.00",
                    //                           style: TextStyle(
                    //                             fontSize: 25,
                    //                             color: Colors.black,
                    //                             fontWeight: FontWeight.w600,
                    //                           ),
                    //                         ),
                    //                         TextSpan(text: "KZ"),
                    //                       ],
                    //                     ),
                    //                   )
                    //                 ],
                    //               ),
                    //             ),
                    //             const SizedBox(height: 8),
                    //           ],
                    //         ),
                    //       ),
                    //     );
                    //   },
                    // ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2, double y3) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
          color: Colors.orange,
          width: 8,
          toY: y1,
        ),
        BarChartRodData(
          toY: y2,
          color: Colors.blue,
          width: 8,
        ),
        BarChartRodData(
          toY: y3,
          color: Colors.green,
          width: 8,
        ),
      ],
    );
  }
}
