import 'package:rescan/core/theme/theme.dart';
import 'package:flutter/material.dart';

class MainScanPage extends StatelessWidget {
  const MainScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 8, bottom: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colorScheme.warningContainer,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Warning',
                              style: textTheme.labelLarge!.copyWith(
                                  color: colorScheme.onWarningContainer),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                'This is a work-in-progress application. Some features can be missing or not working properly.',
                                style: textTheme.bodySmall!.copyWith(
                                    color: colorScheme.onWarningContainer),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
