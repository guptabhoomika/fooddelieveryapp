import '../fooditem.dart';
import 'package:flutter/material.dart';

class CartProvider
{
  List<FoodItem> fooditems = [];
  List<FoodItem> addtolist(FoodItem foodItem)
  {
      fooditems.add(foodItem);
      return fooditems;
  }
    List<FoodItem> aremovefromlist(FoodItem foodItem)
  {
      fooditems.remove(foodItem);
      return fooditems;
  }
}