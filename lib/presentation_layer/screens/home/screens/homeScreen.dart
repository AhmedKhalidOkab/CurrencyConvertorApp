import 'package:country_flags/country_flags.dart';
import 'package:currencyapp/presentation_layer/screens/Layout/appLayout.dart';
import 'package:currencyapp/presentation_layer/screens/home/cubit/cubit.dart';
import 'package:currencyapp/presentation_layer/screens/home/widgets/CurrentryTextWidgets.dart';
import 'package:currencyapp/presentation_layer/screens/home/widgets/ListOfcountries.dart';
import 'package:currencyapp/presentation_layer/screens/home/widgets/LisyOfCountry.dart';
import 'package:currencyapp/presentation_layer/screens/home/widgets/countryCode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../data_layer/models/currency.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 72, 18, 198),
      ),
      body: BlocProvider<AppCubit>(create: (BuildContext context) {
        return AppCubit()
          ..getCurrency(date: selectedDate.toString())
          ..getChart(date: selectedDate.toString());
      }, child: BlocBuilder<AppCubit, AppStates>(
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return state is! HomecubitSuccess
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        const Text(
                          'Chart of Currency  for the selected day:',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            DropdownButton<DateTime>(
                              value: selectedDate,
                              onChanged: (DateTime? newDate) {
                                setState(() {
                                  selectedDate = newDate!;
                                });
                              },
                              items: List<DateTime>.generate(
                                      7,
                                      (i) => DateTime(
                                              DateTime.now().year,
                                              DateTime.now().month,
                                              DateTime.now().day)
                                          .subtract(Duration(days: i)))
                                  .map<DropdownMenuItem<DateTime>>(
                                      (DateTime date) {
                                return DropdownMenuItem<DateTime>(
                                  value: date,
                                  child: Text(
                                      '${date.year}-${date.month}-${date.day}'),
                                );
                              }).toList(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              height: 200,
                              child: Center(
                                child: SfCartesianChart(
                                  primaryXAxis: CategoryAxis(),
                                  series: <LineSeries>[
                                    LineSeries<CurrencyData, String>(
                                      dataSource: <CurrencyData>[
                                        CurrencyData(
                                            'USA',
                                            selectedDate.day ==
                                                    DateTime.now().day
                                                ? 1
                                                : 1,
                                            selectedDate),
                                        CurrencyData(
                                            'EUR',
                                            selectedDate.day ==
                                                    DateTime.now().day
                                                ? 1.45
                                                : 1.4,
                                            selectedDate),
                                      ],
                                      xValueMapper:
                                          (CurrencyData currency, _) =>
                                              currency.code,
                                      yValueMapper:
                                          (CurrencyData currency, _) =>
                                              currency.value,
                                      name: 'Currency',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CurrentryTextWidgets(),
                        const LisyOfCountry(),
                        ListOfcountries(cubit: cubit),
                      ],
                    ),
                  ),
                );
        },
      )),
    );
  }
}
