
import 'package:front_end/core/utils/typedef.dart';
import 'package:front_end/features/products/domain/entities/product.dart';

class ProductModel extends Product {
  const ProductModel({
    required super.id,
    required super.title,
    required super.description,
    required super.price,
    required super.brand,
  });

  

  factory ProductModel.fromJson(DataMap map) {
    return ProductModel(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      price: map['price'] as int,
      brand: map['brand'] as String,
     
    );
  }





  

 


ProductModel  copyWith({
    int? id,
    String? title,
    String? description,
    int? price,
    String? brand,
   
  }) {
    return ProductModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      brand: brand ?? this.brand ,
      
    );
  }

  
}
