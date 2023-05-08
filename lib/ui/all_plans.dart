import 'package:bengal_islami_life_insurance/models/all_plans.dart';
import 'package:bengal_islami_life_insurance/networks/all_plans.dart';
import 'package:bengal_islami_life_insurance/services/all_plans/all_plans_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IndividualPlans extends StatelessWidget {
  const IndividualPlans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (context) =>
              AllPlansCubit(allPlanApiServices: AllPlanApiServices()))
    ], child: AllPlans());
  }
}

class AllPlans extends StatefulWidget {
  const AllPlans({Key? key}) : super(key: key);

  @override
  State<AllPlans> createState() => _AllPlansState();
}

class _AllPlansState extends State<AllPlans> {
  @override
  void initState() {
    super.initState();
    context.read<AllPlansCubit>().getAllPlans();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Individual Plan"),
      ),
      body:
          BlocBuilder<AllPlansCubit, AllPlansState>(builder: (context, state) {
        if (state is PlansLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is PlansLoadError) {
          return Center(child: Text(state.msg.toString()));
        } else if (state is PlansLoadComplete) {
          return ListView.builder(
              itemBuilder: (context, itemIndex) {
                Plans plans = state.allPlans[itemIndex];
                return GestureDetector(
                  onTap: () {
                    print("Plan No: " + plans.table.toString());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Center(
                          child: Text(
                        "Plan No: " + plans.table.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      subtitle: Text(plans.name.toString()),
                    ),
                  ),
                );
              },
              itemCount: state.allPlans.length);
        } else {
          return SizedBox();
        }
      }),
    );
  }
}
