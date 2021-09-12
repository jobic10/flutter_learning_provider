import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';

class SliverPage extends StatelessWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  body: CustomScrollView(
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
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                  color: Colors.blue[100 * (index % 9)],
                  child: Text('Grid ::: $index'));
            }),
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
              childCount: 20,
            ),
          ),
          SliverFillViewport(
            viewportFraction: 0.1,
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.yellow[100 * (index % 9)],
                child: Text('Fill View Item : $index'),
              );
            }, childCount: 10),
          ),
          SliverFixedExtentList(
            delegate: SliverChildListDelegate(
              [
                Container(color: Colors.green, child: Text('1')),
                Container(color: Colors.brown, child: Text('2')),
                Container(color: Colors.indigo, child: Text('3')),
                Container(color: Colors.blue, child: Text('4')),
              ],
            ),
            itemExtent: 20,
          ),
          // SliverList(delegate: delegate),
        ],
    );*/

      body: CustomScrollView(
        slivers: [SliverPersistentHeader(delegate: MyDelegate())],
      ),
    );
  }
}

class MyDelegate implements SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => throw UnimplementedError();

  @override
  // TODO: implement minExtent
  double get minExtent => throw UnimplementedError();

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    throw UnimplementedError();
  }

  @override
  // TODO: implement showOnScreenConfiguration
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      throw UnimplementedError();

  @override
  // TODO: implement snapConfiguration
  FloatingHeaderSnapConfiguration? get snapConfiguration =>
      throw UnimplementedError();

  @override
  // TODO: implement stretchConfiguration
  OverScrollHeaderStretchConfiguration? get stretchConfiguration =>
      throw UnimplementedError();

  @override
  // TODO: implement vsync
  TickerProvider? get vsync => throw UnimplementedError();
}
