// import 'package:bloc/bloc.dart';

// // Events
// abstract class ToDoEvent {}

// class AddTaskEvent extends ToDoEvent {
//   final String taskName;
//   AddTaskEvent(this.taskName);
// }

// class ToggleTaskEvent extends ToDoEvent {
//   final int taskIndex;
//   ToggleTaskEvent(this.taskIndex);
// }

// class DeleteTaskEvent extends ToDoEvent {
//   final int taskIndex;
//   DeleteTaskEvent(this.taskIndex);
// }

// // States
// class ToDoState {
//   final List<dynamic> toDoList;
//   ToDoState(this.toDoList);
// }

// // BLoC
// class ToDoBloc extends Bloc<ToDoEvent, ToDoState> {
//   ToDoBloc() : super(ToDoState([]));

//   @override
//   Stream<ToDoState> mapEventToState(ToDoEvent event) async* {
//     if (event is AddTaskEvent) {
//       final updatedList = List.from(state.toDoList)..add([event.taskName, false]);
//       yield ToDoState(updatedList);
//     } else if (event is ToggleTaskEvent) {
//       final updatedList = List.from(state.toDoList);
//       updatedList[event.taskIndex][1] = !updatedList[event.taskIndex][1];
//       yield ToDoState(updatedList);
//     } else if (event is DeleteTaskEvent) {
//       final updatedList = List.from(state.toDoList)..removeAt(event.taskIndex);
//       yield ToDoState(updatedList);
//     }
//   }
// }
