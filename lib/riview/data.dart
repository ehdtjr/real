class Album { //php에 지정된 타입들로 선언해줘야함.
  final String http_status;
  final String data1;
  final String data2;
  final List<dynamic> data3;


  const Album({
    required this.http_status,
    required this.data1,
    required this.data2,
    required this.data3,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album( //json[]안에는 서버에 사용하는 데이터명으로 해줘야함
      http_status: json['http_status'],
      data1: json['data1'],
      data2: json['data2'],
      data3: json['data3'],
    );
  }
}