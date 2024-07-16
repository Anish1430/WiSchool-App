import '../models/mobile_model.dart';

class MobileViewModel {
  final MobileModel model;

  MobileViewModel(this.model);

  MobileModel getMobileData() {
    return model;
  }
}
