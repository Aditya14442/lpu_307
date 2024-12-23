// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyOtherContract { 
    uint256 public age = 29;
    
    function getAge() public view returns (uint256) {
        return age;
    }

}

contract CONTRACTB {
    
    function getAgeFromOtherContract(address _contractAddess) public view returns (uint256) {
        MyOtherContract other = MyOtherContract(_contractAddess); // pointing to the deployed contract
        uint256 age = other.getAge(); // calling the actual function
        return age;
    }

}