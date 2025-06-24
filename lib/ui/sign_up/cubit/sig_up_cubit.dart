import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sig_up_state.dart';

class SigUpCubit extends Cubit<SigUpState> {
  SigUpCubit() : super(SigUpInitial());

  void onNameChanged(String? name) {
    print ('onNameChanged');
    print(name);
  }
  
  void onEmailChanged(String? email) {
    print ('onEmailChanged');
    print(email);
  }
}
