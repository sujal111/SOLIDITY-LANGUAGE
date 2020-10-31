
//State Variables
pragma solidity ^0.5.0;
contract SolidityTest {
   uint storedData;      // State variable
   constructor() public {
      storedData = 10;   // Using State variable
   }
}

//Local Variables
pragma solidity ^0.5.0;
contract SolidityTest {
   uint storedData; // State variable
   constructor() public {
      storedData = 10;   
   }
   function getResult() public view returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint result = a + b;
      return result; //access the local variable
   }
}


//SOLIDITY VARIABLE NAMING CONVENTION
Solidity Variable Names
While naming your variables in Solidity, keep the following rules in mind.

You should not use any of the Solidity reserved keywords as a variable name. These keywords are mentioned in the next section. For example, break or boolean variable names are not valid.

Solidity variable names should not start with a numeral (0-9). They must begin with a letter or an underscore character. For example, 123test is an invalid variable name but _123test is a valid one.

Solidity variable names are case-sensitive. For example, Name and name are two different variables.