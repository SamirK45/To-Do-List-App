class Tasks{
  late bool isDone;
  final String name;

  Tasks({required this.name,this.isDone = false});

  void toggleDone(){
    isDone =!isDone;


  }






}