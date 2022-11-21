import 'package:flutter_catalog/models/catalog.dart';

//Catalog field
late CatalogModel _catalog;

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal() {}
  factory CartModel() => cartModel;

  //Collection of IDs of each item
  final List<int> _itemIDs = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get items in the cart
  List<Item> get items => _itemIDs.map((id) => _catalog.getByID(id)).toList();

  //Get total price
  num get totalPrice {
    var current;
    return items.fold(0, (total, current) => total + current.price);
  }

  //Add items
  void add(Item item) {
    _itemIDs.add(item.id);
  }

  //Remove items
  void remove(Item item) {
    _itemIDs.remove(item.id);
  }
}
