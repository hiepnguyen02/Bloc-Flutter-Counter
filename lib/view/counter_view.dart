import 'package:bloc_flutter_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Container(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(
              '$state',
              style: textTheme.headline2,
            );
          },
        ),
      ),
      floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
                key: const Key('counterView_increment_floatingButton'),
                child: const Icon(Icons.add),
                onPressed: () => context.read<CounterCubit>().increment()),
            const SizedBox(height: 12),
            FloatingActionButton(
                key: const Key('counterView_decrement_floatingButton'),
                child: const Icon(Icons.remove),
                onPressed: () => context.read<CounterCubit>().decrement())
          ]),
    );
  }
}
