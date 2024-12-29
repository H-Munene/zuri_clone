import 'package:flutter/material.dart';
import 'package:zuri_health_clone/widgets/title.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TitleWidget(titleText: 'My Orders')],
    );
  }
}
