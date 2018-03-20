pragma solidity ^0.4.18;

import './IModule.sol';

contract IDelegate is IModule {

    function checkPermission(address _delegate, address _module, bytes32 _perm) public returns(bool);

    function changePermission(address _delegate, address _module, bytes32 _perm, bool _valid) public returns(bool);

    function delegateDetails(address _delegate) public returns(bytes32);

}
