
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:fooddelieveryapp/bloc/provider.dart';
import '../fooditem.dart';
import 'package:rxdart/rxdart.dart';
class CartListBloc extends BlocBase{

CartProvider _cartprovider = new CartProvider();

  CartListBloc();
  var _listcontroller = BehaviorSubject<List<FoodItem>>.seeded([]);
  //output
  Stream<List<FoodItem>> get listStream => _listcontroller.stream;
  //input
   Sink<List<FoodItem>> get listSink => _listcontroller.sink;

  addtoList(FoodItem foodItem)
  {
    listSink.add(_cartprovider.addtolist(foodItem));
  }
  removefromList(FoodItem foodItem)
  {
    listSink.add(_cartprovider.aremovefromlist(foodItem));
    
  }



  
  

    
  


                               


@override
  void dispose() {// will be called automatically 
    _listcontroller.close();
  }

}