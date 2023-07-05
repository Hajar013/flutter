class Post{
  final String profileImageUrl;
  final String username;
  final String time;
  final String content;
  final String? likes;
  final String? comments;
  final String ?shares;

  Post({
    required this.profileImageUrl,
    required this.username,
   required this.time,
    required this.content,
     this.likes,
    this.comments,
    this.shares
  });
}

List<Post> posts = [
  Post(profileImageUrl: 'assets/LQLQ.jpg', username: 'Hajar Ihab', time: '8h', content: 'Happy Birthday', likes: '63', comments: '11', shares: '2'),
  Post(profileImageUrl: 'assets/LQLQ1.jpg', username: 'Marah Abu-Mwais', time: '13h', content: 'Happy new year 🎉🎉', likes: '10', comments: '3', shares: '2'),
   Post(profileImageUrl: 'assets/LQLQ2.jpg', username: 'Sara Abu-Farha', time: '1w', content:  'Congratulations', likes: '233', comments: '6', shares: '4'),
   Post(profileImageUrl: 'assets/LQLQ3.jpg', username: 'Dalal zakarneh', time: '1w', content: 'Good afternoon people, hope you are doing well. STAY HOME STAY SAFE. Hope you are healthy and happy. Wish you good health guys :)', likes: '233', comments: '6', shares: '4'),
];










