import 'package:flutter/material.dart';
import 'package:banking_online/constants/color_constants.dart';

class CardModel {
  String cardHolderName;
  String cardNumber;
  String expDate;
  String cvv;
  Color cardColor;

  CardModel({
    this.cardHolderName,
    this.cardNumber,
    this.cardColor,
    this.cvv,
    this.expDate,
  });
}

List<CardModel> myCards = [
  CardModel(
      cardHolderName: "Kofi Kinata",
      cardNumber: "**** **** *** 1234",
      cardColor: kbBackgroundColor,
      cvv: "**4",
      expDate: "12/23"),
  CardModel(
    cardHolderName: "Ama Serwa",
    cardNumber: "**** **** *** 2341",
    cardColor: kSecondaryColor,
    cvv: "**2",
    expDate: "12/24",
  ),
];
