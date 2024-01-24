part of 'dashboard_bloc.dart';

@immutable
sealed class DashboardEvent extends Equatable {}

class onChangeOffice extends DashboardEvent {
  onChangeOffice(this.office);
  final Office office;

  @override
  List<Object?> get props => [office];
}
