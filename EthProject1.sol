// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringErrorHandling {

    string public storedString;

    function setString(string memory newString) public {

        require(bytes(newString).length > 0, "String cannot be empty");
        storedString = newString;

        assert(bytes(storedString).length > 0);
    }

    function appendString(string memory aString) public {

        require(bytes(aString).length > 0, "String to append cannot be empty");

        storedString = string(abi.encodePacked(storedString, aString));

        assert(bytes(storedString).length >= bytes(aString).length);
    }

    function clearString() public {
        
        if (bytes(storedString).length == 0) {
            revert("String is already empty");
        }

        storedString = "";

        
        assert(bytes(storedString).length == 0);
    }
}
