# String Error Handling Contract
Error Handling example through the use of require(), assert() and revert() statements.

## Error Handling Overview
- require: Used to validate input conditions. If a condition is not met, it reverts the transaction with an error message.
- assert: Used to check for conditions that should never be false. If an assertion fails, it indicates a critical error in the contract logic.
- revert: Used to manually revert the transaction with a custom error message when certain conditions are not met.

## Functions
`setString(string memory newString)`
- Sets the stored string to the provided newString.
- Error Handling:
  - Uses require to ensure newString is not empty.
  - Uses assert to ensure the stored string is not empty after setting it.

`appendString(string memory appendString)`
- Appends the provided appendString to the stored string.
- Error Handling:
  - Uses require to ensure appendString is not empty.
  - Uses assert to ensure the length of the stored string has increased after appending.

`clearString()`
- Clears the stored string.
- Error Handling:
  - Uses revert to check if the stored string is already empty and revert the transaction if true.
  - Uses assert to ensure the stored string is empty after clearing it.

# Example Usage
## Deploying the Contract
- Deploy the contract using Remix or any other Solidity development environment.
- Interact with the deployed contract by calling its functions.

## Setting a String
```solidity
contractInstance.setString("Hello, World!");
```
- This will set the stored string to "Hello, World!".
- If the input string is empty, the transaction will revert with the message "String cannot be empty".


## Appending a String
```solidity
contractInstance.appendString(" Solidity");
```
- This will append " Solidity" to the stored string.
- If the input string is empty, the transaction will revert with the message "String to append cannot be empty".


## Clearing the String
```solidity
contractInstance.clearString();
```
- This will clear the stored string.
- If the stored string is already empty, the transaction will revert with the message "String is already empty".

## Authors
Rushil Kumar

## License
This project is licensed under the MIT License - see the LICENSE.md file for details
