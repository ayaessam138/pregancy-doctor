import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants.dart';
import '../cubit/navgation_cubit/navgation_cubit/navgation_cubit.dart';
import '../weidgetes/bottom_navigation_bar.dart';

class homepage extends StatelessWidget {
  static String homeid = 'home';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavgationCubit, NavgationState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: kprimarycolor,
              title: Text(
                ' ${BlocProvider.of<NavgationCubit>(context).apppartitle[BlocProvider.of<NavgationCubit>(context).currentindex]}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            body: BlocProvider.of<NavgationCubit>(context)
                .Screens[BlocProvider.of<NavgationCubit>(context).currentindex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex:
                  BlocProvider.of<NavgationCubit>(context).currentindex,
              items: BlocProvider.of<NavgationCubit>(context).ITEMS,
              onTap: (index) {
                BlocProvider.of<NavgationCubit>(context).pagenavgation(index);
              },
            ));
      },
    );
  }
}
