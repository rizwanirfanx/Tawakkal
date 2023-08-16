class User {
  String email;
  String firstName;
  String lastName;
  String password;
  int? id;

  User({
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.email,
		this.id
  });

	void shitMethod(){
		print('Shit');
	}

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'password': password,
      'email': email,
    };
  }

  @override
  String toString() {
    return 'User{id: $id, First Name: $firstName, last Name: $lastName, email: $email}';
  }
}
