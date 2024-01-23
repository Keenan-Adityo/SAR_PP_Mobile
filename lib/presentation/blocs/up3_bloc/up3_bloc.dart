import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sar_pp_mobile/presentation/widgets/mixed_chart.dart';

part 'up3_event.dart';
part 'up3_state.dart';

class Up3Bloc extends Bloc<Up3Event, Up3State> {
  Up3Bloc() : super(Up3State()) {
    on<Up3Event>((event, emit) {
      
    });
  }
}
