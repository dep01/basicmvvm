
import 'dart:convert';

List<ItemModel> itemModelFromMap(String str) => List<ItemModel>.from(json.decode(str).map((x) => ItemModel.fromMap(x)));

String itemModelToMap(List<ItemModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class ItemModel {
    ItemModel({
        this.id,
        this.productName,
        this.productPrice,
        this.productDetail,
    });

    final int id;
    final String productName;
    final int productPrice;
    final String productDetail;

    ItemModel copyWith({
        int id,
        String productName,
        int productPrice,
        String productDetail,
    }) => 
        ItemModel(
            id: id ?? this.id,
            productName: productName ?? this.productName,
            productPrice: productPrice ?? this.productPrice,
            productDetail: productDetail ?? this.productDetail,
        );

    factory ItemModel.fromMap(Map<String, dynamic> json) => ItemModel(
        id: json["id"],
        productName: json["product_name"],
        productPrice: json["product_price"],
        productDetail: json["product_detail"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "product_name": productName,
        "product_price": productPrice,
        "product_detail": productDetail,
    };
}
