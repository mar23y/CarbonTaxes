// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <=0.9.0;



  contract carbotaxes{

  address  payable _address;

  address msgaddress;

  uint msgvalue;

  //STORE THE DATA
  uint [3]  array  = [100, 1000, 10000];

  //ADD THE ADDRESS OF THE OWNER
  constructor(address address_){

  address_ = _address;
  }
  //SAVE THE BALANCE INSIDE THE ADDRESS
  mapping(address=>uint) addData;

  //ADD THE THE TOTAL CARDON DIOXID THAT YOU PRODUCED IN ONE YEAR
  function setcarbon( uint carbon) public view {

  //REVERT THE DATA FOR EVERY SPECIFIC QUANTITY OF CARBON DIOXID
  for(uint i; i<1 ; i++){

  if(carbon<=array[i]){ 
  revert("the tax that you shold to paid  is 100$");

  }
  }

  for(uint a=1 ; a<2 ; a++){

  if(carbon<=array[a]){
  revert("the tax that you shold to paid  is 1000$");

  }
  }

  for(uint z=2; z<3 ; z++){

  if(carbon<=array[z]){
  revert("the tax that you shold to paid  is 10000$");

  }
  }

  revert("enter an number between 100t TO 10000t");
  
  }
  
  //STORE THE TAX FEES ON THE SMART CONTRACT
  function addfees() public payable {

  msgaddress = msg.sender;

  msgvalue = msg.value;

  addData[msgaddress] += msgvalue;
  

  }
  
  //SEND THE FEES TO THE OWNER OR THE ORGANISATION THAT MAKING THIS PROGRAM
  function sendfees() public payable{

  _address.transfer(msgvalue);

  }

  }
