import 'package:flutter/material.dart';

class SliverPage extends StatelessWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 120,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Hello Slivers'),
          ),
        ),
        // SliverList(delegate: delegate),
      ],
    );
  }
}
