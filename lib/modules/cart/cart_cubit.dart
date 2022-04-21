import 'package:bloc/bloc.dart';
import 'package:dro/Model/cart.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  static List<Cart> data = [];

  addCart(
      {String? title,
      String? image,
      int? price,
      String? type,
      int? dose,
      int? quantity}) {
    data.add(Cart(
        title: title,
        image: image,
        price: price,
        type: type,
        dose: dose,
        quantity: quantity));
    return emit(CartState(cart: data));
  }

  removeCart({required int index}) {
    data.removeAt(index);
    return emit(CartState(cart: data));
  }

  updateCartIndex(
      {required int index, title, image, price, type, dose, quantity}) {
    data[index] = Cart(
        title: title,
        image: image,
        price: price,
        type: type,
        dose: dose,
        quantity: quantity);
    return emit(CartState(cart: data));
  }

  totalCartAmount() {
    int total = 0;
    for (var e in data) {
      total = total +
          (int.parse(e.price.toString()) * int.parse(e.quantity.toString()));
    }
    emit(CartState(total: total, cart: data));
  }

  CartCubit() : super(CartState(cart: data, total: 0));
}
