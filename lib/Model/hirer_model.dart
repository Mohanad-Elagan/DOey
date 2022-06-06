class Hire {
  String uid;
  String name;

  Hire({this.uid, this.name});

  // receiving data from server
  factory Hire.fromMap(map) {
    return Hire(
      uid: map['User ID'],
      name: map['Name'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'User ID': uid,
      'Name': name,
    };
  }
}
