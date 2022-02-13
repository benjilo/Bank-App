import 'package:flutter/material.dart';

class TransactionModel {
  String name;
  String avatar;
  String currentBalance;
  String month;
  String changePercentageIndicator;
  String changePercentage;
  Color color;

  TransactionModel({
    this.name,
    this.avatar,
    this.currentBalance,
    this.month,
    this.changePercentageIndicator,
    this.changePercentage,
    this.color,
  });
}

List<TransactionModel> myTransactions = [
  TransactionModel(
    avatar: "assets/icons/avatar1.png",
    currentBalance: "\$8324",
    changePercentage: "0.21%",
    changePercentageIndicator: "up",
    month: "Jan",
    name: "Ama Serwa",
    color: Colors.green[100],
  ),
  TransactionModel(
    avatar: "assets/icons/avatar2.png",
    currentBalance: "\$4324",
    changePercentage: "0.11%",
    changePercentageIndicator: "down",
    month: "Jan",
    name: "Kwame Ray",
    color: Colors.orange[100],
  ),
  TransactionModel(
    avatar: "assets/icons/avatar3.png",
    currentBalance: "\$9324",
    changePercentage: "0.43%",
    changePercentageIndicator: "up",
    month: "Jan",
    name: "Grace Serwa",
    color: Colors.purple[100],
  ),
  TransactionModel(
    avatar: "assets/icons/avatar4.png",
    currentBalance: "\$1324",
    changePercentage: "0.02%",
    changePercentageIndicator: "down",
    month: "Jan",
    name: "Kwame Se",
    color: Colors.green[100],
  ),
];
