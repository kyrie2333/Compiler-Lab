# RUN: not llvm-mc -triple s390x-linux-gnu < %s 2> %t
# RUN: FileCheck < %t %s

#CHECK: error: invalid operand
#CHECK: ddb	%f0, -1
#CHECK: error: invalid operand
#CHECK: ddb	%f0, 4096

	ddb	%f0, -1
	ddb	%f0, 4096
