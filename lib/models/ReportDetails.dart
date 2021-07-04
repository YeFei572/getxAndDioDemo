class ReportDetails {
  int current_hashrate;
  int average_hashrate;
  int last_share_timestamp;
  int reported_hashrate;
  String last_share_coin;
  String wallet;

  ReportDetails(
      {this.current_hashrate,
      this.average_hashrate,
      this.last_share_timestamp,
      this.reported_hashrate,
      this.last_share_coin,
      this.wallet});

  factory ReportDetails.fromJson(Map<String, dynamic> json) {
    return ReportDetails(
        current_hashrate: json["current_hashrate"],
        average_hashrate: json["average_hashrate"],
        last_share_timestamp: json["last_share_timestamp"],
        reported_hashrate: json["reported_hashrate"],
        last_share_coin: json["last_share_coin"],
        wallet: json["wallet"]);
  }
}
