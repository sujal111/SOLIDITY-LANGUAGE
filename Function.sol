A function is a group of reusable code which can be called anywhere in your program. This eliminates the need of writing the same code again and again. It helps programmers in writing modular codes. Functions allow a programmer to divide a big program into a number of small and manageable functions.

Like any other advanced programming language, Solidity also supports all the features necessary to write modular code using functions. This section explains how to write your own functions in Solidity.

Function Definition
Before we use a function, we need to define it. The most common way to define a function in Solidity is by using the function keyword, followed by a unique function name, a list of parameters (that might be empty), and a statement block surrounded by curly braces.

//SYNTAX
function function-name(parameter-list) scope returns() {
   //statements
}

//EXAMPLE
pragma solidity ^0.5.0;

contract Test {
   function getResult() public view returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint result = a + b;
      return result;
   }
}


