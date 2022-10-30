//main method START...
void main() {
  double result1 = areaOfCircle1(3.1416, 6.5); //method calling...PROGRAM-1
  print("The area of circle is = $result1");

  double result2 = areaOfCircle2(3.1416, 5); //method calling...PROGRAM-2
  print("The area of circle is = $result2");

  typeConversion("3.141592653589793"); //method calling...PROGRAM-3

  exceptionHandle("Let's learn to Flutter"); //method calling...PROGRAM-4


  //PROGRAM-5 (List...)
  //list creation
  List userList = ['Krishna', 'Azad', 'Gita', 'Mina', 'Raju'];
  //Homogeneous generic
  List<bool> booleanList = [true, false];
  //Heterogeneous generic
  List<dynamic> randomValueList = [2022, 'Gita', false, 3.1416, {'id': 465501}];

  //manually insertion data in list
  List<dynamic> oldUserInfo = [];
  oldUserInfo.add('Raju'); //name
  oldUserInfo.add(201543); //id
  oldUserInfo.add(23); //age
  oldUserInfo.add(true); //active SIM
  oldUserInfo.add(5.4); //height inches
  print("Old user info list = $oldUserInfo");

  //list operation
  List newUserInfo = []; //initially list is empty
  newUserInfo.addAll(oldUserInfo); //added data in empty list
  print("New user info list = $newUserInfo");

  newUserInfo.remove(true); //remove-delete data from list
  print(newUserInfo);
  newUserInfo.length; //size of newUserInfo list
  print(newUserInfo);
  newUserInfo.insert(2, 'Computer Science'); //department name insert in 2 no. index
  print(newUserInfo);

  //using spread operator(...) in List
  List<int> studentMarks = [78, 81, 76];
  List<String> studentName = ['Raju', 'Krishna', 'Azad'];
  List<dynamic> marksAndName = [89, ...studentMarks, 'Gita', ...studentName];
  print(marksAndName);
}
//main method END.


//PROGRAM-1 find the area of circle using Method
double areaOfCircle1(double pi, double r) {
  double area = pi * r * r;
  return area;
}

//PROGRAM-2 find the area of circle using Simplify_Method
double areaOfCircle2(double pi, double r) => pi * r * r;

//PROGRAM-3 type conversion using Method
void typeConversion(String piValue) {
  double pi = double.parse(piValue);
  print("The value of pi = $pi");
}

//PROGRAM-4 exception handling
void exceptionHandle(String string) {
  int num;
  try {
    num = int.parse(string);
    print(num);
  } catch (e) {
    print("Oh! It's not possible to convert to integer.");
  } finally {
    print("Method has worked successfully!");
  }
}