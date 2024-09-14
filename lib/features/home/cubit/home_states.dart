abstract class HomeStates {

}

class HomeInitialStates extends HomeStates{

}

class HomeChangeStates extends HomeStates{}

class HomePlusStates extends HomeStates{
  final int counter;

  HomePlusStates(this.counter);
}
class HomeMinusStates extends HomeStates{
  final int counter;

  HomeMinusStates(this.counter);
}
class HomeZeroStates extends HomeStates{
  final int counter;

  HomeZeroStates(this.counter);
}

class HomeRatingStates extends HomeStates{

}

class ChangeFavoriteIcon extends HomeStates{

}
