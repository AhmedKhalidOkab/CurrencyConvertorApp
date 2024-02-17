part of 'cubit.dart';

@immutable
abstract class AppStates {}

class AppCubitInitial extends AppStates {}

class HomecubitLoading extends AppStates {}

class HomecubitSuccess extends AppStates {}

class HomecubitError extends AppStates {}
