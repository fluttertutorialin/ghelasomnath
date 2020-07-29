class ContactResponse {
  String uid, appName, webSite, email, mobile, address;

  ContactResponse(
      this.appName, this.webSite, this.email, this.mobile, this.address);

  ContactResponse.fromJson(Map<String, dynamic> map) {
    this.appName = map['appName'];
    this.webSite = map['webSite'];
    this.email = map['email'];
    this.mobile = map['mobile'];
    this.address = map['address'];
  }
}
