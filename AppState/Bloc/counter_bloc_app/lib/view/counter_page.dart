/// Importing the developer package to use the log function.
library;

import 'dart:developer';

/// Importing the CounterBloc and related files from the controller.
import 'package:counter_bloc_app/controller/bloc/counter_bloc.dart';

/// Importing Flutter material design widgets.
import 'package:flutter/material.dart';

/// Importing flutter_bloc to use BlocConsumer and other Bloc utilities.
import 'package:flutter_bloc/flutter_bloc.dart';

/// Defining the CounterPage widget as a StatefulWidget.
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

/// The state for the CounterPage widget.
class _CounterPageState extends State<CounterPage> {
  /// Creating an instance of CounterBloc.
  CounterBloc counterBloc = CounterBloc();

  @override
  void initState() {
    /// Adding an initial increment event to the CounterBloc.
    counterBloc.add(CounterIncrementevent());
    super.initState();
  }

  /// Variable to store the counter value (used as a placeholder here).
  int val = 0;

  @override
  Widget build(BuildContext context) {
    log("In build");

    /// Logging to track the build lifecycle.
    return Scaffold(
        appBar: AppBar(
          /// Setting the title of the AppBar.
          title: const Text("Counter Page"),
        ),
        floatingActionButton: FloatingActionButton(

            /// Floating action button to trigger counter increment.
            child: const Icon(Icons.add),
            onPressed: () {
              /// Adding CounterIncrementevent to the CounterBloc when pressed.
              counterBloc.add(CounterIncrementevent());
            }),

        /// Using BlocConsumer to manage both state-building and side effects.
        body: BlocConsumer<CounterBloc, CounterState>(
            bloc: counterBloc,

            /// Linking the BlocConsumer to CounterBloc.

            /// Condition to filter when the listener should be triggered.
            listenWhen: (previous, current) => current is CounterActionState,

            /// Condition to filter when the builder should update the UI.
            buildWhen: (previous, current) => current is! CounterActionState,

            /// Listener for side effects like showing a snackbar.
            listener: (context, state) {
              log("In Listener");

              /// Logging to track the listener lifecycle.
              if (state is CounterShowSnackbarActionState) {
                /// Displaying a snackbar when CounterShowSnackbarActionState is emitted.
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Snackbar")));
              }
            },

            /// Builder to update the UI based on the current state.
            builder: (context, state) {
              log("In builder");

              /// Logging to track the builder lifecycle.

              /// Handling different state types using a switch-case.
              switch (state.runtimeType) {
                /// When the state is CounterIncrementState, display the counter value.
                case const (CounterIncrementState):
                  final successState = state as CounterIncrementState;
                  return Center(
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          /// Displaying the counter value.
                          Text(
                            successState.val.toString(),
                            style: const TextStyle(fontSize: 60),
                          ),

                          /// Button to trigger the Snackbar event.
                          ElevatedButton(
                              onPressed: () {
                                counterBloc.add(CounterShowSnackbarEvent());
                              },
                              child: const Text('Snackbar'))
                        ],
                      ),
                    ),
                  );

                /// Default case for states not handled explicitly.
                default:
                  return const Center(
                    child: Text("Not Found"),
                  );
              }
            })

        ///Bloc Builder

        // BlocBuilder<CounterBloc, CounterState>(
        //   bloc: counterBloc,
        //   builder: (context, state) {
        //     switch (state.runtimeType) {
        //       case CounterIncrementState:
        //         final successState = state as CounterIncrementState;
        // return Center(
        //   child: Container(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text(
        //           successState.val.toString(),
        //           style: const TextStyle(fontSize: 60),
        //         )
        //       ],
        //     ),
        //   ),
        // );

        //       default:
        //         return const Center(
        //           child: Text("Not Found"),
        //         );
        //     }
        //   },
        // ),

        ///Bloc Listener

        // BlocListener<CounterBloc, CounterState>(
        //   bloc: counterBloc,
        //   listener: (context, state) {
        // if (state is CounterShowSnackbarActionState) {
        //   ScaffoldMessenger.of(context)
        //       .showSnackBar(SnackBar(content: Text("Snackbar")));
        //     } else if (state is CounterIncrementActionState) {
        //       setState(() {
        //         val = val + 1;
        //       });
        //     }
        //   },
        //   child: Center(
        //     child: Container(
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Text(
        //             val.toString(),
        //             style: const TextStyle(fontSize: 60),
        //           ),
        // const SizedBox(height: 20),
        // ElevatedButton(
        //     onPressed: () {
        //       counterBloc.add(CounterIncrementevent());
        //     },
        //     child: Text('Add')),
        // ElevatedButton(
        //     onPressed: () {
        //       counterBloc.add(CounterShowSnackbarEvent());
        //     },
        //     child: Text('Snackbar'))
        //         ],
        //       ),
        //     ),
        //   ),
        // )
        );
  }
}
