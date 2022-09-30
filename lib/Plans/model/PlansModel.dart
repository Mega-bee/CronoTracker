class PlansModel{
  String? Description1;
  String? Description2;
  String? Description3;
  String? Price;
  String? name;
  bool isSelected;
  PlansModel({this.name,this.Description1,this.Price,this.Description2,this.Description3,required this.isSelected});
}
List <PlansModel> plans =[
  PlansModel(
    Description1: "",
    Description2: "",
    Description3: "",
    name: "Steel",
    Price: "50\$/MONTH",
    isSelected: true
  ),
  PlansModel(
      Description1: "",
      Description2: "",
      Description3: "",
      name: "Gold",
      Price: "500\$/YEAR",
      isSelected: false
  ),
  PlansModel(
      Description1: "",
      Description2: "",
      Description3: "",
      name: "Platinum",
      Price: "1000\$/5 YEARS",
      isSelected: false
  ),
];