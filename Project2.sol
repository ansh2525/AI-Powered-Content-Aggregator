// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AIPoweredContentAggregator {
    address public owner;
    uint256 public contentCount = 0;

    struct Content {
        uint256 id;
        string title;
        string url;
        address payable author;
    }

    mapping(uint256 => Content) public contents;

    event ContentSubmitted(
        uint256 id,
        string title,
        string url,
        address payable author
    );

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function submitContent(string memory _title, string memory _url) public {
        contentCount++;
        contents[contentCount] = Content(contentCount, _title, _url, payable(msg.sender));
        emit ContentSubmitted(contentCount, _title, _url, payable(msg.sender));
    }

    function getContent(uint256 _id) public view returns (Content memory) {
        require(_id > 0 && _id <= contentCount, "Content ID out of range");
        return contents[_id];
    }

    function withdraw() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}