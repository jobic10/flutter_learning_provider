import 'package:flutter/material.dart';

class SliverPage extends StatelessWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 320,
            title: Text('Outside flexible space'),
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Hello Slivers'),
              collapseMode: CollapseMode.parallax,
              background: Container(color: Colors.red),
            ),
            leading: Icon(Icons.home),
            actions: [
              Icon(Icons.add_location_alt),
              Icon(Icons.add_location_alt),
              Icon(Icons.add_location_alt),
              Icon(Icons.add_location_alt),
            ],
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              mainAxisExtent: 200,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.red[100 * (index % 9)],
                  child: Text('Grid Item : $index'),
                );
              },
              childCount: 100,
            ),
          ),
          // SliverList(delegate: delegate),
        ],
      ),
    );
  }
}
