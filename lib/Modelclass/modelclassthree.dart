class UserData {
  int id;
  String mesg;

  UserData(this.id, this.mesg);
  static List<UserData> messagelist() {
    return [
      UserData(1, "Hi How are you"),
      UserData(0, "I am fine."),
      UserData(0, "How are you?"),
      UserData(0, "What are you doing?"),
      UserData(1, "I am fine too"),
      UserData(1, "I am doing nothing"),
    ];
  }
}
