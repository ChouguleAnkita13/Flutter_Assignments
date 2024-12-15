import 'dart:developer';

import 'package:counter_bloc_app/controller/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  CounterBloc counterBloc = CounterBloc();

  @override
  void initState() {
    counterBloc.add(CounterIncrementevent());
    super.initState();
  }

  int val = 0;

  @override
  Widget build(BuildContext context) {
    log("In build");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Page"),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              counterBloc.add(CounterIncrementevent());
            }),
        body: BlocConsumer<CounterBloc, CounterState>(
            bloc: counterBloc,
            listenWhen: (previous, current) => current is CounterActionState,
            buildWhen: (previous, current) => current is! CounterActionState,
            listener: (context, state) {
              log("In Listener");
              if (state is CounterShowSnackbarActionState) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Snackbar")));
              }
            },
            builder: (context, state) {
              log("In builder");
              switch (state.runtimeType) {
                case const (CounterIncrementState):
                  final successState = state as CounterIncrementState;
                  return Center(
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            successState.val.toString(),
                            style: const TextStyle(fontSize: 60),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                counterBloc.add(CounterIncrementevent());

                                counterBloc.add(CounterShowSnackbarEvent());
                              },
                              child: const Text('Show'))
                        ],
                      ),
                    ),
                  );

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
