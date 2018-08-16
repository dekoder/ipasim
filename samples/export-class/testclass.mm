// Compiled with:
// TODO: Doesn't work due to the `-fuse-ld` option for some reason.
// ..\..\deps\llvm\build\Release\bin\clang -shared -target i386-pc-windows-msvc testclass.mm -o build/testclass.dll -fobjc-runtime=ios-11 -g -gcodeview -fuse-ld=..\..\deps\llvm\build\Release\bin\lld-link -L "..\..\src\objc\Debug" -llibobjc.A -Wl,-debug

// To get .obj:
// ..\..\deps\llvm\build\Release\bin\clang -target i386-pc-windows-msvc -c testclass.mm -o build/testclass-obj.obj -fobjc-runtime=ios-11 -g -gcodeview

// To get .dll from the .obj:
// ..\..\deps\llvm\build\Release\bin\lld-link -out:build\testclass.dll -defaultlib:libcmt -libpath:"..\..\src\objc\Debug" -libpath:".\build" -nologo -debug -dll testclass-obj.obj libobjc.A.lib

#include <cstdio> // for puts
#define BUILDING_TEST
#include "testclass.h"

@implementation TestClass
+ (void)initialize {}
+ (void)load {}
+ (void)sampleMethod {
    puts("Hello, world!");
}
@end
