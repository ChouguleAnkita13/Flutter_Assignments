
import 'package:flutter/material.dart';
import 'package:playerinfo/model/player_model.dart';

class PlayerData extends InheritedWidget {
  final PlayerModel player;
  
  const PlayerData({
    super.key,
    required super.child,
    required this.player
  });

  static PlayerData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PlayerData>()!;
  }

  @override
  bool updateShouldNotify(PlayerData oldWidget) {
    return player != oldWidget.player;
  }
}
