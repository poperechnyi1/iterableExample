pragma solidity ^0.4.15;

import "./itMapsLib.sol";  
//import "https://github.com/szerintedmi/solidity-itMapsLib/itMapsLib.sol";    

contract User
{
  uint public sum = 0;

  using itMaps for itMaps.itMapAddressUint;

  itMaps.itMapAddressUint im_myAddressUintMap;

  function insert ( address key, uint value) returns (bool) {
    im_myAddressUintMap.insert( key, value);
    return true;
  }

  function getValueBYINDEX(uint _index) constant returns(uint){
    return im_myAddressUintMap.getValueByIndex(_index);
  }

  function getKeyBYINDEX(uint _index) constant returns(address){
    return im_myAddressUintMap.getKeyByIndex(_index);
  }

  function getValueByADDRESS(address _key) constant returns(uint){
    return im_myAddressUintMap.get(_key);
  }

  function getSize() constant returns (uint size){
    return im_myAddressUintMap.size();
  }


  function sumAllOwners() returns(uint){
    for(uint i; i<im_myAddressUintMap.size(); i++){
      sum += im_myAddressUintMap.get(im_myAddressUintMap.getKeyByIndex(i));
    }
  }

  
}