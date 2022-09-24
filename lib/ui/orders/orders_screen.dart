import 'package:flutter/material.dart';
import '../shared/app_drawer.dart';
import 'order_item_card.dart';
import 'order_manager.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = '/orders';
  const OrderScreen({super.key});

  Widget build(BuildContext context) {
    print('building orders');
    final ordersManager = OrdersManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: ordersManager.orderCount,
        itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
      ),
    );
  }
}
