pragma solidity ^0.6.0;
contract MyContract{
    //State Variables
    string public myString="Hello, World!";
    bytes32 public myByes32="Hello, World";
    int public myInt=1;
    uint public myUint=1;
    uint256 public myUint256=1;
    uint8 public myUint8=1;
    address public myAddress= 0x5A0b54D5ac17e0Aadc383d2db4380a0D3E029c4c;
    struct MyStruct{
        uint MyInt;
        string myString;

    }
    MyStruct public myStruct=MyStruct(1,"Hello World");


    //  Local Variables
    function getValue() public pure returns(uint) {
        uint value=1;
        return value;

    }

}
