//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Transactions{
    uint256 transactionCount;
    struct Transfer {
        address sender;
        address receiver;
        uint amount;
        uint256 timestamp;
        string message;   
        string keyword;
    }

    Transfer[] transactions;

    event OnTransfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    function newTransaction(address payable _receiver, uint _amount, string calldata _message, string calldata _keyword) external {
        transactionCount += 1;
        transactions.push(Transfer(
            msg.sender,
            _receiver,
            _amount,
            block.timestamp,
            _message,
            _keyword
        ));

        emit OnTransfer(msg.sender, _receiver, _amount, _message, block.timestamp, _keyword);
    }

    function getAllTransactions() external view returns(Transfer[] memory) {
        return transactions;
    }

    function getTransactionCount() external view returns(uint256){
        return transactionCount;
    }
}
