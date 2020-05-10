import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mydrawer.dart';

class ProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProviderPageModel())],
      child: ProviderPageChild(),
    );
  }
}

class ProviderPageModel with ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    print(counter);
    notifyListeners();
  }
}

class ProviderPageChild extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Provider Widget Technique'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Provider Widget Technique',
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
                '${context.watch<ProviderPageModel>().counter}',
                style: Theme.of(context).textTheme.headline4),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ProviderPageModel>().increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
