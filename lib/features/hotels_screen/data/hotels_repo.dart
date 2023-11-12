import 'package:dartz/dartz.dart';
import 'package:hotels_task/core/errors/failure.dart';
import 'package:hotels_task/features/hotels_screen/data/models/Hotel.dart';

abstract class HotelsRepo{
  Future<Either<Failure,List<Hotel>>> getHotelsData();
}