import '../../utils/Images/Images.dart';

class AuctionsModel {
  String? text;
  int? pricetracking;
  bool status;
  double? price;
  String? image;
  String? brand;
  String? model;
  String? referance;
  int? year;
  double? size;
  String? dialColor;
  String? caseMaterial;
  String? condition;
  String? fullSet;
  double? askingPrice;
  String? lastBidder;
  double? numberOfBidders;
  String? date;
  String? igAccount;
  String? country;
  bool? limited;
  String? production;
  String? braceletMaterial;
  String? bezelMaterial;
  bool? diamondDial;
  String? nickName;
  double? RetailPrice;
  List? priceRange;
  String? soldMonth;
  String? SellingRate;

  AuctionsModel({
      this.pricetracking,
      this.nickName,
      this.diamondDial,
      this.bezelMaterial,
      this.braceletMaterial,
      this.production,
      this.limited,
      this.text,
      this.price,
      required this.status,
      this.size,
      this.date,
      this.image,
      this.brand,
      this.caseMaterial,
      this.condition,
      this.country,
      this.dialColor,
      this.fullSet,
      this.igAccount,
      this.askingPrice,
      this.lastBidder,
      this.model,
      this.numberOfBidders,
      this.referance,
      this.year,
      this.RetailPrice,
      this.priceRange,
      this.soldMonth,
      this.SellingRate});
}

