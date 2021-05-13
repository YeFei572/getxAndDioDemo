/// id : "5e130b473b1b637545229a37"
/// userId : "5adfd2da3b1b6304ffc998d0"
/// title : "【现货】潘多拉 作品：典狱长—毒龙麦哲伦"
/// iconUrl : "http://moyutang.oss-cn-shenzhen.aliyuncs.com/works/images/bolckymods-123.1525785472634.jpg"
/// userName : "摸鱼塘塘主"
/// desc : "尺寸：高55，宽55，深60"
/// totalAmount : 27200.0
/// coverPic : "http://moyutang.oss-cn-shenzhen.aliyuncs.com/works/images/22308424.1578306318881.png"
/// tags : ["123"]
/// maturity : 37.5
/// favorites : 0
/// startAt : 1578306299178
/// endAt : 1609862400000
/// createAt : 1578306375246
/// status : "finished"
/// type : "cartoon"
/// works : ["http://moyutang.oss-cn-shenzhen.aliyuncs.com/works/images/22308424.1578306328906.png"]
/// reciprocationList : ["http://moyutang.oss-cn-shenzhen.aliyuncs.com/works/images/22308424.1578306332554.png"]
/// hasFollow : false
/// hasFavorite : false
/// daysToProduct : 32
/// designerType : "normal"
/// accessStatus : 0
/// userCount : 3
/// minPrice : 3400.0

class Feed {
  String? _id;
  String? _userId;
  String? _title;
  String? _iconUrl;
  String? _userName;
  String? _desc;
  double? _totalAmount;
  String? _coverPic;
  List<String>? _tags;
  double? _maturity;
  int? _favorites;
  int? _startAt;
  int? _endAt;
  int? _createAt;
  String? _status;
  String? _type;
  List<String>? _works;
  List<String>? _reciprocationList;
  bool? _hasFollow;
  bool? _hasFavorite;
  int? _daysToProduct;
  String? _designerType;
  int? _accessStatus;
  int? _userCount;
  double? _minPrice;

  String? get id => _id;
  String? get userId => _userId;
  String? get title => _title;
  String? get iconUrl => _iconUrl;
  String? get userName => _userName;
  String? get desc => _desc;
  double? get totalAmount => _totalAmount;
  String? get coverPic => _coverPic;
  List<String>? get tags => _tags;
  double? get maturity => _maturity;
  int? get favorites => _favorites;
  int? get startAt => _startAt;
  int? get endAt => _endAt;
  int? get createAt => _createAt;
  String? get status => _status;
  String? get type => _type;
  List<String>? get works => _works;
  List<String>? get reciprocationList => _reciprocationList;
  bool? get hasFollow => _hasFollow;
  bool? get hasFavorite => _hasFavorite;
  int? get daysToProduct => _daysToProduct;
  String? get designerType => _designerType;
  int? get accessStatus => _accessStatus;
  int? get userCount => _userCount;
  double? get minPrice => _minPrice;

  Feed({
      String? id, 
      String? userId, 
      String? title, 
      String? iconUrl, 
      String? userName, 
      String? desc, 
      double? totalAmount, 
      String? coverPic, 
      List<String>? tags, 
      double? maturity, 
      int? favorites, 
      int? startAt, 
      int? endAt, 
      int? createAt, 
      String? status, 
      String? type, 
      List<String>? works, 
      List<String>? reciprocationList, 
      bool? hasFollow, 
      bool? hasFavorite, 
      int? daysToProduct, 
      String? designerType, 
      int? accessStatus, 
      int? userCount, 
      double? minPrice}){
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
    _daysToProduct = daysToProduct;
    _designerType = designerType;
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
    _reciprocationList = json["reciprocationList"] != null ? json["reciprocationList"].cast<String>() : [];
    _hasFollow = json["hasFollow"];
    _hasFavorite = json["hasFavorite"];
    _daysToProduct = json["daysToProduct"];
    _designerType = json["designerType"];
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
    map["daysToProduct"] = _daysToProduct;
    map["designerType"] = _designerType;
    map["accessStatus"] = _accessStatus;
    map["userCount"] = _userCount;
    map["minPrice"] = _minPrice;
    return map;
  }

}