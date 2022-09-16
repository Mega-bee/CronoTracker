class PlansModel{
  String? Description1;
  String? Description2;
  String? Description3;
  int? Price;
  String? name;
  bool isSelected;
  PlansModel({this.name,this.Description1,this.Price,this.Description2,this.Description3,required this.isSelected});
}
List <PlansModel> plans =[
  PlansModel(
    Description1: "24/24 Support",
    Description2: "Stay Updated",
    Description3: "Add to WatchList",
    name: "Primary",
    Price: 100,
    isSelected: true
  ),
  PlansModel(
      Description1: "24/24 Support",
      Description2: "Stay Updated",
      Description3: "Add to WatchList",
      name: "Standard",
      Price: 150,
      isSelected: false
  ),
  PlansModel(
      Description1: "24/24 Support",
      Description2: "Stay Updated",
      Description3: "Add to WatchList",
      name: "Family Plan",
      Price: 200,
      isSelected: false
  ),
];