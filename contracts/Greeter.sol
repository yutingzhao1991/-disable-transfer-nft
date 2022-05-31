// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "erc721a/contracts/ERC721A.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract DisableTransferNFT is ERC721A, Ownable, ReentrancyGuard {
    constructor(string memory initBaseURI)
        ERC721A("DisableTransferNFT", "DisableTransferNFT")
    {}

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) public override {
        require(false, "safeTransferFrom disabled");
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public override {
        require(false, "safeTransferFrom disabled");
    }

    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public override {
        require(false, "transferFrom disabled");
    }
}
