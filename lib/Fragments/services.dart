import 'package:flutter/material.dart';
import 'package:admin_login/navigationDrawer.dart';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart';

class ServicePage extends StatelessWidget {
  static const String routeName = '/servicepage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Services"),
      ),
      drawer: NavigationDrawer(),
      body:TableLayout()
    );
  }
}

class TableLayout extends StatefulWidget {
  @override
  _TableLayoutState createState() => _TableLayoutState();
}

class _TableLayoutState extends State<TableLayout> {
  List<List<dynamic>> data = [];
  loadAsset() async {
    final myData = await rootBundle.loadString("assets/res/stock1.csv");
    List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);
    print(csvTable);
    data = csvTable;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: () async {
            await loadAsset();
            //print(data);
          }),
      appBar: AppBar(
        title: Text("Table Layout and CSV"),
      ),

      body: SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: Table(
          columnWidths: {
            //0: FixedColumnWidth(2),
           // 1: FixedColumnWidth(4),
           2: FlexColumnWidth(2),
          },
          border: TableBorder.all(width: 1.0),
          children: data.map((item) {
            return TableRow(
                children: item.map((row) {
                  return Container(
                    height: 25,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        row.toString(),
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  );
                }).toList());
          }).toList(),
        ),
      ),
    );
  }
}
