// ignore: camel_case_types
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class customCardCurrency extends StatelessWidget {
  const customCardCurrency({
    Key? key,
    required this.code,
    required this.value,
    required this.countryCodes,
  }) : super(key: key);
  final String code;
  final String value;
  final String countryCodes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: CountryFlag.fromCountryCode(
                  countryCodes,
                  height: 48,
                  width: 62,
                  borderRadius: 8,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                code,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                value,
                style: TextStyle(
                  color: Color.fromARGB(255, 72, 18, 198),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
