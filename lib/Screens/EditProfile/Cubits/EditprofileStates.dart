import 'package:spotify/Screens/EditProfile/Models/EditprofileModel.dart';

abstract class EditprofileStates{}
class EditprofileInitialStates extends EditprofileStates{}
class EditprofileLoadingStates extends EditprofileStates{}
class EditprofileLoadedStates extends EditprofileStates{
  EditprofileModel editprofileModel;
  EditprofileLoadedStates({required this.editprofileModel});
}
class EditprofileErrorStates extends EditprofileStates{
  String error;
  EditprofileErrorStates({required this.error});
}