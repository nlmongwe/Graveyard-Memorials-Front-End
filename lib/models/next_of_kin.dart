
class NextOfKin{
  final int? id;
  final String? fullNames;
  final String? relationship;
  final String? addressLine1;
  final String? town;
  final String? postalCode;
  final String? cellNumber;


  NextOfKin({
    this.id,
    this.fullNames,
    this.relationship,
    this.addressLine1,
    this.town,
    this.postalCode,
    this.cellNumber
  });

  factory NextOfKin.fromJson(Map<String, dynamic> json){
    return NextOfKin(
      id: json['id'],
      fullNames: json['fullNames'],
      relationship: json['relationship'],
      addressLine1: json['addressLine1'],
      town: json['town'],
      postalCode: json['postalCode'],
      cellNumber: json['cellNumber']
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'id': id,
      'fullNames': fullNames,
      'relationship': relationship,
      'addressLine1': addressLine1,
      'town': town,
      'postalCode': postalCode,
      'cellNumber': cellNumber
    };
  }
}