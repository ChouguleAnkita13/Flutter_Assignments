/// Part of 'counter_bloc.dart' links this file to the main Bloc file.
part of 'counter_bloc.dart';

/// @immutable indicates that the class and its subclasses are immutable.
@immutable

/// A sealed class representing the base state for the counter.
sealed class CounterState {}

/// The initial state of the counter when the app starts or resets.
final class CounterInitial extends CounterState {}

/// An abstract class representing states that trigger specific actions.
abstract class CounterActionState extends CounterState {}

/// A state to trigger showing a snackbar action.
class CounterShowSnackbarActionState extends CounterActionState {}

/// A state representing the updated value of the counter after increment.
class CounterIncrementState extends CounterState {
  /// The updated counter value.
  final int val;

  /// Constructor to initialize the `val` parameter.
  CounterIncrementState({
    required this.val,
  });
}
