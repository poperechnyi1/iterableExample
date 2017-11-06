pragma solidity ^0.4.15;

import "./itMapsLib.sol";  
//import "https://github.com/szerintedmi/solidity-itMapsLib/itMapsLib.sol";    

contract User
{
  using itMaps for itMaps.itMapAddressUint;

  itMaps.itMapAddressUint im_myAddressUintMap;

  function insert ( address key, uint value) returns (bool) {
    im_myAddressUintMap.insert( key, value);
    return true;
  }


  function sumAllValues () public returns (uint){
    uint sum = 0;
    for(var i = 0; i<getSize(); i++ ){
      sum += im_myAddressUintMap.getValueByIndex(i);
    }
    return sum;
  }

  function getSize() constant returns (uint size){
    
    return im_myAddressUintMap.size();
  }

  
}