//modello relativo al dispenser
//rimane da decidere bene gli attributi da inserire.

class Dispenser {
  String id;
  String userId;
  //bool daErogare;
  int qtnRation;
  String collarId;
  //List<Animal> animals;

  Dispenser(
      {this.id, this.userId, this.qtnRation, this.collarId});

  String getIdDispenser() {
    return this.id;
  }

  void setIdDispenser(String id) {
    this.id = id;
  }

  String getUserId() {
    return this.userId;
  }

  void setUserId(String name) {
    this.userId = userId;
  }

  int getQtnRation() {
    return this.qtnRation;
  }

  void setqtnRation(int qtnRation) {
    this.qtnRation = qtnRation;
  }

  String getCollarId() {
    return this.collarId;
  }

  void setCollarId(String collarId) {
    this.collarId = collarId;
  }
}
