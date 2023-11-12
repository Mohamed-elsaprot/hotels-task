import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels_task/core/errors/failure.dart';
import 'package:hotels_task/features/hotels_screen/data/hotels_repo_impl.dart';
import 'package:hotels_task/features/hotels_screen/data/models/Hotel.dart';
import 'package:hotels_task/features/hotels_screen/manager/hotels_state.dart';
import 'package:dartz/dartz.dart';

class HotelsCubit extends Cubit<HotelsState>{
  HotelsCubit(this.hotelsRepoImpl):super(const HotelsInitial());
  HotelsRepoImpl hotelsRepoImpl;

  Future<void> getHotelsData()async{
    emit(HotelsLoading());
    Either<Failure, List<Hotel>> res = await hotelsRepoImpl.getHotelsData();
    res.fold((failure) {
      emit(HotelsFailure(errorMessage: failure.errorMessage));
    }, (hotels) {
      print(hotels.length);
      emit(HotelsSuccess(hotelsList: hotels));
    });
  }
}