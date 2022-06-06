class UserModel {
  String uid;
  String mail;
  String name;
  String bio;
  String sex;
  String age;
  String state;

  UserModel({this.uid, this.mail, this.name, this.bio, this.sex, this.age, this.state});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['User ID'],
      mail: map['Mail'],
      name: map['Name'],
      bio: map['Bio'],
      sex: map['Sex'],
      age: map['Age'],
      state: map['State'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'User ID': uid,
      'Mail': mail,
      'Name': name,
      'Bio': bio,
      'Sex': sex,
      'Age': age,
      'State' : state,
    };
  }
}
