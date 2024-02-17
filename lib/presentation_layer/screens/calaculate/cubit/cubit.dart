import 'dart:convert';

import 'package:currencyapp/data_layer/models/currency.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class CaculateCubit extends Cubit<AppStates> {
  CaculateCubit() : super(CaculateInitial());
  static CaculateCubit get(context) => BlocProvider.of(context);
  // CurrencyModel? currencyModel;
  // CurrencyModel? currencyModel;
 
}
