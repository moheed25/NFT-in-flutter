import 'package:flutter/material.dart';


import '../componnets/nft_card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      imagePath: 'assets/pic3.png',
    );
    ;
  }
}