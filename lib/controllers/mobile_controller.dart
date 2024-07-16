// lib/controllers/mobile_controller.dart

import '../models/mobile_model.dart';
import '../viewmodels/mobile_viewmodel.dart';

class MobileController {
  final MobileViewModel viewModel;

  MobileController(this.viewModel);

  MobileModel getMobileData() {
    return viewModel.getMobileData();
  }
}
