class MenuModel{

String name;
double price;
String img;
MenuModel({required this.name,required this.img,required this.price});

Map<String,Object?>toJson(){
  return {
    'name':name,
    'price':price,
    'img':img,
  };
}
factory MenuModel.fromJson(Map<String,Object?>json){
  return MenuModel(name: json['name']as String,
      img: json['img'] as String,
      price: json['price']as double);
}

}