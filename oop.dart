// private 변수 _변수명 -> 목적; 클래스의 내부 정보 공개 않도록.
// get ; 변수 접근, set ; 변수 정의

class Person{
  var name;
  var _age;
  //var get age => _age;
  
}

void main(){
  var person = Person();
  person._age = 32;
  print(person._age); // 다른 파일에서 접근 불가
  
}

class Person{
  var _name;
  String get name => _name;
  set setName(String n) => _name = n;     
}
void main(){
  var p = Person();
  p.setName = 'ok';
  print(p.name);
  
}
class Hero{
  String name = '영웅';
  void run(){
    print('run');
  }
  
}

class SuperHero extends Hero{ // Hero 상속
  @override // super class 기능 재정의
  void run(){
    super.run();
    this.fly();
    
  }
  void fly(){
    print('fly');
  }
  
}

void main(){
  var hero= SuperHero();
  hero.run();
  hero.fly();
  
}
// 상속
// 1. extends (상속) 2. super -> super class 접근 , 3. this -> 자기 자신 접근, 4. @override : 기능 재정의
class Hero{
  String name = '영웅';
  void run(){
    print('run');
  }
  
}

class SuperHero extends Hero{ // Hero 상속
  @override // super class 기능 재정의
  void run(){
    super.run();
    this.fly();
    
  }
  void fly(){
    print('fly');
  }
  
}

void main(){
  var hero= SuperHero();
  hero.run();
  hero.fly();
  
}
