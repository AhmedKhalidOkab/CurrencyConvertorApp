import 'package:currencyapp/presentation_layer/screens/home/cubit/cubit.dart';
import 'package:currencyapp/presentation_layer/screens/home/widgets/countryCode.dart';
import 'package:currencyapp/presentation_layer/screens/home/widgets/customCardCurrency.dart';
import 'package:flutter/material.dart';

class ListOfcountries extends StatelessWidget {
  const ListOfcountries({
    super.key,
    required this.cubit,
  });

  final AppCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemCount: cubit.currencyModel!.data.length,
        itemBuilder: (context, index) {
          return customCardCurrency(
            code: cubit.currencyModel!.data.keys.toList()[index],
            value: cubit.currencyModel!
                .data['${cubit.currencyModel!.data.keys.toList()[index]}']
                .toStringAsFixed(2),
            countryCodes: countryCodes[index],
          );
        },
      ),
    );
  }
}
