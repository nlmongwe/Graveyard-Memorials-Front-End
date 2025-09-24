import 'package:web_project/models/person.dart';

import 'next_of_kin.dart';

class Grave{
  final int? id;
  final String? cemeteryName;
  final String? graveNumber;
  final String? blockNumber;
  final String? section;
  final String? burialOrderNumber;
  final String? burialCompany;
  final DateTime? dateOfBurial;
  final bool? feesPaid;
  final String? receiptNumber;
  final DateTime? datePaid;
  final String? capturedBy;
  final Person? deceased;
  final NextOfKin? nextOfKin;

  Grave({
    this.id,
    this.cemeteryName,
    this.graveNumber,
    this.blockNumber,
    this.section,
    this.burialOrderNumber,
    this.burialCompany,
    this.dateOfBurial,
    this.feesPaid,
    this.receiptNumber,
    this.datePaid,
    this.capturedBy,
    this.deceased,
    this.nextOfKin
  });

  factory Grave.fromJson(Map<String, dynamic> json){
    return Grave(
      id: json['id'],
      cemeteryName: json['cemeteryName'],
      graveNumber: json['graveNumber'],
      blockNumber: json['blockNumber'],
      section: json['section'],
      burialOrderNumber: json['burialOrderNumber'],
      burialCompany: json['burialCompany'],
      dateOfBurial: json['dateOfBurial'],
      feesPaid: json['feesPaid'],
      receiptNumber: json['receiptNumber'],
      datePaid: json['datePaid'],
      capturedBy: json['capturedBy'],
      deceased: json['deceased'] != null? Person.fromJson(json['deceased']) : null,
      nextOfKin: json['nextOfKin'] !=null? NextOfKin.fromJson(json['nextOfKin']):null
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'id': id,
      'cemeteryName': cemeteryName,
      'graveNumber': graveNumber,
      'blockNumber': blockNumber,
      'section': section,
      'burialOrderNumber': burialOrderNumber,
      'burialCompany': burialCompany,
      'dateOfBurial': dateOfBurial,
      'feesPaid': feesPaid,
      'receiptNumber': receiptNumber,
      'datePaid':datePaid,
      'capturedBy': capturedBy,
      'deceased': deceased?.toJson(),
      'nextOfKin': nextOfKin?.toJson()
    };
  }
}