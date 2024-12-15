/// Importing dart:async for asynchronous programming features like Future and Stream.
library;

import 'dart:async';

/// Importing the Bloc library for state management.
import 'package:bloc/bloc.dart';

/// Importing meta package to use annotations like @immutable.
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

/// Including the counter_event.dart file as part of this file.
part 'counter_event.dart';

/// Including the counter_state.dart file as part of this file.
part 'counter_state.dart';

/// A Bloc class for managing counter states and events.
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  /// Constructor initializes the CounterBloc with the CounterInitial state.
  CounterBloc() : super(CounterInitial()) {
    /// Registering the event handler for CounterIncrementevent.
    on<CounterIncrementevent>(counterIncrementevent);

    /// Registering the event handler for CounterShowSnackbarEvent.
    on<CounterShowSnackbarEvent>(counterShowSnackbarEvent);
  }

  /// A variable to hold the current value of the counter.
  int value = 0;

  /// Event handler for CounterIncrementevent.
  /// It increments the counter value and emits the updated state.
  FutureOr<void> counterIncrementevent(
      CounterIncrementevent event, Emitter<CounterState> emit) {
    /// Increment the counter value by 1.
    value = value + 1;

    /// Emit the CounterIncrementState with the updated counter value.
    emit(CounterIncrementState(val: value));
  }

  /// Event handler for CounterShowSnackbarEvent.
  /// It emits a state to trigger showing a snackbar.
  FutureOr<void> counterShowSnackbarEvent(
      CounterShowSnackbarEvent event, Emitter<CounterState> emit) {
    /// Emit the CounterShowSnackbarActionState to indicate an action.
    emit(CounterShowSnackbarActionState());
  }
}
