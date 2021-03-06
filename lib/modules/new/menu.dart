
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/shared/component/component.dart';
import 'package:todo_app/shared/cubit/cubit.dart';
import 'package:todo_app/shared/cubit/status.dart';



class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Cubit_tst,Status>(
        builder: (context,status){
         Cubit_tst cubit  =  Cubit_tst.geter(context);
          List<Map> data = cubit.mydata;
          return data.length >0 ?  ListView.separated(itemBuilder:(context,index) => item_node_style(cubit: cubit,data: data[index],index: index)
              , separatorBuilder:(context,index)=> line()
              , itemCount: data.length) : Check_tasks();},
        listener: (context,status){});





  }
}
