class RestaurantModel{

  late String restaurantId,restaurantName,image;

  RestaurantModel(this.restaurantId, this.restaurantName, this.image);
  factory RestaurantModel.fromJson(Map<String, dynamic> json){
    return RestaurantModel(json[''], json[''],json['']);


  }}