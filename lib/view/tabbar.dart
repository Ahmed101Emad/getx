import 'package:flutter/material.dart';
import 'package:getx/view/home.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: const TabBarView(children: [Home(), Home(), Home()]),
          appBar: AppBar(
            leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(150),
                child: Column(
                  children: [
                    Text(""),
                    SearchBar(
                      hintText: "search for coffee",
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TabBar(tabs: [Text(""), Text(""), Text("")])
                  ],
                )),
          ),
        ));
  }
}
