
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  void testConnection() async {
    try {
      var response = await Dio().get('http://www.google.com');
      print(response);
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    Widget ret;
    ret = Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FixedColumnWidth(64),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: const <TableRow>[
        TableRow(
          children: <Widget>[
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Center(
                child: Text("boring"),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Center(
                child: Text("boring"),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Center(
                child: Text("boring"),
              ),
            ),
          ],
        ),

      ],
    );

    return ret;
  }
  
}
