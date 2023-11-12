
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hotels_task/core/errors/failure.dart';
import 'package:hotels_task/core/utils/api_service.dart';
import 'package:hotels_task/features/hotels_screen/data/hotels_repo.dart';
import 'package:hotels_task/features/hotels_screen/data/models/Hotel.dart';

class HotelsRepoImpl implements HotelsRepo{
  @override
  Future<Either<Failure, List<Hotel>>> getHotelsData() async{
    List<Hotel> hotelsList=[];
   try{
     var res = await ApiService.getData();
     res.forEach((element) { hotelsList.add(Hotel.fromJson(element)); });
     return right(hotelsList);
   }catch(e){
     if(e is DioException){
       return left(ServerFailure.fromDioError(e));
     }else {
       return left(Failure(e.toString()));
     }
   }
  }

}