class Lancer {
  String uid;
  String name;
  String rate;

  Lancer({this.uid, this.name, this.rate});

  // receiving data from server
  factory Lancer.fromMap(map) {
    return Lancer(
      uid: map['User ID'],
      name: map['Name'],
      rate: map['Rate'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'User ID': uid,
      'Name': name,
      'Rate': rate,
    };
  }
}
