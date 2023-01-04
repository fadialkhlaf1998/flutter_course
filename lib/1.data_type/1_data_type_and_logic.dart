
class DataTypeAndLogic {

  ///data type
  int val1 = 0;
  double val2 = 0.0;
  String val3 = "string";
  bool val4 = true;
  List<String> val5 = ["1","2","3","4"];
  Map<String,int> val6 = {
    "key-0":0,
    "key-1":1,
    "key-2":2,
  };
  Map<String,String> val7 = {
    "key-0":"0",
    "key-1":"1",
    "key-2":"2",
  };

  void fun1(){
    print(val1);
    print(val2);
    print(val3);
    print(val4);

    ///length of list
    print(val5.length);

    ///first Element of list
    print(val5[0]);
    print(val5.first);

    ///last Element of list
    print(val5[val5.length-1]);
    print(val5.last);

    ///maps
    print(val6['key-0']);
    print(val7['key-0']);

  }

  ///***************************************************************************

  ///Null Safety
  int? val8;
  String? val9;
  List<int?> val10 = [null,1,4];
  List<int>? val11;
  List<int>? val12 = [1,2,3];
  List<int?>? val13 = [1,2,3,null];

  void fun2(){
    print(val8!);
    print(val9!);

    ///list element not null
    print(val10[0]!);

    ///list not null
    print(val11!);

    ///list not null print first element
    print(val12![0]);

    ///list not null and element not null
    print(val13![0]!);
  }

  ///***************************************************************************

  ///dynamic variables
  var val14;
  dynamic val15;

  void fun3(){
    print(val14);
    print(val15);
  }

  ///***************************************************************************

  ///Dart Logic
  void fun4(){
    if(val1 == 0){
      //todo statement
    }else if(val2 == 1){
      //todo statement
    }else{
      //todo statement
    }
  }

  void fun5(){
    for(int i=0;i<val5.length;i++){
      print(val5[i]);
    }
  }

  void fun6(){
    for(String element in val5){
      print(element);
    }
  }

  void fun7(){
    while(val1 > 0){
      //todo statement
    }
  }

  void fun8(){
    switch (val1){
      case 0:
        //todo statement
        break;
      case 1:
        //todo statement
        break;
      default:
        //todo statement
        break;
    }
  }

  void fun9(){
    val1 == 1 ? print('TRUE') : print('False');
  }

  void fun10(){
    val1 == 1 ? print('TRUE 1') : val1 == 2 ? print('TRUE 2') :print('False');
  }
}