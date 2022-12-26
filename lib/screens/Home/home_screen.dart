import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/blocs/blocs.dart';
import 'package:task_app/constants.dart';

import '../../utils/utils.dart';
import '../../widgets/widgets.dart';
import '../Home/widget.dart/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 5.0,
          child: SizedBox(
            height: 48.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppIconButton(
                    onPressed: () {}, icon: Icons.table_chart_outlined),
                BlocConsumer<ThemeBloc, ThemeState>(
                  listener: (_, __) {},
                  builder: (context, state) {
                    final appThemeBloc = context.read<ThemeBloc>();

                    return state.map(
                      dark: (value) => AppIconButton(
                        onPressed: () =>
                            appThemeBloc.add(const ThemeModeChanged(true)),
                        icon: Icons.dark_mode,
                      ),
                      light: (_) => AppIconButton(
                        onPressed: () =>
                            appThemeBloc.add(const ThemeModeChanged(false)),
                        icon: Icons.brightness_4,
                      ),
                    );
                  },
                )
              ],
            ),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          width: 60,
          height: 60,
          child: Icon(
            Icons.add,
            size: 40,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 241, 110, 110),
                Color.fromARGB(255, 68, 174, 223),
              ],
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          WidgetSliverAppBar(),
          SliverPadding(
              padding: EdgeInsets.all(12.0), sliver: null //WidgetNoteList(),
              )
        ],
      ),
    );
  }
}
