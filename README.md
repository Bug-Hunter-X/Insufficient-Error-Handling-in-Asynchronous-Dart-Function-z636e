# Insufficient Error Handling in Asynchronous Dart Function

This example demonstrates a common error in asynchronous Dart functions: insufficient error handling.  The provided `fetchData` function uses a `try-catch` block, but only prints the error to the console.  This makes debugging and handling specific error scenarios difficult.

The solution demonstrates improved error handling by using a more informative error message and allowing the calling function to handle different exception types.