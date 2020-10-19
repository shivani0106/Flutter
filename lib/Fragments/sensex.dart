import 'package:flutter/material.dart';
import 'package:admin_login/navigationDrawer.dart';
import 'package:search_widget/search_widget.dart';
import 'package:admin_login/routes/pageRoute.dart';

class Sensex extends StatefulWidget {
  static const String routeName = '/sensex.dart';
  SensexState createState() => SensexState();
}

class SensexState extends State<Sensex> {
  List<LeaderBoard> list = <LeaderBoard>[
    LeaderBoard("Auto"),
    LeaderBoard("Cement"),
    LeaderBoard("Real-estate"),
    LeaderBoard("Banking & Fin"),
    LeaderBoard("FMCG"),
    LeaderBoard("Media"),
    LeaderBoard("Meta"),
    LeaderBoard("Retail"),
    LeaderBoard("Oil & Petro"),
    LeaderBoard("Pharma"),
    LeaderBoard("Software"),
    LeaderBoard("Telecome"),
    LeaderBoard("Capital & Good"),
    LeaderBoard("Shipping & Logistics"),
    LeaderBoard("Sugar"),
    LeaderBoard("Hotel"),
  ];

  LeaderBoard _selectedItem;
  bool _show = true;

  bool a = true;
  bool b = true;
  String mText = "";

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Sensex"),
        ),
        drawer: NavigationDrawer(),
        body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 16,
                ),
                if (_show)
                  SearchWidget<LeaderBoard>(
                    dataList: list,
                    hideSearchBoxWhenItemSelected: false,
                    listContainerHeight: MediaQuery.of(context).size.height / 4,
                    queryBuilder: (query, list) {
                      return list
                          .where((item) => item.username
                              .toLowerCase()
                              .contains(query.toLowerCase()))
                          .toList();
                    },
                    popupListItemBuilder: (item) {
                      return PopupListItemWidget(item);
                    },
                    selectedItemBuilder: (selectedItem, deleteSelectedItem) {
                      return SelectedItemWidget(
                          selectedItem, deleteSelectedItem);
                    },
                    // widget customization
                    noItemsFoundWidget: NoItemsFound(),
                    textFieldBuilder: (controller, focusNode) {
                      return MyTextField(controller, focusNode);
                    },
                    onItemSelected: (item) {
                      setState(() {
                        _selectedItem = item;
                      });
                    },
                  ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "${_selectedItem != null ? _selectedItem.username : ""
                      "No item selected"}",
                ),

                //  FloatingActionButton(
                //    onPressed: () {
                //      setState(() {
                //        _show = !_show;
                //      });
                //    },
                //    child: Icon(Icons.swap_horizontal_circle),
                //  ),
                new Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: new Row(children: [
                      RaisedButton(
                        onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, PageRoutes.auto);
                          },
                        child: new Text("Auto"),
                      ),
                      //Text(
                      //  "Auto",
                      //  textScaleFactor: 1.5,
                      //  style: new TextStyle(color: Colors.white),
                      //),
                      new RaisedButton(
                        onPressed: _cement,
                        child: new Text("Cement"),
                      ),
                      b == false
                          ? new Container(
                              width: 100.0,
                              height: 100.0,
                              color: Colors.red,
                            )
                          : new Container(),

                      //Text(
                      //  "cement",
                      //  textScaleFactor: 1.5,
                      //  style: new TextStyle(color: Colors.white),

                      /*Text(
                                "Real-estate",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Retail",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                            ]),
                        TableRow(
                            decoration:
                                BoxDecoration(color: Colors.blueGrey[300]),
                            children: [
                              Text(
                                "Banking & Fin",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                              Text(
                                "FMCG",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Media",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Meta",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                            ]),
                        TableRow(
                            decoration:
                                BoxDecoration(color: Colors.blueGrey[300]),
                            children: [
                              Text(
                                "Oil & Petro",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Pharma",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Software",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Telecom",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                            ]),
                        TableRow(
                            decoration:
                                BoxDecoration(color: Colors.blueGrey[300]),
                            children: [
                              Text(
                                "Capital Goods",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Shipping & Logistics",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Sugar",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Hotel",
                                textScaleFactor: 1.5,
                                style: new TextStyle(color: Colors.white),
                              ),*/
                    ]),
                  ),
                ),
              ],
            )));
  }

 void _auto() {
    setState(() {
      if (a) {
        a = false;
        //mText = "Auto";
      } else {
        a = true;
        //mText = "Press to hide";
      }
    });
  }

  void _cement() {
    setState(() {
      if (b) {
        b = false;
        //mText = "Cement";
      } else {
        b = true;
        //mText = "Press to hide";
      }
    });
  }
}

class LeaderBoard {
  LeaderBoard(this.username);

  final String username;
}

class SelectedItemWidget extends StatelessWidget {
  const SelectedItemWidget(this.selectedItem, this.deleteSelectedItem);

  final LeaderBoard selectedItem;
  final VoidCallback deleteSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 4,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 8,
                bottom: 8,
              ),
              child: Text(
                selectedItem.username,
                style: const TextStyle(fontSize: 14),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.delete_outline, size: 22),
            color: Colors.grey[700],
            onPressed: deleteSelectedItem,
          ),
        ],
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField(this.controller, this.focusNode);

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x4437474F),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          suffixIcon: Icon(Icons.search),
          border: InputBorder.none,
          hintText: "Search here...",
          contentPadding: const EdgeInsets.only(
            left: 16,
            right: 20,
            top: 14,
            bottom: 14,
          ),
        ),
      ),
    );
  }
}

class NoItemsFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          Icons.folder_open,
          size: 24,
          color: Colors.grey[900].withOpacity(0.7),
        ),
        const SizedBox(width: 10),
        Text(
          "No Items Found",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[900].withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}

class PopupListItemWidget extends StatelessWidget {
  const PopupListItemWidget(this.item);

  final LeaderBoard item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Text(
        item.username,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

