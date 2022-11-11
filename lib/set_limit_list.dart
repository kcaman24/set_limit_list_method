List setLimitList(List list, int limit) {
  /// I made the process dynamic by extending the sublist method.
  /// We may want to split the lists into multiple sublists,
  /// so I developed the dynamic sublists method.
  /// it works like this:

  /*
   List<dynamic> myList = [0,1,2,3,4,5,6,7];
   final int limit = 2;
   
   var result = setLimitList(myList , limit);
   print(result); // [(0,1),(2,3),(4,5),(6,7)]
   
   */
  final int kalan = list.length % limit;

  //print("remainder('Kalan') => $kalan \n");
  if (list.length <= limit) {
    return [list];
  } else {
    List returnList = [];
    final int kackere = (list.length / limit).floor();
    //print("division :  $kackere \n");
    if (kalan == 0) {
      for (int i = 0; i < kackere; i++) {
        if (i == 0) {
          //print(
          //  "----------------------------i = $i----------------------------");
          var yapilan = list.getRange(i, limit);
          returnList.add(yapilan);
          //print("do action  => $yapilan\n");
          //print("Add list ($i = 0) => $returnList");
        } else {
          //print(
          //  "----------------------------i = $i----------------------------");
          var yapilan = list.getRange(limit * i, (limit * i) + limit);
          returnList.add(yapilan);
          //print("do action  => $yapilan\n");
          //print("Add list => $returnList");
        }
      }
    } else {
      for (int i = 0; i <= kackere; i++) {
        if (i == 0) {
          //print(
          // "----------------------------i = $i----------------------------");
          var yapilan = list.getRange(i, limit);
          returnList.add(yapilan);
          //print("do action  => $yapilan\n");
          //print("Add list ($i = 0) => $returnList");
        } else if (i > 0 && i < kackere) {
          // print(
          //   "----------------------------i = $i----------------------------");
          var yapilan = list.getRange(limit * i, (limit * i) + limit);
          returnList.add(yapilan);
          //print("do action  => $yapilan\n");
          //print("Add list => $returnList");
        } else {
          //print(
          // "----------------------------i = $i----------------------------");
          var yapilan = list.getRange(limit * i, list.length);
          returnList.add(yapilan);
          //print("do action  => $yapilan\n");
          //print("Add list => $returnList");
        }
      }
    }
    return returnList;
  }
}
