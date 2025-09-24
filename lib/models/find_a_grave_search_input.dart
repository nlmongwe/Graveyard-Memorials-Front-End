class FindAGraveSearchInput {
  final String? graveNumber;
  final String? burialOrderNumber;
  final String? fullName;
  final String? surName;
  final DateTime? dateOfBirth;
  final DateTime? dateOfDeath;

  FindAGraveSearchInput({
     this.graveNumber,
     this.burialOrderNumber,
     this.fullName,
     this.surName,
     this.dateOfBirth,
     this.dateOfDeath
  });

  Map<String,dynamic> toJson(){
    return {
      'graveNumber': graveNumber,
      'burialOrderNumber': burialOrderNumber,
      'fullName': burialOrderNumber,
      'surName': surName,
      'dateOfBirth':dateOfBirth,
      'dateOfDeath':dateOfDeath
    };
}

}