import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sar_pp_mobile/presentation/widgets/mixed_chart.dart';
import 'package:sar_pp_mobile/utils/office.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardState.initial()) {
    on<DashboardEvent>((event, emit) {});
    on<onChangeOffice>((event, emit) {
      emit(state.copywith(office: event.office));
      print(state.office);
    });
  }
}
