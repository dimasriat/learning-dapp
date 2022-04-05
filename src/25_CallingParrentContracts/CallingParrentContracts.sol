// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract A {
    // this is called an event. you can emit events from your function
    // and they are logged into the transaction log
    // in our case, this will be useful for tracing function calls
    event Log(string message);

    function foo() public virtual {
        emit Log("A.foo() is called");
    }

    function bar() public virtual {
        emit Log("A.bar() is called");
    }
}

contract B is A {
	function foo() public virtual override {
		emit Log("B.foo() is called");
		A.foo();
	}
	function bar() public virtual override {
		emit Log("B.bar() is called");
		super.bar();
	}
}

contract C is A {
	function foo() public virtual override {
		emit Log("C.foo() is called");
		A.foo();
	}
	function bar() public virtual override {
		emit Log("C.bar() is called");
		super.bar();
	}
}

contract D is B, C {
	/**
	
	Try:
	-	call D.foo() and check the transaction logs
		although D inherits A, B, C ---- it only called C and then A
	-	call D.bar() and check the transaction logs
		spoiler --> D called C then B then finally A
		although super was called twice (by B and C) it only called once

	 */
	
	function foo() public override (B,C) {
		super.foo();
	}

	function bar() public override (B, C) {
		super.bar();
	}


}

