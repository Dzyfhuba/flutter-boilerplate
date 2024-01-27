import 'package:flutter/material.dart';

class ChestTable extends StatefulWidget {
  // final List<String> columns;
  // final List<List<String>> data;

  // const StyleTable({super.key, this.columns = const [], required this.data});
  const ChestTable({super.key});

  @override
  State<StatefulWidget> createState() => _ChestTableState();
}

// List<String> _defaultColumns = ['a', 'b', 'c', 'd', 'e', 'f', 'g'];
List<String> _defaultColumns = [];
List<List<dynamic>> _defaultData = [
  [
    null,
    null,
    '-',
    '+',
    1,
    2,
    3,
  ],
  [
    'A. Chest Width adsasdad',
    1,
    1,
    1,
    1,
    1,
    2,
  ],
  [
    'A. Chest Width adsasdad',
    1,
    1,
    1,
    1,
    1,
    1,
  ],
  [
    'A. Chest Width adsasdad',
    1,
    1,
    1,
    1,
    1,
    1,
  ],
  [
    'A. Chest Width adsasdad',
    1,
    1,
    1,
    1,
    1,
    1,
  ]
];

class _ChestTableState extends State<ChestTable> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        if (_defaultColumns.isNotEmpty)
          for (var header in _defaultColumns)
            DataColumn(
              label: Text(header),
            )
        else
          for (var column in List.filled(_defaultData[0].length, ''))
            DataColumn(label: Text(column))
      ],
      headingRowHeight:
          _defaultColumns.isEmpty ? 0 : (_defaultColumns[0].isEmpty ? 0 : 44),
      rows: [
        for (List<dynamic> row in _defaultData)
          DataRow(cells: [
            for (var cell in row)
              DataCell(
                cell.runtimeType != Null
                    ? Text(cell.toString())
                    : const Text(""),
              ),
          ])
      ],
    );
  }
}
