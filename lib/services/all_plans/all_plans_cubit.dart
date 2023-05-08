import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../models/all_plans.dart';
import '../../networks/all_plans.dart';

part 'all_plans_state.dart';

class AllPlansCubit extends Cubit<AllPlansState> {
  List<Plans> allPlans = [];
  AllPlanApiServices allPlanApiServices;

  AllPlansCubit({required this.allPlanApiServices}) : super(AllPlansInitial());

  void getAllPlans() async {
    try {
      emit(PlansLoading());
      allPlans = await allPlanApiServices.getPlans();
      emit(PlansLoadComplete(allPlans: allPlans));
    } catch (e) {
      emit(PlansLoadError(msg: e.toString()));
    }
  }
}
