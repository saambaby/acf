class VideoEntity{
  final String title;
  final String url;
  final String subTitle;
  final DateTime date;
  final int time;
  VideoEntity({required this.title, required this.url, required this.subTitle, required this.date, required this.time});

  factory VideoEntity.fromJson(Map<String, dynamic> json) {
    return VideoEntity(
      title: json['title'],
      url: json['url'],
      subTitle: json['subTitle'],
      date: json['date'],
      time: int.parse(json['time']),
    );
  }
//
}