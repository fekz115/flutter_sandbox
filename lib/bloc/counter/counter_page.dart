import 'package:NewSandbox/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';
import 'counter_event.dart';
import 'counter_widget.dart';
import 'counter_dispatcher.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) =>
          CounterBloc([
            IncrementCounterDispatcher()
          ]),
      child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: Text(SandboxLocalizations.of(context).counterPage),),
          body: CounterWidget(),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: buildButtons(
              BlocProvider.of<CounterBloc>(context),
              {
                Icon(Icons.add): IncrementCounterEvent(1),
                Icon(Icons.remove): IncrementCounterEvent(-1)
              },
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> buildButtons(CounterBloc bloc, Map<Icon, CounterEvent> map) {
    List<Widget> ans = new List();
    int tag = 0;
    map.forEach((k, v) => {
          ans.add(
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: FloatingActionButton(
                child: k,
                onPressed: () => bloc.add(v),
                tooltip: v.toString(),
                heroTag: 'heroTag' + (tag++).toString(),
              ),
            ),
          ),
        });
    return ans;
  }
}
