// SPDX// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

interface IERC165{
    function supportsInterface(bytes4 interfaceId) external view returns(bool);
}

interface IERC721 is IERC165{
    function balanceOf(address owner) external view returns (uint balance);
    function ownerOf(uint tokenId) external view returns (address owner);
    function safeTransferFrom(address from, address to, uint tokenId) external;
    function safeTransferFrom(address from, address to, uint tokenId,bytes calldata data)external;
    function transferFrom(
        address from, address to, uint tokenId
    ) external;
    function approve(address to, uint tokenId) external view 

}

interface IERC721Receiver{
    function onERC721Received(
        address operator,
        address from,
        uint tokenId,
        bytes calldata data
    ) external returns (bytes4);
}

contract ERC721 is IERC721{
    event Transfer(address indexed from, address indexed to, uint indexed id);
    event Approval(address indexed owner, address indexed approved, uint indexed id);
    event ApprovalForAll(
        address indexed owner,
        address indexed operator,
        bool approved
        );

    mapping(uint => address) internal _ownerOf;
    mapping(address =>uint) internal _balanceOf;
    mapping(uint => address) interanal _approvals;
    mapping(address => mapping(address => bool)) public isApprovedForAll;
}