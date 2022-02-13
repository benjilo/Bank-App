import 'package:banking_online/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:banking_online/constants/app_textstyle.dart';

import 'package:banking_online/data/card_data.dart';

import 'package:banking_online/widgets/my_card.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Cards",
          style: TextStyle(
            fontFamily: "Poppins",
            color: kPrimaryColor,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 16.0,
            child: ClipRRect(
              child: Image.asset("assets/icons/avatar4.png"),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
              size: 27,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: myCards.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20);
                  },
                  itemBuilder: (context, index) {
                    return MyCard(
                      card: myCards[index],
                    );
                  }),
            ),
            CircleAvatar(
              radius: 30,
              child: Icon(Icons.add, size: 30),
            ),
            Text(
              "Add Card",
              style: ApptextStyle.LISTTILE_TITLE,
            )
          ],
        ),
      ),
    );
  }
}
