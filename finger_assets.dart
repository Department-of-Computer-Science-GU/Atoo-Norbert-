import 'package:audioplayers/audioplayers.dart';
import 'storage_service.dart';

class AudioService {
  AudioService._();
  static final instance = AudioService._();

  final _sfx = AudioPlayer();

  bool soundEnabled = true;

  Future<void> init() async {
    soundEnabled = StorageService.getBool('sound', true);
  }

  Future<void> playTap() async {
    if (!soundEnabled) return;
    await _sfx.stop();
    // add real asset later
  }

  void setSound(bool value) {
    soundEnabled = value;
    StorageService.setBool('sound', value);
  }
}
