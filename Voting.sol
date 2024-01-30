// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.1;

contract Vote{
    struct Voter{
        string name;
        uint age;
        uint voterId;
        string gender;
        uint voteCandidateId;
        address voterAddress;
    }

    struct Candidate{
        string name;
        string party;
        uint age;
        string gender;
        uint candidateId;
        address candidateAddress;
        uint votes;
    }

    address electionCommision;
    address public winner;

    uint nextVoterId = 1;
    uint nextCandidateId = 1;

    uint startTime;
    uint endTime;

    mapping (uint => Voter) voterDetails;
    mapping (uint => Candidate) candidateDetails;
    bool stopVoting;

    constructor() {

    }

    modifier isVotingOver(){
        
    }

}