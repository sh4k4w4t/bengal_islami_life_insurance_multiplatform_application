part of 'all_plans_cubit.dart';

@immutable
abstract class AllPlansState extends Equatable {
  const AllPlansState();
}

class AllPlansInitial extends AllPlansState {
  @override
  List<Object?> get props => [];
}

class PlansLoading extends AllPlansState {
  @override
  List<Object?> get props => [];
}

class PlansLoadComplete extends AllPlansState {
  List<Plans> allPlans;
  PlansLoadComplete({required this.allPlans});

  @override
  List<Object?> get props => [allPlans];
}

class PlansLoadError extends AllPlansState {
  String msg;
  PlansLoadError({required this.msg});

  @override
  List<Object?> get props => [msg];
}
