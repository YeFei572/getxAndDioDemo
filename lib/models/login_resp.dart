/// firstTime : false
/// notHasPassword : false
/// userId : "5ae04bea3b1b6304ffc999de"
/// phone : "15896272531"
/// name : "一个问题"
/// pic : "http://moyutang.oss-cn-shenzhen.aliyuncs.com/works/images/-1075392248.1553089529114.jpg"
/// token : "eyJhbGciOiJIUzUxMiJ9.eyJ1aWQiOiI1YWUwNGJlYTNiMWI2MzA0ZmZjOTk5ZGUiLCJzdWIiOiIxNTg5NjI3MjUzMSIsImF1ZCI6IndlYiIsIm5hbSI6IuS4gOS4qumXrumimCIsInBpYyI6Imh0dHA6Ly9tb3l1dGFuZy5vc3MtY24tc2hlbnpoZW4uYWxpeXVuY3MuY29tL3dvcmtzL2ltYWdlcy8tMTA3NTM5MjI0OC4xNTUzMDg5NTI5MTE0LmpwZyIsInRlcm1pbmFsIjoiV0VCIiwiZXhwIjoxNjIzNDAyMjI2LCJpYXQiOjE2MjA4MTAyMjZ9.6FhL-1gcNJ8n6JMQl9wAtlwJhK6plJSWDKZ6Sz_0MhBqMrNap8uMWBAPcoFPv6Fo56uCa-ty1wYF2xBSBfQX1Q"
/// description : ""
/// wechat : ""
/// sex : 1
/// qq : ""
/// weibo : ""

class LoginResp {
  bool? _firstTime;
  bool? _notHasPassword;
  String? _userId;
  String? _phone;
  String? _name;
  String? _pic;
  String? _token;
  String? _description;
  String? _wechat;
  int? _sex;
  String? _qq;
  String? _weibo;

  bool? get firstTime => _firstTime;
  bool? get notHasPassword => _notHasPassword;
  String? get userId => _userId;
  String? get phone => _phone;
  String? get name => _name;
  String? get pic => _pic;
  String? get token => _token;
  String? get description => _description;
  String? get wechat => _wechat;
  int? get sex => _sex;
  String? get qq => _qq;
  String? get weibo => _weibo;

  LoginResp({
      bool? firstTime, 
      bool? notHasPassword, 
      String? userId, 
      String? phone, 
      String? name, 
      String? pic, 
      String? token, 
      String? description, 
      String? wechat, 
      int? sex, 
      String? qq, 
      String? weibo}){
    _firstTime = firstTime;
    _notHasPassword = notHasPassword;
    _userId = userId;
    _phone = phone;
    _name = name;
    _pic = pic;
    _token = token;
    _description = description;
    _wechat = wechat;
    _sex = sex;
    _qq = qq;
    _weibo = weibo;
}

  LoginResp.fromJson(dynamic json) {
    _firstTime = json["firstTime"];
    _notHasPassword = json["notHasPassword"];
    _userId = json["userId"];
    _phone = json["phone"];
    _name = json["name"];
    _pic = json["pic"];
    _token = json["token"];
    _description = json["description"];
    _wechat = json["wechat"];
    _sex = json["sex"];
    _qq = json["qq"];
    _weibo = json["weibo"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["firstTime"] = _firstTime;
    map["notHasPassword"] = _notHasPassword;
    map["userId"] = _userId;
    map["phone"] = _phone;
    map["name"] = _name;
    map["pic"] = _pic;
    map["token"] = _token;
    map["description"] = _description;
    map["wechat"] = _wechat;
    map["sex"] = _sex;
    map["qq"] = _qq;
    map["weibo"] = _weibo;
    return map;
  }

}