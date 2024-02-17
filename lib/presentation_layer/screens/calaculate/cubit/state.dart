part of 'cubit.dart';

@immutable
abstract class AppStates {}

class CaculateInitial extends AppStates {}

class CaculatecubitLoading extends AppStates {}

class CaculatecubitSuccess extends AppStates {}

class CaculatecubitError extends AppStates {}
