// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.7.0 <=0.9.0; 
pragma experimental ABIEncoderV2;
/**
 * This is the business interface into charged particles. It hides the complexities of direct interaction with the Charged Particles contracts. 
 * @dev Tony
 */

interface IRoofChargeParticleBroker { 
 
        // lease deposit operations
        
        function createLeaseDeposit(address _landLordAddress, string memory _leaseName, address _tenant, uint256 _depositAmount, uint256 _rentAmount ) external returns (uint256 _leaseDepositReference, uint256 _creationDate);
        
        function getInterestOnDeposit(address _tenantAddress, string memory _leaseId)  external returns (uint256 _depositInterest, uint256 _depositPrinciple);

        function closeLeaseDeposit(address _landLordAddress, address _tenant, string memory _leaseName) external returns (uint256 _depositPrinciple, uint256 _depositInterest, uint256 _roofFee, uint256 _tenantAward, uint256 _closureReference, uint256 _closeDate);

        // lease rent operations
 
        function createRentDeposit(address _tenantAddress, string memory _leaseId,  uint256 _rentAmount) external returns (uint256 _rentDepositReference, uint256 _creationDate);
        
        function getInterestOnRent(address _landLordAddress, string memory _leaseId)  external returns (uint256 _rentInterest, uint256 roofFee);

        function closeRentDeposit(address landLordAddress, string memory leaseId) external returns (uint256 _rentPrinciple, uint256 _rentInterest, uint256 _landLordAward, uint256 _roofFee);
} 
