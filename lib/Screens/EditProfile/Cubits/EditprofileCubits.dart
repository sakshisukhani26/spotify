import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/Screens/EditProfile/Cubits/EditProfileStates.dart';

class Editprofilecubits extends Cubit<EditprofileStates>{
  Editprofilecubits():super(EditprofileInitialStates());
}