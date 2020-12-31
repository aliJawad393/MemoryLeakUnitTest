# MemoryLeakUnitTest

 Unit Test to detect Memory Leaks
 
The project demonstrates how to write unit tests for a class to detect if it causes memory leak. Download the project and open in Xcode. Run all the tests, using shortcut Command-U, to see failing test in class “WithMemoryLeakUnitTests” which indicates memory leak in class under test “WithMemoryLeak”

Why Memory Leak?

Objects of classes “WithMemoryLeak” and “Service” hold strong references to each other which leads to reference cycle.

How is it detected using Unit Test?

In class WithMemoryLeakUnitTests, we hold a weak reference to System under Test(sut) on line no 18. We are asserting for the weak reference to be nil in tearDown method(line no 11) which is invoked after every test. Ideally, this assertion should pass as the sut object should go away from memory after the test “testMemoryLeak” is completed. In real, the object is not nil because retain cycle keeps it in memory which leads to failed test.

On the contrary, the “testMemoryLeak” test in class “WithoutMemoryLeakUnitTests” passes because class under test “WithoutMemoryLeak” does not have memory leak, as a result, nil assertion on line no 9 is passed. Any future changes causing memory leak will make the test to fail.
