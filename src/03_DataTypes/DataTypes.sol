// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract DataTypes {
	bool public boo = true;
	uint8 public u8 = 1;
	uint256 public u256 = 456;
	uint public u = 123;
	int8 public i8 = -1;
	int256 public i256 = 456;
	int public i = -123;

	int public minInt = type(int).min;
	int public maxInt = type(int).max;

	address public addr = 0x10ED43C718714eb63d5aA57B78B54704E256024E;

	/** 
	 *	@dev notes:
	 *	Dalam solidity, Tipe data 'byte' merepresentasikan sebaris kumpulan bytes
	 *	Solidity punya dua jenis tipe data bytes
	 *		- fixed size byte arrays
	 *		- dynamically-sized byte arrays
	 *	Istilah bytes di solidity merepresentasikan sebuah array bytes dinamis
	 *	ini adalah kependekan dari byte[]
	 */
	bytes1 a = 0xb5;	// [10110101]
	bytes1 b = 0x56; 	// [01010110]

	 /**
	  *	 @dev default value
	  *  unassigned variables punya default value
	  */
	bool public defaultBoo;		// false
	uint public defaultUint;	// 0
	int public defaultInt;		// 0
	address public defaultAddr;	// 0x0000000000000000000000000000000000000000  

}