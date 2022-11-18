import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  //Catalog field
  CatalogModel _catalog;

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
  num get totalPrice =>
      items.fold(0, (total, currrent) => total + current.price);

  //Add items
  void add(Item item) {
    _itemIDs.add(item.id);
  }

  
  //Remove items
  void remove(Item item) {
    _itemIDs.remove(item.id);
  }
}
