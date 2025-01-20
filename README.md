# Unhandled Exception during JSON Decoding in Dart

This repository demonstrates a common error in Dart applications: failing to handle exceptions that can occur during JSON decoding using the `dart:convert` library.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version with improved error handling. 

## Problem

The original code lacks proper error handling when the API response is not valid JSON. This results in a runtime crash. 

## Solution

The solution involves wrapping the `json.decode` call in a `try-catch` block, allowing you to gracefully handle potential `FormatException` exceptions and other issues, preventing the application from crashing.