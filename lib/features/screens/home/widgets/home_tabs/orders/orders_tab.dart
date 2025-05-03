import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/screens/home/widgets/home_tabs/orders/sub_tabs/cart.dart';
import 'package:foodi/features/screens/home/widgets/home_tabs/orders/sub_tabs/completed.dart';
import 'package:foodi/features/screens/home/widgets/home_tabs/orders/sub_tabs/ongoing.dart';

class OrdersTab extends StatefulWidget {
  const OrdersTab({super.key});

  @override
  State<OrdersTab> createState() => _OrdersTabState();
}

class _OrdersTabState extends State<OrdersTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Orders"),
        centerTitle: true,
        bottom: TabBar(
          indicatorColor: Color(secondaryColor),
          unselectedLabelColor: Colors.black,
          labelColor: Color(secondaryColor),
          controller: _tabController,
          tabs: const [
            Tab(text: 'Cart'),
            Tab(text: 'Ongoing'),
            Tab(text: 'Completed'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [CartTab(), OngoingOrders(), COmpletedOrders()],
      ),
    );
  }
}
