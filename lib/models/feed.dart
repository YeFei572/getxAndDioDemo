/// id : "5e130f863b1b637545229a40"
/// userId : "5adfd2da3b1b6304ffc998d0"
/// title : "【现货】JC工作室 作品：1/4三档路飞"
/// iconUrl : "123"
/// userName : "摸鱼塘塘主"
/// desc : "尺寸：总高1.1米"
/// totalAmount : 42000.0
/// coverPic : "http://moyutang.oss-cn-shenzhen.aliyuncs.com/works/images/22308424.1578307293793.png"
/// tags : ["123"]
/// maturity : 40.0
/// favorites : 0
/// startAt : 1578307274461
/// endAt : 1609862400000
/// createAt : 1578307462743
/// status : "finished"
/// type : "cartoon"
/// works : ["http://moyutang.oss-cn-shenzhen.aliyuncs.com/works/images/22308424.1578307301461.png"]
/// reciprocationList : ["http://moyutang.oss-cn-shenzhen.aliyuncs.com/works/images/22308424.1578307304764.png"]
/// hasFollow : false
/// hasFavorite : false
/// accessStatus : 0
/// userCount : 1
/// minPrice : 4200.0

class Feed {
  String _id;
  String _userId;
  String _title;
  String _iconUrl;
  String _userName;
  String _desc;
  double _totalAmount;
  String _coverPic;
  List<String> _tags;
  double _maturity;
  int _favorites;
  int _startAt;
  int _endAt;
  int _createAt;
  String _status;
  String _type;
  List<String> _works;
  List<String> _reciprocationList;
  bool _hasFollow;
  bool _hasFavorite;
  int _accessStatus;
  int _userCount;
  double _minPrice;

  String get id => _id;

  String get userId => _userId;

  String get title => _title;

  String get iconUrl => _iconUrl;

  String get userName => _userName;

  String get desc => _desc;

  double get totalAmount => _totalAmount;

  String get coverPic => _coverPic;

  List<String> get tags => _tags;

  double get maturity => _maturity;

  int get favorites => _favorites;

  int get startAt => _startAt;

  int get endAt => _endAt;

  int get createAt => _createAt;

  String get status => _status;

  String get type => _type;

  List<String> get works => _works;

  List<String> get reciprocationList => _reciprocationList;

  bool get hasFollow => _hasFollow;

  bool get hasFavorite => _hasFavorite;

  int get accessStatus => _accessStatus;

  int get userCount => _userCount;

  double get minPrice => _minPrice;

  Feed(
      {String id,
      String userId,
      String title,
      String iconUrl,
      String userName,
      String desc,
      double totalAmount,
      String coverPic,
      List<String> tags,
      double maturity,
      int favorites,
      int startAt,
      int endAt,
      int createAt,
      String status,
      String type,
      List<String> works,
      List<String> reciprocationList,
      bool hasFollow,
      bool hasFavorite,
      int accessStatus,
      int userCount,
      double minPrice}) {
    _id = id;
    _userId = userId;
    _title = title;
    _iconUrl = iconUrl;
    _userName = userName;
    _desc = desc;
    _totalAmount = totalAmount;
    _coverPic = coverPic;
    _tags = tags;
    _maturity = maturity;
    _favorites = favorites;
    _startAt = startAt;
    _endAt = endAt;
    _createAt = createAt;
    _status = status;
    _type = type;
    _works = works;
    _reciprocationList = reciprocationList;
    _hasFollow = hasFollow;
    _hasFavorite = hasFavorite;
    _accessStatus = accessStatus;
    _userCount = userCount;
    _minPrice = minPrice;
  }

  Feed.fromJson(dynamic json) {
    _id = json["id"];
    _userId = json["userId"];
    _title = json["title"];
    _iconUrl = json["iconUrl"];
    _userName = json["userName"];
    _desc = json["desc"];
    _totalAmount = json["totalAmount"];
    _coverPic = json["coverPic"];
    _tags = json["tags"] != null ? json["tags"].cast<String>() : [];
    _maturity = json["maturity"];
    _favorites = json["favorites"];
    _startAt = json["startAt"];
    _endAt = json["endAt"];
    _createAt = json["createAt"];
    _status = json["status"];
    _type = json["type"];
    _works = json["works"] != null ? json["works"].cast<String>() : [];
    _reciprocationList = json["reciprocationList"] != null
        ? json["reciprocationList"].cast<String>()
        : [];
    _hasFollow = json["hasFollow"];
    _hasFavorite = json["hasFavorite"];
    _accessStatus = json["accessStatus"];
    _userCount = json["userCount"];
    _minPrice = json["minPrice"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["userId"] = _userId;
    map["title"] = _title;
    map["iconUrl"] = _iconUrl;
    map["userName"] = _userName;
    map["desc"] = _desc;
    map["totalAmount"] = _totalAmount;
    map["coverPic"] = _coverPic;
    map["tags"] = _tags;
    map["maturity"] = _maturity;
    map["favorites"] = _favorites;
    map["startAt"] = _startAt;
    map["endAt"] = _endAt;
    map["createAt"] = _createAt;
    map["status"] = _status;
    map["type"] = _type;
    map["works"] = _works;
    map["reciprocationList"] = _reciprocationList;
    map["hasFollow"] = _hasFollow;
    map["hasFavorite"] = _hasFavorite;
    map["accessStatus"] = _accessStatus;
    map["userCount"] = _userCount;
    map["minPrice"] = _minPrice;
    return map;
  }
}
