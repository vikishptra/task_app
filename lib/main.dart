import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/blocs/blocs.dart';
import 'package:task_app/repositories/note/note_repository.dart';
import 'package:task_app/screens/ToDo_add_note/add_note_screen.dart';
import 'package:task_app/screens/home/home_screen.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => NoteRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ThemeBloc>(
            create: (_) => ThemeBloc(),
          )
        ],
        child: BlocConsumer<ThemeBloc, ThemeState>(
          listener: (_, __) {},
          builder: (context, state) {
            return MaterialApp(
              title: 'Task App',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(primarySwatch: Colors.blue),
              darkTheme: ThemeData.dark(),
              themeMode: state.map(
                  light: (_) => ThemeMode.light, dark: (_) => ThemeMode.dark),
              initialRoute: HomeScreen.routeName,
              routes: {
                HomeScreen.routeName: (_) => const HomeScreen(),
                AddNote.routeName: (_) => const AddNote(),
              },
            );
          },
        ),
      ),
    );
  }
}
