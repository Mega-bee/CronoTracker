import 'package:cronotracker/Auctions/Model/auctions_model.dart';

class WatchDetails {

  String? image, brand, modelName, reference, nickname, size, dialColor, caseMaterial,priceRange,RetailPrice,SellingRate;
  double? pricetracking,price;
  bool status;
  DateTime date;

  WatchDetails({
    this.image,
    this.brand,
    this.modelName,
    this.reference,
    this.nickname,
    this.size,
    this.dialColor,
    this.caseMaterial,
    required this.date,
    required this.status,
    this.price,
    this.pricetracking,
    this.priceRange,
    this.RetailPrice,
    this.SellingRate
  });


}
List <AuctionsModel> details =[
  AuctionsModel(price: 20, status: true,date: "1/7/2009"),
  AuctionsModel(price: 20, status: false,date: "1/7/2010"),
  AuctionsModel(price: 20, status: true,date: "1/7/2009"),
  AuctionsModel(price: 20, status: true,date: "1/7/2009"),
  AuctionsModel(price: 20, status: true,date: "1/7/2009"),
  AuctionsModel(price: 20, status: false,date: "1/7/2010"),
  AuctionsModel(price: 20, status: false,date: "1/7/2010"),
  AuctionsModel(price: 20, status: false,date: "1/7/2010"),
  AuctionsModel(price: 20, status: false,date: "1/7/2010"),
  AuctionsModel(price: 20, status: false,date: "1/7/2010"),
  AuctionsModel(price: 20, status: false,date: "1/7/2010"),
];
class chartData {
  String date;
  num price;
  chartData({required this.date,required this.price});
}
List<chartData> MonthChartData =[
chartData(date: "Jan", price: 11),
  chartData(date: "Feb", price: 13),
  chartData(date:   "Mar", price: 23),
  chartData(date: "Apr", price: 35),
  chartData(date: "May", price: 12),
  chartData(date: "Jun", price: 8),
  chartData(date: "Jul", price: 2),
  chartData(date: "Aug", price: 0),
  chartData(date: "Sept", price: 20),
  chartData(date: "Oct", price: 1),
  chartData(date: "Nov", price: 2),
  chartData(date: "Dec", price: 12),

];