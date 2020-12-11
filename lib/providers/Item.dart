import 'dart:convert';

import 'package:basicmvvm/backendDummies/item.dart';
import 'package:basicmvvm/models/itemModel.dart';

class ItemProvider {
  Future<List<ItemModel>> getAllItems() async {
    var response = ItemsDummies.items;
    return itemModelFromMap(jsonEncode(response));
  }
}
