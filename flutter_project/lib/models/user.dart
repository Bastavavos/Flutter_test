class User {
  String pseudo;
  String level;
  String bio;
  String email;

  User({
    this.pseudo="",
    this.level="",
    this.bio="",
    this.email="",
  });

  @override
  String toString() {
    return '''
  
- Pseudo: $pseudo
- Level: $level
- Bio: $bio
- Email: $email
''';
  }
}