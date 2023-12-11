import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoeData {
  final int id;
  final String name;
  final double price;
  final String image;
  final Color color;
  late bool favorite;
  late RxInt counter;
  final List<int> size;
  final String description;
  final List<Color> moreColor;
  ShoeData({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.color,
    required this.favorite,
    required this.counter,
    required this.size,
    required this.description,
    required this.moreColor,
  });
}

final List<ShoeData> listShoe = [
  ShoeData(
    id: 1,
    name: 'Wagner Shoew',
    price: 15,
    image: 'asset/image/shoe1.webp',
    color: Colors.black,
    counter: 1.obs,
    description:
        'Lightweight running shoes have come a long way as both racing flats and daily trainers. Once upon a time, to shave grams on a shoe and get it down to a competitive weight, brands had to make considerable compromises in comfort and stability—but that’s no longer the case. Thanks to lighter midsole foams and meshy upper materials, some of our favorite supportive and maximally cushioned shoes now sit well below 8 ounces on the scale.',
    favorite: false,
    moreColor: [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.orange,
    ],
    size: [
      38,
      40,
      45,
      50,
    ],
  ),
  ShoeData(
    id: 2,
    name: 'Wagner Shoew',
    price: 15,
    image: 'asset/image/shoe2.webp',
    color: Colors.orange,
    counter: 1.obs,
    description:
        'Lightweight running shoes have come a long way as both racing flats and daily trainers. Once upon a time, to shave grams on a shoe and get it down to a competitive weight, brands had to make considerable compromises in comfort and stability—but that’s no longer the case. Thanks to lighter midsole foams and meshy upper materials, some of our favorite supportive and maximally cushioned shoes now sit well below 8 ounces on the scale.',
    favorite: false,
    moreColor: [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.orange,
    ],
    size: [
      38,
      40,
      45,
      50,
    ],
  ),
  ShoeData(
    id: 3,
    name: 'Wagner Shoew',
    price: 15,
    image: 'asset/image/shoe3.webp',
    color: Colors.red,
    counter: 1.obs,
    description:
        'Lightweight running shoes have come a long way as both racing flats and daily trainers. Once upon a time, to shave grams on a shoe and get it down to a competitive weight, brands had to make considerable compromises in comfort and stability—but that’s no longer the case. Thanks to lighter midsole foams and meshy upper materials, some of our favorite supportive and maximally cushioned shoes now sit well below 8 ounces on the scale.',
    favorite: false,
    moreColor: [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.orange,
    ],
    size: [
      38,
      40,
      45,
      50,
    ],
  ),
  ShoeData(
    id: 4,
    name: 'Wagner Shoew',
    price: 15,
    image: 'asset/image/shoe5.webp',
    color: Colors.blue,
    counter: 1.obs,
    description:
        'Lightweight running shoes have come a long way as both racing flats and daily trainers. Once upon a time, to shave grams on a shoe and get it down to a competitive weight, brands had to make considerable compromises in comfort and stability—but that’s no longer the case. Thanks to lighter midsole foams and meshy upper materials, some of our favorite supportive and maximally cushioned shoes now sit well below 8 ounces on the scale.',
    favorite: false,
    moreColor: [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.orange,
    ],
    size: [
      38,
      40,
      45,
      50,
    ],
  ),
];
