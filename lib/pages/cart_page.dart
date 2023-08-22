import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restarunt_app/components/button.dart';
import 'package:restarunt_app/models/food.dart';
import 'package:restarunt_app/models/shop.dart';
import 'package:restarunt_app/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove from cart
  void removeFromCart(Food food,BuildContext context) {
    //get access to shop
    final shop=context.read<Shop>();
    
    //removeFromCart
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text('My Cart'),
          elevation: 0,
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: [
            //customer cart

            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  //get food from cart
                  final Food food = value.cart[index];

                  //get food name
                  final String foodName = food.name;

                  //get food price
                  final String foodPrice = food.price;

                  //return list tile
                  return Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        foodPrice,
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.grey[800],
                        ),
                        onPressed:()=> removeFromCart(food,context),
                      ),
                    ),
                  );
                },
              ),
            ),
            //pay now
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyButton(
                text: "pay now",
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
