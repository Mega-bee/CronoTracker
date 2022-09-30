class WatchDetails {

  String? image, brand, modelName, reference, nickname, size, dialColor, caseMaterial,date,priceRange,RetailPrice,SellingRate;
  double? pricetracking,price;
  bool status;

  WatchDetails({
    this.image,
    this.brand,
    this.modelName,
    this.reference,
    this.nickname,
    this.size,
    this.dialColor,
    this.caseMaterial,
    this.date,
    required this.status,
    this.price,
    this.pricetracking,
    this.priceRange,
    this.RetailPrice,
    this.SellingRate
  });


}
List <WatchDetails> details =[
  WatchDetails(price: 20, status: true,date: "3 Sep 2022"),
  WatchDetails(price: 20, status: false,date: "1 Sep 2022"),
  WatchDetails(price: 20, status: true,date: "31 Aug 2022"),
  WatchDetails(price: 20, status: true,date: "27 Aug 2022"),
  WatchDetails(price: 20, status: true,date: "23 Aug 2022"),
  WatchDetails(price: 20, status: true,date: "19 Aug 2022"),
  WatchDetails(price: 20, status: true,date: "18 Aug 2022"),
  WatchDetails(price: 20, status: true,date: "30 Aug 2022"),
];