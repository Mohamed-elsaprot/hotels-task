class Hotel {
  Hotel({
      this.name, 
      this.starts, 
      this.price, 
      this.currency, 
      this.image, 
      this.reviewScore, 
      this.review, 
      this.address,});

  Hotel.fromJson(dynamic json) {
    name = json['name'];
    starts = json['starts'];
    price = json['price'];
    currency = json['currency'];
    image = json['image'];
    reviewScore = json['review_score'];
    review = json['review'];
    address = json['address'];
  }
  String? name;
  num? starts;
  num? price;
  String? currency;
  String? image;
  num? reviewScore;
  String? review;
  String? address;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['starts'] = starts;
    map['price'] = price;
    map['currency'] = currency;
    map['image'] = image;
    map['review_score'] = reviewScore;
    map['review'] = review;
    map['address'] = address;
    return map;
  }

}