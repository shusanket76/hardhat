// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract SimpleStorage {
    mapping(string => int256) public findNumber;
    struct ContactAddres {
        string name;
        int256 number;
    }
    ContactAddres[] public contactAddressArray;

    function saveNumber(string memory _name, int256 number) public {
        ContactAddres memory contact = ContactAddres("shusanket", 1234567);
        contactAddressArray.push(contact);
        findNumber[_name] = number;
    }

    function checkPhoneNumber(
        string memory initial
    ) public view returns (int256) {
        int256 number = findNumber[initial];
        return number;
    }
}
