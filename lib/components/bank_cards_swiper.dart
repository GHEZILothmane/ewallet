import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:ewallet_psytech/components/bank_account_card.dart';
import 'package:card_swiper/card_swiper.dart';

class BankCardsSwiper extends StatelessWidget {
  const BankCardsSwiper({
    Key? key,
    required this.cards,
  }) : super(key: key);

  final List<Map> cards;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(8),
      child: Swiper(
        itemCount: cards.length,
        itemBuilder: (context, index) => BankAccountCard(
          cardType: cards[index]['type'],
          cardNumber: '**** **** **** 2321',
          color: cards[index]['color'],
          assetName: cards[index]['image'],
        ),
        itemWidth: size.width * 0.9,
        layout: SwiperLayout.STACK,
        loop: true,
        onIndexChanged: (i) => print(i),
      ),
    );
  }
}
