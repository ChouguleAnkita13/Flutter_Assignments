/// part of: Connects this file to the counter_bloc.dart file.
/// Part directive specifies that this file is part of another library or file.
/// In this case, it belongs to the 'counter_bloc.dart' file.
part of 'counter_bloc.dart';

/// @immutable annotation ensures that instances of this class cannot be modified after creation.
/// It is used for immutability, which is important in state management to maintain predictable states.
@immutable

/// `sealed` keyword in Dart is used to restrict subclassing to the same library.
/// This means all subclasses of `CounterEvent` must be defined in this file.
///
/// WE CAN USE ABSTRACT CLASS INSTEAD OF @immutable and sealed KEYWORD LIKE
/// anstract class CounterEvent
sealed class CounterEvent {}

/// A class representing the event of incrementing the counter.
/// It extends `CounterEvent` to indicate it is a specific type of event handled by the Bloc.
class CounterIncrementevent extends CounterEvent {}

/// A class representing the event of showing a snackbar.
/// It also extends `CounterEvent`, making it a type of event handled by the Bloc.
class CounterShowSnackbarEvent extends CounterEvent {}
