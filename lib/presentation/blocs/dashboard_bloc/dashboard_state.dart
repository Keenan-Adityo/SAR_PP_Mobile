part of 'dashboard_bloc.dart';

@immutable
class DashboardState extends Equatable {
  final List<ReportsData> reportsData;
  final Office office;

  DashboardState({
    required this.reportsData,
    required this.office,
  });

  factory DashboardState.initial() {
    return DashboardState(
      reportsData: <ReportsData>[
        ReportsData('Jan', 171.93, 171.83),
        ReportsData('Feb', 329.87, 337.02),
        ReportsData('Mar', 504.92, 514.12),
        ReportsData('Apr', 676.39, 691.50),
        ReportsData('Mei', 858.98, 874.79),
        ReportsData('Jun', 1033.39, 1057.29),
        ReportsData('Jul', 1209.66, 1241.07),
        ReportsData('Agu', 1384.36, 1425.04),
        ReportsData('Sep', 1554.83, 1607.26),
        ReportsData('Okt', 1745.97, 1791.32),
        ReportsData('Nov', 1930.63, 1970.78),
        ReportsData('Des', 2122.51, 2146.34),
      ],
      office: Office.up3,
    );
  }

  DashboardState copywith({
    List<ReportsData>? reportsData,
    Office? office,
  }) {
    return DashboardState(
      reportsData: reportsData ?? this.reportsData,
      office: office ?? this.office,
    );
  }

  @override
  List<Object?> get props => [reportsData, office];
}
