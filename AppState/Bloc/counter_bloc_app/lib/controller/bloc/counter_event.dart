part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterIncrementevent extends CounterEvent {}

class CounterShowSnackbarEvent extends CounterEvent {}
