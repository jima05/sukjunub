import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/features/shop/screens/order/widgets/orders_list.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: SukjunubAppBar(
        title:
            Text('My Orders', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(SukjunubSizes.defaultSpace),

        // Orders
        child: SukjunubOrderListItems(),
      ),
    );
  }
}
