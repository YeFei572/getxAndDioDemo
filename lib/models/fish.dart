/// id : "606099ca4f2bb876b11a7c4a"
/// userId : "5addebb03b1b6304ffc996b1"
/// userName : "晴纸Haruko"
/// iconUrl : "http://moyutang.oss-cn-shenzhen.aliyuncs.com/works/images/619732361.1602835809730.jpg"
/// picUrl : "http://moyutang.oss-cn-shenzhen.aliyuncs.com/works/images/-1898769364.1616943562222.PNG"
/// type : "DRAWING"
/// title : "稿子"
/// content : "展示勿保存"
/// createAt : 1616943562890
/// images : ["http://moyutang.oss-cn-shenzhen.aliyuncs.com/works/images/1832762871.1616943561991.PNG"]
/// imgAspectRatios : [1.0]
/// tags : ["绘画"]
/// hasFollow : false
/// designerType : "graphicDesigner"
/// like : 352
/// commentNum : 0
/// hasLike : false
/// replies : null
/// worksAspectRatio : 1.0

class Fish {
  String? _id;
  String? _userId;
  String? _userName;
  String? _iconUrl;
  String? _picUrl;
  String? _type;
  String? _title;
  String? _content;
  int? _createAt;
  List<String>? _images;
  List<double>? _imgAspectRatios;
  List<String>? _tags;
  bool? _hasFollow;
  String? _designerType;
  int? _like;
  int? _commentNum;
  bool? _hasLike;
  dynamic? _replies;
  double? _worksAspectRatio;

  String? get id => _id;
  String? get userId => _userId;
  String? get userName => _userName;
  String? get iconUrl => _iconUrl;
  String? get picUrl => _picUrl;
  String? get type => _type;
  String? get title => _title;
  String? get content => _content;
  int? get createAt => _createAt;
  List<String>? get images => _images;
  List<double>? get imgAspectRatios => _imgAspectRatios;
  List<String>? get tags => _tags;
  bool? get hasFollow => _hasFollow;
  String? get designerType => _designerType;
  int? get like => _like;
  int? get commentNum => _commentNum;
  bool? get hasLike => _hasLike;
  dynamic? get replies => _replies;
  double? get worksAspectRatio => _worksAspectRatio;

  Fish({
      String? id, 
      String? userId, 
      String? userName, 
      String? iconUrl, 
      String? picUrl, 
      String? type, 
      String? title, 
      String? content, 
      int? createAt, 
      List<String>? images, 
      List<double>? imgAspectRatios, 
      List<String>? tags, 
      bool? hasFollow, 
      String? designerType, 
      int? like, 
      int? commentNum, 
      bool? hasLike, 
      dynamic? replies, 
      double? worksAspectRatio}){
    _id = id;
    _userId = userId;
    _userName = userName;
    _iconUrl = iconUrl;
    _picUrl = picUrl;
    _type = type;
    _title = title;
    _content = content;
    _createAt = createAt;
    _images = images;
    _imgAspectRatios = imgAspectRatios;
    _tags = tags;
    _hasFollow = hasFollow;
    _designerType = designerType;
    _like = like;
    _commentNum = commentNum;
    _hasLike = hasLike;
    _replies = replies;
    _worksAspectRatio = worksAspectRatio;
}

  Fish.fromJson(dynamic json) {
    _id = json["id"];
    _userId = json["userId"];
    _userName = json["userName"];
    _iconUrl = json["iconUrl"];
    _picUrl = json["picUrl"];
    _type = json["type"];
    _title = json["title"];
    _content = json["content"];
    _createAt = json["createAt"];
    _images = json["images"] != null ? json["images"].cast<String>() : [];
    _imgAspectRatios = json["imgAspectRatios"] != null ? json["imgAspectRatios"].cast<double>() : [];
    _tags = json["tags"] != null ? json["tags"].cast<String>() : [];
    _hasFollow = json["hasFollow"];
    _designerType = json["designerType"];
    _like = json["like"];
    _commentNum = json["commentNum"];
    _hasLike = json["hasLike"];
    _replies = json["replies"];
    _worksAspectRatio = json["worksAspectRatio"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["userId"] = _userId;
    map["userName"] = _userName;
    map["iconUrl"] = _iconUrl;
    map["picUrl"] = _picUrl;
    map["type"] = _type;
    map["title"] = _title;
    map["content"] = _content;
    map["createAt"] = _createAt;
    map["images"] = _images;
    map["imgAspectRatios"] = _imgAspectRatios;
    map["tags"] = _tags;
    map["hasFollow"] = _hasFollow;
    map["designerType"] = _designerType;
    map["like"] = _like;
    map["commentNum"] = _commentNum;
    map["hasLike"] = _hasLike;
    map["replies"] = _replies;
    map["worksAspectRatio"] = _worksAspectRatio;
    return map;
  }

}