import 'package:flutter/material.dart';
import 'package:foodi/features/models/address_model.dart';
import 'package:foodi/features/models/profile_model.dart';

class ProfileState extends ChangeNotifier {
  ProfileModel? profile;

  Future<void> updatePersonalInfo(ProfileModel newProfile) async {}

  Future<void> updateAddress(UserAddress newAddress) async {}
}
