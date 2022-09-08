class WatchDetails {

  String? image, brand, modelName, reference, nickname, size, dialColor, caseMaterial,date,status;
  double? pricetracking,price;

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
    this.status,
    this.price,
    this.pricetracking
  });


}
List <WatchDetails> details =[
  WatchDetails(price: 20, status: "Sold",date: "3 Sep 2022"),
  WatchDetails(price: 20, status: "Sold",date: "1 Sep 2022"),
  WatchDetails(price: 20, status: "Sold",date: "31 Aug 2022"),
  WatchDetails(price: 20, status: "Sold",date: "27 Aug 2022"),
  WatchDetails(price: 20, status: "Sold",date: "23 Aug 2022"),
  WatchDetails(price: 20, status: "Sold",date: "19 Aug 2022"),
  WatchDetails(price: 20, status: "Sold",date: "18 Aug 2022"),
  WatchDetails(price: 20, status: "Sold",date: "30 Aug 2022"),
];