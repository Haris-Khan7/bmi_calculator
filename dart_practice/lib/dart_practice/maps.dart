void main() {
  print('Welcome To Dart !!');
  var mapName = {
    'Sardar': 'Farooq',
    'Muhammad': 'Jazlan',
    'Haris': 10240,
    'Room3': 7500.0,
  };
  mapName['Room3'] = 8000.0;
  mapName['Salaar'] = 'Yaar';

  print(mapName);
  mapName['Husnain'] = 'Jigar';
  mapName['Roll'] = 10244;
  mapName['Chemist'] = 'Dr Shoib';
  mapName['Designation'] = 'AP';
  mapName['Cgpa'] = 2.82;
  mapName['Nlp'] = false;
  print(mapName);
  print('IsNotEmpty${mapName.isNotEmpty}');
  print('isEmpty${mapName.isEmpty}');
  print('Length ${mapName.length}');
  print('Entries ${mapName.entries}');
  print('Values ${mapName.values}');
  print('Keys ${mapName.keys}');
  print('Run Time Type ${mapName.runtimeType}');
  print(mapName.containsKey('Nlp'));
  print(mapName.containsValue('true'));
  print(mapName.remove('Nlp'));
  print(mapName);

  var Login = {
    'username': 'Haris Khan',
    'password': 'Haris@1346',
    'statement': true,
  };
  print(Login);
}
