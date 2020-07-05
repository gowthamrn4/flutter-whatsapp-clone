class ChatModel {
  final String name;
  final String msg;
  final String time;
  final String pic;

  ChatModel(this.name, this.msg, this.pic, this.time);
}

List<ChatModel> chatsData = [
  new ChatModel('Gowtham', 'Hi',
      'https://randomuser.me/api/portraits/men/1.jpg', '10.10 AM'),
  new ChatModel('Rahul', 'Hi how r u ?',
      'https://randomuser.me/api/portraits/men/2.jpg', '11.20 AM'),
  new ChatModel('Ajith', 'Good mrng',
      'https://randomuser.me/api/portraits/men/3.jpg', '09.55 AM'),
  new ChatModel('Karthi', 'Deiii',
      'https://randomuser.me/api/portraits/men/4.jpg', '08.50 AM'),
  new ChatModel('Gowtham', 'Saptiya',
      'https://randomuser.me/api/portraits/men/5.jpg', '11.50 AM'),
  new ChatModel('Gowtham', 'Enga da irruka',
      'https://randomuser.me/api/portraits/men/6.jpg', '08.50 AM'),
  new ChatModel('Gowtham', 'Hello',
      'https://randomuser.me/api/portraits/men/7.jpg', '10.50 AM'),
  new ChatModel('Gowtham', 'Hi',
      'https://randomuser.me/api/portraits/men/8.jpg', '10.50 AM'),
  new ChatModel('Gowtham', 'Hi',
      'https://randomuser.me/api/portraits/men/9.jpg', '10.50 AM'),
];
