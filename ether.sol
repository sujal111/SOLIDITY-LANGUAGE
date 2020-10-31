assert(1 wei == 1);
assert(1 szabo == 1e12);
assert(1 finney == 1e15);
assert(1 ether == 1e18);
assert(2 ether == 2000 fenny);

Time Units
Similar to currency, Solidity has time units where lowest unit is second and we can use seconds, minutes, hours, days and weeks as suffix to denote time.

assert(1 seconds == 1);
assert(1 minutes == 60 seconds);
assert(1 hours == 60 minutes);
assert(1 day == 24 hours);
assert(1 week == 7 days);

lockchain. Following is the list of special variables −

Sr.No.	Special Variable & Description
1	
blockhash(uint blockNumber) returns (bytes32)

Hash of the given block - only works for 256 most recent, excluding current, blocks.

2	
block.coinbase (address payable)

Current block miner's address.

3	
block.difficulty (uint)

current block difficulty.

4	
block.gaslimit (uint)

Current block gaslimit.

5	
block.number (uint)

Current block number.

6	
block.timestamp

Current block timestamp as seconds since unix epoch.

7	
gasleft() returns (uint256)

Remaining gas.

8	
msg.data (bytes calldata)

Complete calldata.

9	
msg.sender (address payable)

Sender of the message (current call).

10	
msg.sig (bytes4)

First four bytes of the calldata (i.e. function identifier)

11	
msg.value (uint)

Number of wei sent with the message.

12	
now (uint)

Current block timestamp (alias for block.timestamp).

13	
tx.gasprice (uint)

Gas price of the transaction.

14	
tx.origin (address payable)

Sender of the transaction (full call chai


//Use of msg !

pragma solidity ^0.5.0;

contract LedgerBalance {
   mapping(address => uint) public balances;

   function updateBalance(uint newBalance) public {
      balances[msg.sender] = newBalance;
   }
}
contract Updater {
   function updateBalance() public returns (uint) {
      LedgerBalance ledgerBalance = new LedgerBalance();
      ledgerBalance.updateBalance(10);
      return ledgerBalance.balances(address(this));
   }
}