import '../data/models/Hotel.dart';

abstract class HotelsState{
  const HotelsState();
}

class HotelsInitial extends HotelsState{
 const HotelsInitial();
}

class HotelsLoading extends HotelsState{}
class HotelsSuccess extends HotelsState{
  const HotelsSuccess({required this.hotelsList});
  final List<Hotel> hotelsList;
}
class HotelsFailure extends HotelsState{
  const HotelsFailure({required this.errorMessage});
  final String errorMessage;
}