import 'package:flutter/cupertino.dart';

class mainFilterScreenModel {
  String? filterName;

  mainFilterScreenModel({this.filterName});
}

List<mainFilterScreenModel> cards = [

  mainFilterScreenModel(
      filterName: 'Reference'
      ),

  mainFilterScreenModel(
      filterName: 'Brand'
  ),

  mainFilterScreenModel(
      filterName: 'Year'
  ),

  mainFilterScreenModel(
      filterName: 'Model'
  ),

  mainFilterScreenModel(
      filterName: 'Nickname'
  ),

  mainFilterScreenModel(
      filterName: 'Size'
  ),

  mainFilterScreenModel(
      filterName: 'DialColor'
  ),

  mainFilterScreenModel(
      filterName: 'Bezel Metal'
  ),

  mainFilterScreenModel(
      filterName: 'Case Material'
  ),

  mainFilterScreenModel(
      filterName: 'Bracelet Material'
  ),
];