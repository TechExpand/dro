import 'package:dro/counter/count_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: BlocBuilder<CountCubit, CountState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(state.number.toString(), style: TextStyle(fontSize: 60),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      TextButton.icon(
                          onPressed: (){
                        BlocProvider.of<CountCubit>(context).increament();
                      },
                          icon: Icon(Icons.add),
                          label: Text('Increase')),
                      TextButton.icon(
                          onPressed: (){
                        BlocProvider.of<CountCubit>(context).decreament();
                      },
                          icon: Icon(Icons.remove),
                          label: Text('Decrease')),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
