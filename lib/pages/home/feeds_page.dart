import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../my_cards.dart';

class FeedsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).colorScheme.primary,
        child: ListView(
          children: [
            MyCards.buildShadowCard(context),
            MyCards.buildShadowImageCard(context)
          ],
        ));
  }
}
