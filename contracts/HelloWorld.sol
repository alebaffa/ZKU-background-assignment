// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title Ballot
 * @notice Implements a modified voting process along with vote delegation
 */

contract HelloWorld {
   
    /**
     * @dev private so that it is accessible only from the retrieveNumber function
     */
    uint private _num; 

    /**
     * @notice set the internal number
     * @dev external because the requirements do not mention whether it is needed to be called internally or not.
     * @param unsigned integer provided by user
     */
    function storeNumber(uint num) external {
        _num = num;
    }

    /** 
     * @notice retrieve the internal number
     * @dev view is set to not spend gas
     * @return uint 
    */ 
    function retrieveNumber() external view returns(uint) {
        return _num;
    }
}
