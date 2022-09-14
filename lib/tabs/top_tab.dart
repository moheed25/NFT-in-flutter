import 'package:flutter/material.dart';

import '../componnets/nft_card.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      imagePath: 'assets/pic2.png',
    );
    ;
  }
}