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
            expandedHeight: 120,
            title: Text('Outside flexible space'),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Hello Slivers'),
              collapseMode: CollapseMode.pin,
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
              maxCrossAxisExtent: 200,
              mainAxisExtent: 200,
              childAspectRatio: 8,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
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