List<AuctionsModel> AuctionsList = [
  AuctionsModel(
    text:
        "Vacheron constantin overseas chronograph steel 42.5mm blue dial 2021 unworn, kuwait",
    price: 3500,
    status: false,
    image: ImageAsset.WATCH1,
    brand: "Rolex",
    caseMaterial: "Steel",
    condition: "Unworn",
    country: "Kuwait",
    date: "7 august 2022",
    dialColor: "Black Dial",
    fullSet: "Full Set",
    igAccount: "elite_watches_q8",
    askingPrice: 0,
    lastBidder: "khal9ne",
    model: "Overseas Chronograph",
    numberOfBidders: 2,
    referance: "5500V/110A-B148",
    size: 42.5,
    year: 2021,
    RetailPrice: 9000
  ),
  AuctionsModel(
    text: "Vacheron constantin overseas chronograph steel",
    price: 3500,
    status: true,
    image: ImageAsset.WATCH2,
    brand: "Girard",
    caseMaterial: "Steel",
    condition: "Unworn",
    country: "Kuwait",
    date: "8 august 2022",
    dialColor: "Blue Dial",
    fullSet: "Full Set",
    igAccount: "elite_watches_q8",
    askingPrice: 0,
    lastBidder: "khal9ne",
    model: "Overseas Chronograph",
    numberOfBidders: 2,
    referance: "5500V/110A-B148",
    size: 42.5,
    year: 2021,
    RetailPrice: 8000
  ),
  AuctionsModel(
    text:
        "Vacheron constantin overseas chronograph steel 42.5mm blue dial 2021 unworn, kuwait",
    price: 3500,
    status: false,
    image: ImageAsset.WATCH3,
    brand: "Patek Philipe",
    caseMaterial: "Steel",
    condition: "Unworn",
    country: "Kuwait",
    date: "8 august 2022",
    dialColor: "Red Dial",
    fullSet: "Full Set",
    igAccount: "elite_watches_q8",
    askingPrice: 0,
    lastBidder: "khal9ne",
    model: "Overseas Chronograph",
    numberOfBidders: 2,
    referance: "5500V/110A-B148",
    size: 42.5,
    year: 2021,
    RetailPrice: 9000
  ),
  AuctionsModel(
    text: "Vacheron constantin overseas chronograph steel",
    price: 3500,
    status: true,
    image: ImageAsset.WATCH4,
    brand: "Rechard",
    caseMaterial: "Steel",
    condition: "Unworn",
    country: "Kuwait",
    date: "7 august 2022",
    dialColor: "Blue Dial",
    fullSet: "Full Set",
    igAccount: "elite_watches_q8",
    askingPrice: 0,
    lastBidder: "khal9ne",
    model: "Overseas Chronograph",
    numberOfBidders: 2,
    referance: "5500V/110A-B148",
    size: 42.5,
    year: 2021,
    RetailPrice: 9000
  ),
  AuctionsModel(
    text:
        "Vacheron constantin overseas chronograph steel 42.5mm blue dial 2021 unworn, kuwait",
    price: 3500,
    status: true,
    image: ImageAsset.WATCH1,
    brand: "Vacheron Costantine",
    caseMaterial: "Steel",
    condition: "Unworn",
    country: "Kuwait",
    date: "6 august 2022",
    dialColor: "Green Dial",
    fullSet: "Full Set",
    igAccount: "elite_watches_q8",
    askingPrice: 0,
    lastBidder: "khal9ne",
    model: "Overseas Chronograph",
    numberOfBidders: 2,
    referance: "5500V/110A-B148",
    size: 42.5,
    year: 2021,
    RetailPrice: 9000
  ),
  AuctionsModel(
    text: "Vacheron constantin overseas chronograph steel",
    price: 3500,
    status: true,
    image: ImageAsset.WATCH2,
    brand: "Vacheron Costantine",
    caseMaterial: "Steel",
    condition: "Unworn",
    country: "Kuwait",
    date: "6 august 2022",
    dialColor: "Blue Dial",
    fullSet: "Full Set",
    igAccount: "elite_watches_q8",
    askingPrice: 0,
    lastBidder: "khal9ne",
    model: "Overseas Chronograph",
    numberOfBidders: 2,
    referance: "5500V/110A-B148",
    size: 42.5,
    year: 2021,
    RetailPrice: 9000
  ),
  AuctionsModel(
    text:
        "Vacheron constantin overseas chronograph steel 42.5mm blue dial 2021 unworn, kuwait",
    price: 3500,
    status: true,
    image: ImageAsset.WATCH3,
    brand: "Vacheron Costantine",
    caseMaterial: "Steel",
    condition: "Unworn",
    country: "Kuwait",
    date: "6 august 2022",
    dialColor: "Blue Dial",
    fullSet: "Full Set",
    igAccount: "elite_watches_q8",
    askingPrice: 0,
    lastBidder: "khal9ne",
    model: "Overseas Chronograph",
    numberOfBidders: 2,
    referance: "5500V/110A-B148",
    size: 42.5,
    year: 2021,
    RetailPrice: 9000
  ),
  AuctionsModel(
    text: "Vacheron constantin overseas chronograph steel",
    price: 3500,
    status: false,
    image: ImageAsset.WATCH4,
    brand: "Vacheron Costantine",
    caseMaterial: "Steel",
    condition: "Unworn",
    country: "Kuwait",
    date: "8 august 2022",
    dialColor: "Blue Dial",
    fullSet: "Full Set",
    igAccount: "elite_watches_q8",
    askingPrice: 0,
    lastBidder: "khal9ne",
    model: "Overseas Chronograph",
    numberOfBidders: 2,
    referance: "5500V/110A-B148",
    size: 42.5,
    year: 2021,
    RetailPrice: 9000
  ),
  AuctionsModel(
    text:
        "Vacheron constantin overseas chronograph steel 42.5mm blue dial 2021 unworn, kuwait",
    price: 3500,
    status: true,
    image: ImageAsset.WATCH1,
    brand: "Vacheron Costantine",
    caseMaterial: "Steel",
    condition: "Unworn",
    country: "Kuwait",
    date: "8 august 2022",
    dialColor: "Blue Dial",
    fullSet: "Full Set",
    igAccount: "elite_watches_q8",
    askingPrice: 0,
    lastBidder: "khal9ne",
    model: "Overseas Chronograph",
    numberOfBidders: 2,
    referance: "5500V/110A-B148",
    size: 42.5,
    year: 2021,
    RetailPrice: 9000
  ),
  AuctionsModel(
    text:
        "Vacheron constantin overseas chronograph steel 42.5mm blue dial 2021 unworn, kuwait",
    price: 3500,
    status: true,
    image: ImageAsset.WATCH2,
    brand: "Vacheron Costantine",
    caseMaterial: "Steel",
    condition: "Unworn",
    country: "Kuwait",
    date: "8 august 2022",
    dialColor: "Blue Dial",
    fullSet: "Full Set",
    igAccount: "elite_watches_q8",
    askingPrice: 0,
    lastBidder: "khal9ne",
    model: "Overseas Chronograph",
    numberOfBidders: 2,
    referance: "5500V/110A-B148",
    size: 42.5,
    year: 2021,
    RetailPrice: 9000
  ),
  AuctionsModel(
    text: "Vacheron constantin overseas chronograph steel",
    price: 3500,
    status: true,
    image: ImageAsset.WATCH3,
    brand: "Vacheron Costantine",
    caseMaterial: "Steel",
    condition: "Unworn",
    country: "Kuwait",
    date: "8 august 2022",
    dialColor: "Blue Dial",
    fullSet: "Full Set",
    igAccount: "elite_watches_q8",
    askingPrice: 0,
    lastBidder: "khal9ne",
    model: "Overseas Chronograph",
    numberOfBidders: 2,
    referance: "5500V/110A-B148",
    size: 42.5,
    year: 2021,
    RetailPrice: 9000
  ),
  AuctionsModel(
    text:
        "Vacheron constantin overseas chronograph steel 42.5mm blue dial 2021 unworn, kuwait",
    price: 3500,
    status: true,
    image: ImageAsset.WATCH4,
    brand: "Vacheron Costantine",
    caseMaterial: "Steel",
    condition: "Unworn",
    country: "Kuwait",
    date: "8 august 2022",
    dialColor: "Blue Dial",
    fullSet: "Full Set",
    igAccount: "elite_watches_q8",
    askingPrice: 0,
    lastBidder: "khal9ne",
    model: "Overseas Chronograph",
    numberOfBidders: 2,
    referance: "5500V/110A-B148",
    size: 42.5,
    year: 2021,
    RetailPrice: 9000
  ),
];
