import 'package:flutter/material.dart';

class StyleTable extends StatefulWidget {
  // final List<String> columns;
  // final List<List<String>> data;

  // const StyleTable({super.key, this.columns = const [], required this.data});
  StyleTable({super.key});

  @override
  State<StatefulWidget> createState() => _StyleTableState();
}

// List<String> defaultColumns = ['a', 'b', 'c', 'd'];
List<String> defaultColumns = [];
List<List<dynamic>> defaultData = [
  [
    'Style Name List',
    null,
    1,
    2,
  ],
  [
    'Style Name Sync...',
    1,
    1,
    1,
  ],
  [
    'Style Name Sync...',
    1,
    1,
    1,
  ],
  [
    'Style Name Sync...',
    1,
    1,
    1,
  ]
];

class _StyleTableState extends State<StyleTable> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        if (defaultColumns.isNotEmpty)
          for (var header in defaultColumns)
            DataColumn(
              label: Text(header),
            )
        else
          for (var column in List.filled(defaultData.length, ''))
            DataColumn(label: Text(column))
      ],
      headingRowHeight: defaultColumns.isEmpty ? 0 : 44,
      rows: [
        for (List<dynamic> row in defaultData)
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
