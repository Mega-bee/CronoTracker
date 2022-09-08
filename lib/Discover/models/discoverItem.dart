class DiscoverItem {

  String? image;
  String? label;

  DiscoverItem({this.image, this.label});
}
class DiscoverFilter{
  String Filter;
  DiscoverFilter({required this.Filter});
}
List <DiscoverFilter> filterList =[
  DiscoverFilter(Filter: "All"),
  DiscoverFilter(Filter: "Airking"),
  DiscoverFilter(Filter: "Date"),
  DiscoverFilter(Filter: "Datejust"),
  DiscoverFilter(Filter: "Day-Date"),
  DiscoverFilter(Filter: "Daytona"),
  DiscoverFilter(Filter: "Daytona Beach"),
  DiscoverFilter(Filter: "Daytona Zenith"),
  DiscoverFilter(Filter: "Deepsea"),
  DiscoverFilter(Filter: "Explorer"),
  DiscoverFilter(Filter: "GMT Master"),
  DiscoverFilter(Filter: "Milgaus"),
  DiscoverFilter(Filter: "Oyster Date"),
  DiscoverFilter(Filter: "Pearlmaster"),
  DiscoverFilter(Filter: "SeaDweller"),
  DiscoverFilter(Filter: "Yacht Master"),
  DiscoverFilter(Filter: "Submariner"),
  DiscoverFilter(Filter: "Sky Dweller"),
];
List <DiscoverFilter> filterList2 =[
  DiscoverFilter(Filter: "44mm"),
  DiscoverFilter(Filter: "40mm"),
];