class User {
  final String name;
  final String username;
  final String email;
  final String street;
  final String city;
  final String company;

  User({
    required this.name,
    required this.username,
    required this.email,
    required this.street,
    required this.city,
    required this.company,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      username: json['username'],
      email: json['email'],
      street: json['address']['street'],
      city: json['address']['city'],
      company: json['company']['name'],
    );
  }
}
