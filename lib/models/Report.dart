import 'ReportDetails.dart';

class Report {
  ReportDetails eth;
  ReportDetails etc;
  String last_share_coin;
  String wallet;
  int current_hashrate;
  int average_hashrate;
  int last_share_timestamp;
  int reported_hashrate;

  Report({this.eth, this.etc, this.last_share_coin, this.wallet, this.current_hashrate, this.average_hashrate, this.last_share_timestamp, this.reported_hashrate});

  factory Report.fromJson(Map<String, dynamic> json) {
    return Report(eth : ReportDetails.fromJson(json['eth']),
    etc : ReportDetails.fromJson(json['etc']),
    last_share_coin : json['last_share_coin'],
    wallet : json['wallet'],
    current_hashrate : json['current_hashrate'],
    average_hashrate : json['average_hashrate'],
    last_share_timestamp : json['last_share_timestamp'],
    reported_hashrate : json['reported_hashrate']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eth'] = this.eth;
    data['etc'] = this.etc;
    data['last_share_coin'] = this.last_share_coin;
    data['wallet'] = this.wallet;
    data['current_hashrate'] = this.current_hashrate;
    data['average_hashrate'] = this.average_hashrate;
    data['last_share_timestamp'] = this.last_share_timestamp;
    data['reported_hashrate'] = this.reported_hashrate;
    return data;
  }

}