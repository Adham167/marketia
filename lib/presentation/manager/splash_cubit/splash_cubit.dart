import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  void getStarted() async {
    await Future.delayed(Duration(seconds: 3));
    emit(UnAuthenticated());
  }
}
