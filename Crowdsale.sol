pragma solidity ^0.5.0;

import "./PupperCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";

// @TODO: Inherit the crowdsale contracts
contract PupperCoinSale is Crowdsale, MintedCrowdsale, CappedCrowdsale, TimedCrowdsale, RefundablePostDeliveryCrowdsale {
    uint fakenow = now;

    constructor(
        // @TODO: Fill in the constructor parameters!
        uint rate, //rate in TKNBits
        address payable wallet, //sale beneficiary
        PupperCoin token, // the Puppercoin itself that the PupperCoinSale will work with
        uint goal, // fundraising goal is 300 Ether
        uint256 openingTime, // start fundraising
        uint256 closingTime    // end fundraising
    )
        // @TODO: Pass the constructor parameters to the crowdsale contracts.
        Crowdsale(rate, wallet, token)
        RefundableCrowdsale(goal)
        TimedCrowdsale(openingTime, closingTime)
        CappedCrowdsale(goal)
        public
    {
        // constructor can stay empty
    }
    function fastforward() public {
        fakenow += 3 hours;
    }
}

contract PupperCoinSaleDeployer {

    address public pupper_sale_address;
    address public token_address;

    constructor(
        // @TODO: Fill in the constructor parameters!
        string memory name,
        string memory symbol,
        address payable wallet,  // this address will receive all Ether raised by the sale
        uint goal
        // uint256 openingTime, // start fundraising
        // uint256 closingTime
    )
        public
    {
        // @TODO: create the PupperCoin and keep its address handy
        PupperCoin token = new PupperCoin(name, symbol, 0);
        token_address = address(token);


        // @TODO: create the PupperCoinSale and tell it about the token, set the goal, and set the open and close times to now and now + 24 weeks.
        PupperCoinSale pupper_sale = new PupperCoinSale(1, wallet, token, goal, now, now + 5 minutes);
        pupper_sale_address = address(pupper_sale);

        // make the PupperCoinSale contract a minter, then have the PupperCoinSaleDeployer renounce its minter role
        token.addMinter(pupper_sale_address);
        token.renounceMinter();
    }
}