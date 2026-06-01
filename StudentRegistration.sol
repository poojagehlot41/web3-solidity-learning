// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentRegistration {

    string public studentName;
    uint public studentAge;

    function registerStudent(
        string memory _name,
        uint _age
    ) public {

        studentName = _name;
        studentAge = _age;
    }
}