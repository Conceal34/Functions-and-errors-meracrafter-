// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract project {
    address public client;
    address public company;
    uint256 public price;

    constructor(address _company) payable {
        company = _company;
        client = msg.sender;
        price = msg.value;
    }
    receive() external payable {
        price += msg.value;
    }

    struct Timeline {
        string title;
        uint amount;
        bool locked;
        bool paid;
    }
    Timeline[] public timeline_details;

    modifier onlyCompany() {
        require(msg.sender == company, "Only COMPANY!!!!");
        _;
    }
    function createTimeline(string memory _title, uint _amt) public onlyCompany {
        Timeline memory _timeline_details = Timeline({
            title: _title,
            amount: _amt,
            locked: true,
            paid: false
        });
        timeline_details.push(_timeline_details);
    }
}
