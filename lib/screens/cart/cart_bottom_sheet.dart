import 'package:emmercewithprovider/app/app_color.dart';
import 'package:emmercewithprovider/provider/cart_provider.dart';
import 'package:emmercewithprovider/screens/snack_bar_msg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sslcommerz/model/SSLCSdkType.dart';
import 'package:flutter_sslcommerz/model/SSLCommerzInitialization.dart';
import 'package:flutter_sslcommerz/model/SSLCurrencyType.dart';
import 'package:flutter_sslcommerz/sslcommerz.dart';
import 'package:uuid/uuid.dart';

class CartBottomSheet extends StatefulWidget {
  const CartBottomSheet({super.key});

  @override
  State<CartBottomSheet> createState() => _CartBottomSheetState();
}

class _CartBottomSheetState extends State<CartBottomSheet> {
  Future<void> startPayment(CartProvider cartProvider) async {
    String trancId = Uuid().v4();
    Sslcommerz sslcommerz = Sslcommerz(
      initializer: SSLCommerzInitialization(
        //   ipn_url: "www.ipnurl.com",
        multi_card_name: "visa,master,bkash",
        currency: SSLCurrencyType.BDT,
        product_category: "Food",
        sdkType: SSLCSdkType.TESTBOX,
        store_id: "adnan69e93282e870a",
        store_passwd: "adnan69e93282e870a@ssl",
        total_amount: cartProvider.totalPrice,
        tran_id: trancId,
      ),
    );
    var result = await sslcommerz.payNow();
    if (result.status == "VALID") {
      if (!mounted) return;
      showSnackBarMsg(context, 'Payment SuccessFull');
    }
    if (result.status == "FAILED") {
      if (!mounted) return;
      showSnackBarMsg(context, 'Payment UnsuccessFull', true);
    }
    if (result.status == "FAILED") {
      if (!mounted) return;
      showSnackBarMsg(context, 'Payment UnsuccessFull', true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final CartProvider cartProvider =CartProvider.of(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(28),
          topLeft: Radius.circular(28),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 55,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.kContentColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 8,
                        ),
                        hintText: 'Enter Discount code',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Apply',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.kPrimaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SubTotal',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black45,
                  ),
                ),

                Text(
                  '\$${cartProvider.totalPrice}',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Divider(),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                  '\$${cartProvider.totalPrice}',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.kPrimaryColor,
                foregroundColor: Colors.white,
                fixedSize: Size.fromWidth(double.maxFinite),
              ),
              onPressed: () {
                startPayment(cartProvider);
              },
              child: Text(
                'Checkout',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
