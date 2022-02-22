class OrderOfflineModel {
  final int? id;
  String product;
  String quantity;


  OrderOfflineModel(
      { this.id,
        required this.product,
        required this.quantity,

      });

  OrderOfflineModel.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        product = res["product"],
        quantity = res["quantity"];

  Map<String, Object?> toMap() {
    return {'id':id,'product': product, 'quantity': quantity};
  }


}
