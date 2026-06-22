import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'calculator_controller.dart';
import '../../widgets/hand_widget.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CalculatorController(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Calculator')),
        body: Consumer<CalculatorController>(
          builder: (_, c, __) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // MODE SELECTOR
              ToggleButtons(
                isSelected: [
                  c.mode == CalcMode.multiply,
                  c.mode == CalcMode.square,
                  c.mode == CalcMode.squareRoot,
                ],
                onPressed: (i) {
                  c.setMode(CalcMode.values[i]);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('×'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('²'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('√'),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // INPUT DISPLAY
              Text(
                c.mode == CalcMode.multiply
                    ? '${c.a} × ${c.b}'
                    : c.mode == CalcMode.square
                        ? '${c.a}²'
                        : '√${c.a}',
                style: const TextStyle(fontSize: 28),
              ),

              const SizedBox(height: 16),

              HandWidget(fingers: c.fingers),

              const SizedBox(height: 16),

              ElevatedButton(
                onPressed: c.calculate,
                child: const Text('Show with Hands'),
              ),

              if (c.result != null)
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Answer = ${c.result}',
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
