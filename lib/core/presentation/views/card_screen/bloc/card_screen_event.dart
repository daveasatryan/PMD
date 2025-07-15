import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_screen_event.freezed.dart';

@freezed
class CardScreenEvent with _$CardScreenEvent {
  const factory CardScreenEvent.getCardData() = GetCardData;
  const factory CardScreenEvent.removeFromCard({required int index}) =
      DeleteFromCard;
}
