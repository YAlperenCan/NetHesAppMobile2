class User_Data {
  final String imagePath;
  final String name;
  final String email;
  final String phone;
  final String sirket;

  const User_Data(
      this.imagePath, this.name, this.email, this.phone, this.sirket);
}

class User_Preferences {
  static const myUser = User_Data(
      'assets/profile_picture_1.jpeg',
      'Umut Eren KEİYİNCİ',
      ' umutkeiyinci@hotmail.com',
      '05072323221',
      'Limak.AŞ');
}
