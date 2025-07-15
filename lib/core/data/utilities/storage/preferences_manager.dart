import 'dart:convert';

import 'package:pmd_solutions/core/data/models/product/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesManager {
  PreferencesManager._();
  static late SharedPreferences _pref;

  static Future<void> initPreferences() async {
    _pref = await SharedPreferences.getInstance();
  }

  /// keys
  static const _products = 'products';
  static const _count = 'count';

  static List<ProductModel> get getProducts {
    String? productsJson = _pref.getString(_products);
    if (productsJson != null) {
      List<dynamic> decodedList = jsonDecode(productsJson);
      return decodedList.map((item) => ProductModel.fromJson(item)).toList();
    } else {
      return [];
    }
  }

  static int? get getCount {
    return _pref.getInt(_count);
  }

  static set setCount(int? count) {
    if (count != null) {
      _pref.setInt(_count, count);
    } else {
      return;
    }
  }

  static set products(List<ProductModel> products) {
    if (products.isEmpty) {
      _pref.remove(_products);
      return;
    }
    List<Map<String, dynamic>> productsList =
        products.map((product) => product.toJson()).toList();
    _pref.setString(_products, jsonEncode(productsList));
  }

  static void addProduct(ProductModel product) {
    List<ProductModel> currentProducts = getProducts;
    currentProducts.add(product);
    products = currentProducts;
  }

  static void removeProduct(int index) {
    List<ProductModel> currentProducts = getProducts;
    if (index >= 0 && index < currentProducts.length) {
      currentProducts.removeAt(index);
    } else {
      throw RangeError("Index $index is out of bounds for the products list.");
    }
    products = currentProducts;
  }

  static void clearProducts() {
    _pref.remove(_products);
  }
}
