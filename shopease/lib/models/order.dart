import 'package:cloud_firestore/cloud_firestore.dart';

class AppOrder {
  final String id;
  final String userId;
  final List<OrderItem> items;
  final double totalAmount;
  final String status;
  final DateTime createdAt;
  final ShippingAddress shippingAddress;
  final PaymentInfo paymentInfo;

  AppOrder({
    required this.id,
    required this.userId,
    required this.items,
    required this.totalAmount,
    required this.status,
    required this.createdAt,
    required this.shippingAddress,
    required this.paymentInfo,
  });

  factory AppOrder.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return AppOrder(
      id: doc.id,
      userId: data['userId'],
      items: (data['items'] as List).map((item) => OrderItem.fromMap(item)).toList(),
      totalAmount: data['totalAmount'].toDouble(),
      status: data['status'],
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      shippingAddress: ShippingAddress.fromMap(data['shippingAddress']),
      paymentInfo: PaymentInfo.fromMap(data['paymentInfo']),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'userId': userId,
      'items': items.map((item) => item.toMap()).toList(),
      'totalAmount': totalAmount,
      'status': status,
      'createdAt': FieldValue.serverTimestamp(),
      'shippingAddress': shippingAddress.toMap(),
      'paymentInfo': paymentInfo.toMap(),
    };
  }
}

class OrderItem {
  final String productId;
  final String productName;
  final double price;
  final int quantity;
  final String imageUrl;

  OrderItem({
    required this.productId,
    required this.productName,
    required this.price,
    required this.quantity,
    required this.imageUrl,
  });

  factory OrderItem.fromMap(Map<String, dynamic> map) {
    return OrderItem(
      productId: map['productId'],
      productName: map['productName'],
      price: map['price'].toDouble(),
      quantity: map['quantity'],
      imageUrl: map['imageUrl'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'productName': productName,
      'price': price,
      'quantity': quantity,
      'imageUrl': imageUrl,
    };
  }
}

class ShippingAddress {
  final String fullName;
  final String street;
  final String city;
  final String postalCode;
  final String country;

  ShippingAddress({
    required this.fullName,
    required this.street,
    required this.city,
    required this.postalCode,
    required this.country,
  });

  factory ShippingAddress.fromMap(Map<String, dynamic> map) {
    return ShippingAddress(
      fullName: map['fullName'],
      street: map['street'],
      city: map['city'],
      postalCode: map['postalCode'],
      country: map['country'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'street': street,
      'city': city,
      'postalCode': postalCode,
      'country': country,
    };
  }
}

class PaymentInfo {
  final String method;
  final String? cardLastFour;
  final String? paymentId;

  PaymentInfo({
    required this.method,
    this.cardLastFour,
    this.paymentId,
  });

  factory PaymentInfo.fromMap(Map<String, dynamic> map) {
    return PaymentInfo(
      method: map['method'],
      cardLastFour: map['cardLastFour'],
      paymentId: map['paymentId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'method': method,
      'cardLastFour': cardLastFour,
      'paymentId': paymentId,
    };
  }
}