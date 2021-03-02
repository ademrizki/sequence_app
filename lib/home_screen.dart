import 'package:flutter/material.dart';
import 'package:flutter_app_form/manager/home_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<HomeProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            SizedBox(height: 50),
            TextField(
              keyboardType: TextInputType.number,
              controller: _provider.numberFieldController,
              decoration: InputDecoration(
                labelText: 'Input Number Here',
              ),
            ),
            SizedBox(height: 50),
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 4.0,
              ),
              children: [
                RaisedButton(
                  child: Text('Sequence 1'),
                  onPressed: () => _provider.countSequenceOne(),
                ),
                RaisedButton(
                  child: Text('Sequence 2'),
                  onPressed: () => _provider.countSequenceTwo(),
                ),
                RaisedButton(
                  child: Text('Sequence 3'),
                  onPressed: () => _provider.countSequenceThree(),
                ),
                RaisedButton(
                  child: Text('Sequence 4'),
                  onPressed: () => _provider.countSequenceFour(),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text('Result: '),
            Consumer<HomeProvider>(
              builder: (context, _provider, _) => Wrap(
                children: List.generate(
                  _provider.sequence.length,
                  (index) => Text(_provider.sequence[index].toString() + ' '),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
