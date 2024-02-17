import 'dart:convert';

import 'package:currencyapp/data_layer/models/currency.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppCubitInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  // CurrencyModel? currencyModel;
  CurrencyModel? currencyModel;
  void getCurrency({required String date}) async {
    emit(HomecubitLoading());
    var dio = Dio();
    var response = await dio.request(
      'https://api.currencyapi.com/v2/latest?apikey=cur_live_kYhCGiBp20BWZE3tlumsXwfh6XmjTi0laZSsL0Gs',
      options: Options(
        method: 'GET',
      ),
    );

    if (response.statusCode == 200) {
      currencyModel = CurrencyModel.fromJson(response.data);
      // currencyModel = CurrencyModel.fromJson(response.data);
      print(currencyModel!.data);
      emit(HomecubitSuccess());
      print(json.encode(response.data));
    } else {
      emit(HomecubitError());
      print(response.statusMessage);
    }
  }

  // Get Chart for 2 currencies

  void getChart({required String date}) async {
    emit(HomecubitLoading());
    var dio = Dio();
    var response = await dio.request(
      'https://api.currencyapi.com/v3/historical?apikey=cur_live_kYhCGiBp20BWZE3tlumsXwfh6XmjTi0laZSsL0Gs&currencies=EUR%2CUSD&date=2024-02-8',
      options: Options(
        method: 'GET',
      ),
    );

    if (response.statusCode == 200) {
      emit(HomecubitSuccess());
      print(json.encode(response.data) + 'Chart');
    } else {
      emit(HomecubitError());
      print(response.statusMessage);
    }
  }
}

class CurrencyModel {
  final Map<String, dynamic> data;

  CurrencyModel({required this.data});

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
      data: json['data'] as Map<String, dynamic>,
    );
  }
}
