pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";

/**
 * @title Storage for Module contract
 * @notice Contract is abstract
 */
contract ModuleStorage {
    address public factory;

    address public securityToken;

    bytes32 public constant FEE_ADMIN = "FEE_ADMIN";

    bytes32 internal constant TREASURY = 0xaae8817359f3dcb67d050f44f3e49f982e0359d90ca4b5f18569926304aaece6;

    IERC20 public polyToken;

    /**
     * @notice Constructor
     * @param _securityToken Address of the security token
     * @param _polyAddress Address of the polytoken
     */
    constructor(address _securityToken, address _polyAddress) public {
        securityToken = _securityToken;
        factory = msg.sender;
        polyToken = IERC20(_polyAddress);
    }

}
