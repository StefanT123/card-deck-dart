import 'dart:io';

void main() {
    // print(printName());
    // forLoop();
}

String printName() {
    stdout.writeln('What\'s your name?');
    String name = stdin.readLineSync();

    return 'My name is $name';
}

void forLoop() {
    for (int i = 0; i < 10; i++) {
        print(i);
    }
}
