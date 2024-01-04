import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

import '../../../src/sugar/dart_core.dart';
import '../sugar/common.dart';

@FairPatch()
class DemoPage extends StatefulWidget {
  const DemoPage({Key? key, required this.fairProps}) : super(key: key);
  final Map<String, dynamic> fairProps;

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @FairProps()
  var fairProps;
  final String _pageName = '#FairKey#';
  var _data;




  dynamic _getValue(String key, dynamic defaultValue) {
    return defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sugar.ifEqualBool(
        SugarCommon.isNull(_data),
        trueValue: () => const Center(
          child: CircularProgressIndicator(
            strokeWidth: 3.0,
          ),
        ),
        falseValue: () => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 11, right: 11, bottom: 11),
                child: Wrap(
                  runSpacing: 5.0,
                  spacing: 5.0,
                  children: Sugar.mapEach(
                    SugarIterable.toList(SugarIterable.take(_getValue('tags', ["111"]), 6)),
                        (index, item) => Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: SugarCommon.getRandomColor(index),
                        border: Border.all(
                          color: Sugar.colorsWithOpacity(Colors.grey, 0.4),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Text(
                        '$item',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 12,
                          color: SugarCommon.getLuminanceColor(
                            SugarCommon.colorComputeLuminance(
                              SugarCommon.getRandomColor(
                                index,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
