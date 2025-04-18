// To parse this JSON data, do
//
//     final updateCartRequest = updateCartRequestFromJson(jsonString);

import 'dart:convert';

UpdateCartRequest updateCartRequestFromJson(String str) =>
    UpdateCartRequest.fromJson(json.decode(str));

String updateCartRequestToJson(UpdateCartRequest data) =>
    json.encode(data.toJson());

class UpdateCartRequest {
  UpdateQuantity? quantity;

  UpdateCartRequest({
    this.quantity,
  });

  factory UpdateCartRequest.fromJson(Map<String, dynamic> json) =>
      UpdateCartRequest(
        quantity: json["quantity"] == null
            ? null
            : UpdateQuantity.fromJson(json["quantity"]),
      );

  Map<String, dynamic> toJson() => {
        "quantity": quantity?.toJson(),
      };
}

class UpdateQuantity {
  double? quantityNumber;
  String? quantityUom;

  UpdateQuantity({
    this.quantityNumber,
    this.quantityUom,
  });

  factory UpdateQuantity.fromJson(Map<String, dynamic> json) => UpdateQuantity(
        quantityNumber: json["quantity_number"]?.toDouble(),
        quantityUom: json["quantity_uom"],
      );

  Map<String, dynamic> toJson() => {
        "quantity_number": quantityNumber,
        "quantity_uom": quantityUom,
      };
}
