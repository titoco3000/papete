��
��
.
Abs
x"T
y"T"
Ttype:

2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
E
AssignAddVariableOp
resource
value"dtype"
dtypetype�
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
�
BiasAddGrad
out_backprop"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
9
DivNoNan
x"T
y"T
z"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
A
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
,
Log
x"T
y"T"
Ttype:

2
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
SGD/m/test_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameSGD/m/test_out/bias
w
'SGD/m/test_out/bias/Read/ReadVariableOpReadVariableOpSGD/m/test_out/bias*
_output_shapes
:*
dtype0
�
SGD/m/test_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameSGD/m/test_out/kernel

)SGD/m/test_out/kernel/Read/ReadVariableOpReadVariableOpSGD/m/test_out/kernel*
_output_shapes

:*
dtype0
|
SGD/m/oculta1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameSGD/m/oculta1/bias
u
&SGD/m/oculta1/bias/Read/ReadVariableOpReadVariableOpSGD/m/oculta1/bias*
_output_shapes
:*
dtype0
�
SGD/m/oculta1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameSGD/m/oculta1/kernel
}
(SGD/m/oculta1/kernel/Read/ReadVariableOpReadVariableOpSGD/m/oculta1/kernel*
_output_shapes

:*
dtype0
|
SGD/m/test_in/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameSGD/m/test_in/bias
u
&SGD/m/test_in/bias/Read/ReadVariableOpReadVariableOpSGD/m/test_in/bias*
_output_shapes
:*
dtype0
�
SGD/m/test_in/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameSGD/m/test_in/kernel
}
(SGD/m/test_in/kernel/Read/ReadVariableOpReadVariableOpSGD/m/test_in/kernel*
_output_shapes

:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
test_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametest_out/bias
k
!test_out/bias/Read/ReadVariableOpReadVariableOptest_out/bias*
_output_shapes
:*
dtype0
z
test_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_nametest_out/kernel
s
#test_out/kernel/Read/ReadVariableOpReadVariableOptest_out/kernel*
_output_shapes

:*
dtype0
p
oculta1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoculta1/bias
i
 oculta1/bias/Read/ReadVariableOpReadVariableOpoculta1/bias*
_output_shapes
:*
dtype0
x
oculta1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameoculta1/kernel
q
"oculta1/kernel/Read/ReadVariableOpReadVariableOpoculta1/kernel*
_output_shapes

:*
dtype0
p
test_in/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametest_in/bias
i
 test_in/bias/Read/ReadVariableOpReadVariableOptest_in/bias*
_output_shapes
:*
dtype0
x
test_in/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nametest_in/kernel
q
"test_in/kernel/Read/ReadVariableOpReadVariableOptest_in/kernel*
_output_shapes

:*
dtype0
\
pred_inputsPlaceholder*
_output_shapes

:*
dtype0*
shape
:
�
StatefulPartitionedCallStatefulPartitionedCallpred_inputstest_in/kerneltest_in/biasoculta1/kerneloculta1/biastest_out/kerneltest_out/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_4290
e
train_training_inputPlaceholder*
_output_shapes

:*
dtype0*
shape
:
f
train_training_targetPlaceholder*
_output_shapes

:*
dtype0*
shape
:
�
StatefulPartitionedCall_1StatefulPartitionedCalltrain_training_inputtrain_training_targettest_in/kerneltest_in/biasoculta1/kerneloculta1/biastest_out/kerneltest_out/biastotal_1count_1learning_rateSGD/m/test_in/kernelSGD/m/test_in/biasSGD/m/oculta1/kernelSGD/m/oculta1/biasSGD/m/test_out/kernelSGD/m/test_out/bias	iterationtotalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_4271

NoOpNoOp
�$
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�#
value�#B�# B�#
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
dense_1
	dense_2

dense_3
	optimizer
call
training

signatures*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

kernel
bias*
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

kernel
bias*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

kernel
bias*
o
0
_variables
1_iterations
2_learning_rate
3_index_dict
4	momentums
5_update_step_xla*

6trace_0
7trace_1* 

8trace_0* 

	9train
:pred* 
NH
VARIABLE_VALUEtest_in/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEtest_in/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEoculta1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEoculta1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEtest_out/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEtest_out/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
	1

2*

;0
<1*
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
�
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

Btrace_0* 

Ctrace_0* 

0
1*

0
1*
* 
�
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

Itrace_0* 

Jtrace_0* 

0
1*

0
1*
* 
�
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

Ptrace_0* 

Qtrace_0* 
5
10
R1
S2
T3
U4
V5
W6*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
R0
S1
T2
U3
V4
W5*
* 
* 
* 
* 
* 
* 
8
X	variables
Y	keras_api
	Ztotal
	[count*
H
\	variables
]	keras_api
	^total
	_count
`
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
_Y
VARIABLE_VALUESGD/m/test_in/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/m/test_in/bias1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/oculta1/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/m/oculta1/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/test_out/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUESGD/m/test_out/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*

Z0
[1*

X	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

\	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenametest_in/kerneltest_in/biasoculta1/kerneloculta1/biastest_out/kerneltest_out/bias	iterationlearning_rateSGD/m/test_in/kernelSGD/m/test_in/biasSGD/m/oculta1/kernelSGD/m/oculta1/biasSGD/m/test_out/kernelSGD/m/test_out/biastotal_1count_1totalcountConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference__traced_save_5410
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenametest_in/kerneltest_in/biasoculta1/kerneloculta1/biastest_out/kerneltest_out/bias	iterationlearning_rateSGD/m/test_in/kernelSGD/m/test_in/biasSGD/m/oculta1/kernelSGD/m/oculta1/biasSGD/m/test_out/kernelSGD/m/test_out/biastotal_1count_1totalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_restore_5474��
�
�
B__inference_test_out_layer_call_and_return_conditional_losses_4424

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��^
mulMulmul/x:output:0BiasAdd:output:0*
T0*'
_output_shapes
:���������J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@U
powPowpow/x:output:0mul:z:0*
T0*'
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
addAddV2add/x:output:0pow:z:0*
T0*'
_output_shapes
:���������N
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
truedivRealDivtruediv/x:output:0add:z:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitytruediv:z:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_custom_model_layer_call_and_return_conditional_losses_4453

inputs
test_in_4437:
test_in_4439:
oculta1_4442:
oculta1_4444:
test_out_4447:
test_out_4449:
identity��oculta1/StatefulPartitionedCall�test_in/StatefulPartitionedCall� test_out/StatefulPartitionedCall�
test_in/StatefulPartitionedCallStatefulPartitionedCallinputstest_in_4437test_in_4439*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_test_in_layer_call_and_return_conditional_losses_4376�
oculta1/StatefulPartitionedCallStatefulPartitionedCall(test_in/StatefulPartitionedCall:output:0oculta1_4442oculta1_4444*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_oculta1_layer_call_and_return_conditional_losses_4400�
 test_out/StatefulPartitionedCallStatefulPartitionedCall(oculta1/StatefulPartitionedCall:output:0test_out_4447test_out_4449*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_test_out_layer_call_and_return_conditional_losses_4424x
IdentityIdentity)test_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^oculta1/StatefulPartitionedCall ^test_in/StatefulPartitionedCall!^test_out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2B
oculta1/StatefulPartitionedCalloculta1/StatefulPartitionedCall2B
test_in/StatefulPartitionedCalltest_in/StatefulPartitionedCall2D
 test_out/StatefulPartitionedCall test_out/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
__inference__wrapped_model_4354
input_1#
custom_model_4340:
custom_model_4342:#
custom_model_4344:
custom_model_4346:#
custom_model_4348:
custom_model_4350:
identity��$custom_model/StatefulPartitionedCall�
$custom_model/StatefulPartitionedCallStatefulPartitionedCallinput_1custom_model_4340custom_model_4342custom_model_4344custom_model_4346custom_model_4348custom_model_4350*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *
fR
__inference_call_4339|
IdentityIdentity-custom_model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp%^custom_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2L
$custom_model/StatefulPartitionedCall$custom_model/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
&__inference_test_in_layer_call_fn_5124

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_test_in_layer_call_and_return_conditional_losses_4376o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�M
�

 __inference__traced_restore_5474
file_prefix1
assignvariableop_test_in_kernel:-
assignvariableop_1_test_in_bias:3
!assignvariableop_2_oculta1_kernel:-
assignvariableop_3_oculta1_bias:4
"assignvariableop_4_test_out_kernel:.
 assignvariableop_5_test_out_bias:&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: 9
'assignvariableop_8_sgd_m_test_in_kernel:3
%assignvariableop_9_sgd_m_test_in_bias::
(assignvariableop_10_sgd_m_oculta1_kernel:4
&assignvariableop_11_sgd_m_oculta1_bias:;
)assignvariableop_12_sgd_m_test_out_kernel:5
'assignvariableop_13_sgd_m_test_out_bias:%
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: 
identity_19��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_test_in_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_test_in_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_oculta1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_oculta1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_test_out_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_test_out_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp'assignvariableop_8_sgd_m_test_in_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp%assignvariableop_9_sgd_m_test_in_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp(assignvariableop_10_sgd_m_oculta1_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp&assignvariableop_11_sgd_m_oculta1_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp)assignvariableop_12_sgd_m_test_out_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp'assignvariableop_13_sgd_m_test_out_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_19Identity_19:output:0*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
&__inference_oculta1_layer_call_fn_5151

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_oculta1_layer_call_and_return_conditional_losses_4400o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�,
�
F__inference_custom_model_layer_call_and_return_conditional_losses_5115

inputs8
&test_in_matmul_readvariableop_resource:5
'test_in_biasadd_readvariableop_resource:8
&oculta1_matmul_readvariableop_resource:5
'oculta1_biasadd_readvariableop_resource:9
'test_out_matmul_readvariableop_resource:6
(test_out_biasadd_readvariableop_resource:
identity��oculta1/BiasAdd/ReadVariableOp�oculta1/MatMul/ReadVariableOp�test_in/BiasAdd/ReadVariableOp�test_in/MatMul/ReadVariableOp�test_out/BiasAdd/ReadVariableOp�test_out/MatMul/ReadVariableOp�
test_in/MatMul/ReadVariableOpReadVariableOp&test_in_matmul_readvariableop_resource*
_output_shapes

:*
dtype0y
test_in/MatMulMatMulinputs%test_in/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
test_in/BiasAdd/ReadVariableOpReadVariableOp'test_in_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_in/BiasAddBiasAddtest_in/MatMul:product:0&test_in/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������R
test_in/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��v
test_in/mulMultest_in/mul/x:output:0test_in/BiasAdd:output:0*
T0*'
_output_shapes
:���������R
test_in/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@m
test_in/powPowtest_in/pow/x:output:0test_in/mul:z:0*
T0*'
_output_shapes
:���������R
test_in/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?o
test_in/addAddV2test_in/add/x:output:0test_in/pow:z:0*
T0*'
_output_shapes
:���������V
test_in/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?y
test_in/truedivRealDivtest_in/truediv/x:output:0test_in/add:z:0*
T0*'
_output_shapes
:����������
oculta1/MatMul/ReadVariableOpReadVariableOp&oculta1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
oculta1/MatMulMatMultest_in/truediv:z:0%oculta1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
oculta1/BiasAdd/ReadVariableOpReadVariableOp'oculta1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
oculta1/BiasAddBiasAddoculta1/MatMul:product:0&oculta1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������R
oculta1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��v
oculta1/mulMuloculta1/mul/x:output:0oculta1/BiasAdd:output:0*
T0*'
_output_shapes
:���������R
oculta1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@m
oculta1/powPowoculta1/pow/x:output:0oculta1/mul:z:0*
T0*'
_output_shapes
:���������R
oculta1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?o
oculta1/addAddV2oculta1/add/x:output:0oculta1/pow:z:0*
T0*'
_output_shapes
:���������V
oculta1/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?y
oculta1/truedivRealDivoculta1/truediv/x:output:0oculta1/add:z:0*
T0*'
_output_shapes
:����������
test_out/MatMul/ReadVariableOpReadVariableOp'test_out_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
test_out/MatMulMatMuloculta1/truediv:z:0&test_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
test_out/BiasAdd/ReadVariableOpReadVariableOp(test_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_out/BiasAddBiasAddtest_out/MatMul:product:0'test_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������S
test_out/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��y
test_out/mulMultest_out/mul/x:output:0test_out/BiasAdd:output:0*
T0*'
_output_shapes
:���������S
test_out/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@p
test_out/powPowtest_out/pow/x:output:0test_out/mul:z:0*
T0*'
_output_shapes
:���������S
test_out/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?r
test_out/addAddV2test_out/add/x:output:0test_out/pow:z:0*
T0*'
_output_shapes
:���������W
test_out/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?|
test_out/truedivRealDivtest_out/truediv/x:output:0test_out/add:z:0*
T0*'
_output_shapes
:���������c
IdentityIdentitytest_out/truediv:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^oculta1/BiasAdd/ReadVariableOp^oculta1/MatMul/ReadVariableOp^test_in/BiasAdd/ReadVariableOp^test_in/MatMul/ReadVariableOp ^test_out/BiasAdd/ReadVariableOp^test_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2@
oculta1/BiasAdd/ReadVariableOpoculta1/BiasAdd/ReadVariableOp2>
oculta1/MatMul/ReadVariableOpoculta1/MatMul/ReadVariableOp2@
test_in/BiasAdd/ReadVariableOptest_in/BiasAdd/ReadVariableOp2>
test_in/MatMul/ReadVariableOptest_in/MatMul/ReadVariableOp2B
test_out/BiasAdd/ReadVariableOptest_out/BiasAdd/ReadVariableOp2@
test_out/MatMul/ReadVariableOptest_out/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
#__inference___backward_call_333_534
placeholder8
4gradients_test_out_truediv_grad_realdiv_test_out_add:
6gradients_test_out_truediv_grad_neg_test_out_truediv_x0
,gradients_test_out_pow_grad_mul_test_out_mul2
.gradients_test_out_pow_grad_pow_test_out_pow_x2
.gradients_test_out_pow_grad_mul_2_test_out_pow4
0gradients_test_out_mul_grad_mul_test_out_biasadd4
0gradients_test_out_mul_grad_mul_1_test_out_mul_xH
Dgradients_test_out_matmul_grad_matmul_test_out_matmul_readvariableop;
7gradients_test_out_matmul_grad_matmul_1_oculta1_truediv6
2gradients_oculta1_truediv_grad_realdiv_oculta1_add8
4gradients_oculta1_truediv_grad_neg_oculta1_truediv_x.
*gradients_oculta1_pow_grad_mul_oculta1_mul0
,gradients_oculta1_pow_grad_pow_oculta1_pow_x0
,gradients_oculta1_pow_grad_mul_2_oculta1_pow2
.gradients_oculta1_mul_grad_mul_oculta1_biasadd2
.gradients_oculta1_mul_grad_mul_1_oculta1_mul_xF
Bgradients_oculta1_matmul_grad_matmul_oculta1_matmul_readvariableop:
6gradients_oculta1_matmul_grad_matmul_1_test_in_truediv6
2gradients_test_in_truediv_grad_realdiv_test_in_add8
4gradients_test_in_truediv_grad_neg_test_in_truediv_x.
*gradients_test_in_pow_grad_mul_test_in_mul0
,gradients_test_in_pow_grad_pow_test_in_pow_x0
,gradients_test_in_pow_grad_mul_2_test_in_pow2
.gradients_test_in_mul_grad_mul_test_in_biasadd2
.gradients_test_in_mul_grad_mul_1_test_in_mul_xF
Bgradients_test_in_matmul_grad_matmul_test_in_matmul_readvariableop1
-gradients_test_in_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:h
%gradients/test_out/truediv_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB x
'gradients/test_out/truediv_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      �
5gradients/test_out/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/test_out/truediv_grad/Shape:output:00gradients/test_out/truediv_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
'gradients/test_out/truediv_grad/RealDivRealDivgradients/grad_ys_0:output:04gradients_test_out_truediv_grad_realdiv_test_out_add*
T0*
_output_shapes

:�
#gradients/test_out/truediv_grad/SumSum+gradients/test_out/truediv_grad/RealDiv:z:0:gradients/test_out/truediv_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
'gradients/test_out/truediv_grad/ReshapeReshape,gradients/test_out/truediv_grad/Sum:output:0.gradients/test_out/truediv_grad/Shape:output:0*
T0*
_output_shapes
: �
#gradients/test_out/truediv_grad/NegNeg6gradients_test_out_truediv_grad_neg_test_out_truediv_x*
T0*
_output_shapes
: �
)gradients/test_out/truediv_grad/RealDiv_1RealDiv'gradients/test_out/truediv_grad/Neg:y:04gradients_test_out_truediv_grad_realdiv_test_out_add*
T0*
_output_shapes

:�
)gradients/test_out/truediv_grad/RealDiv_2RealDiv-gradients/test_out/truediv_grad/RealDiv_1:z:04gradients_test_out_truediv_grad_realdiv_test_out_add*
T0*
_output_shapes

:�
#gradients/test_out/truediv_grad/mulMulgradients/grad_ys_0:output:0-gradients/test_out/truediv_grad/RealDiv_2:z:0*
T0*
_output_shapes

:�
%gradients/test_out/truediv_grad/Sum_1Sum'gradients/test_out/truediv_grad/mul:z:0:gradients/test_out/truediv_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
)gradients/test_out/truediv_grad/Reshape_1Reshape.gradients/test_out/truediv_grad/Sum_1:output:00gradients/test_out/truediv_grad/Shape_1:output:0*
T0*
_output_shapes

:w
4gradients/test_out/add_grad/BroadcastGradientArgs/s0Const*
_output_shapes
: *
dtype0*
valueB y
6gradients/test_out/add_grad/BroadcastGradientArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
4gradients/test_out/add_grad/BroadcastGradientArgs/s1Const*
_output_shapes
:*
dtype0*
valueB"      �
1gradients/test_out/add_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/test_out/add_grad/BroadcastGradientArgs/s0_1:output:0=gradients/test_out/add_grad/BroadcastGradientArgs/s1:output:0*2
_output_shapes 
:���������:����������
1gradients/test_out/add_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
gradients/test_out/add_grad/SumSum2gradients/test_out/truediv_grad/Reshape_1:output:0:gradients/test_out/add_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: l
)gradients/test_out/add_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB n
+gradients/test_out/add_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
#gradients/test_out/add_grad/ReshapeReshape(gradients/test_out/add_grad/Sum:output:04gradients/test_out/add_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: �
gradients/test_out/pow_grad/mulMul2gradients/test_out/truediv_grad/Reshape_1:output:0,gradients_test_out_pow_grad_mul_test_out_mul*
T0*
_output_shapes

:f
!gradients/test_out/pow_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
gradients/test_out/pow_grad/subSub,gradients_test_out_pow_grad_mul_test_out_mul*gradients/test_out/pow_grad/sub/y:output:0*
T0*
_output_shapes

:�
gradients/test_out/pow_grad/PowPow.gradients_test_out_pow_grad_pow_test_out_pow_x#gradients/test_out/pow_grad/sub:z:0*
T0*
_output_shapes

:�
!gradients/test_out/pow_grad/mul_1Mul#gradients/test_out/pow_grad/mul:z:0#gradients/test_out/pow_grad/Pow:z:0*
T0*
_output_shapes

:�
1gradients/test_out/pow_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
gradients/test_out/pow_grad/SumSum%gradients/test_out/pow_grad/mul_1:z:0:gradients/test_out/pow_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: l
)gradients/test_out/pow_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB n
+gradients/test_out/pow_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
#gradients/test_out/pow_grad/ReshapeReshape(gradients/test_out/pow_grad/Sum:output:04gradients/test_out/pow_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: j
%gradients/test_out/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#gradients/test_out/pow_grad/GreaterGreater.gradients_test_out_pow_grad_pow_test_out_pow_x.gradients/test_out/pow_grad/Greater/y:output:0*
T0*
_output_shapes
: ~
;gradients/test_out/pow_grad/ones_like/Shape/shape_as_tensorConst*
_output_shapes
: *
dtype0*
valueB p
+gradients/test_out/pow_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%gradients/test_out/pow_grad/ones_likeFillDgradients/test_out/pow_grad/ones_like/Shape/shape_as_tensor:output:04gradients/test_out/pow_grad/ones_like/Const:output:0*
T0*
_output_shapes
: �
"gradients/test_out/pow_grad/SelectSelect'gradients/test_out/pow_grad/Greater:z:0.gradients_test_out_pow_grad_pow_test_out_pow_x.gradients/test_out/pow_grad/ones_like:output:0*
T0*
_output_shapes
: t
gradients/test_out/pow_grad/LogLog+gradients/test_out/pow_grad/Select:output:0*
T0*
_output_shapes
: k
&gradients/test_out/pow_grad/zeros_likeConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$gradients/test_out/pow_grad/Select_1Select'gradients/test_out/pow_grad/Greater:z:0#gradients/test_out/pow_grad/Log:y:0/gradients/test_out/pow_grad/zeros_like:output:0*
T0*
_output_shapes
: �
!gradients/test_out/pow_grad/mul_2Mul2gradients/test_out/truediv_grad/Reshape_1:output:0.gradients_test_out_pow_grad_mul_2_test_out_pow*
T0*
_output_shapes

:�
!gradients/test_out/pow_grad/mul_3Mul%gradients/test_out/pow_grad/mul_2:z:0-gradients/test_out/pow_grad/Select_1:output:0*
T0*
_output_shapes

:�
gradients/test_out/mul_grad/MulMul%gradients/test_out/pow_grad/mul_3:z:00gradients_test_out_mul_grad_mul_test_out_biasadd*
T0*
_output_shapes

:�
1gradients/test_out/mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
gradients/test_out/mul_grad/SumSum#gradients/test_out/mul_grad/Mul:z:0:gradients/test_out/mul_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: l
)gradients/test_out/mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB n
+gradients/test_out/mul_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
#gradients/test_out/mul_grad/ReshapeReshape(gradients/test_out/mul_grad/Sum:output:04gradients/test_out/mul_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: �
!gradients/test_out/mul_grad/Mul_1Mul0gradients_test_out_mul_grad_mul_1_test_out_mul_x%gradients/test_out/pow_grad/mul_3:z:0*
T0*
_output_shapes

:�
+gradients/test_out/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/test_out/mul_grad/Mul_1:z:0*
T0*
_output_shapes
:�
%gradients/test_out/MatMul_grad/MatMulMatMul%gradients/test_out/mul_grad/Mul_1:z:0Dgradients_test_out_matmul_grad_matmul_test_out_matmul_readvariableop*
T0*
_output_shapes

:*
transpose_b(�
'gradients/test_out/MatMul_grad/MatMul_1MatMul7gradients_test_out_matmul_grad_matmul_1_oculta1_truediv%gradients/test_out/mul_grad/Mul_1:z:0*
T0*
_output_shapes

:*
transpose_a(g
$gradients/oculta1/truediv_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB w
&gradients/oculta1/truediv_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      �
4gradients/oculta1/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/oculta1/truediv_grad/Shape:output:0/gradients/oculta1/truediv_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
&gradients/oculta1/truediv_grad/RealDivRealDiv/gradients/test_out/MatMul_grad/MatMul:product:02gradients_oculta1_truediv_grad_realdiv_oculta1_add*
T0*
_output_shapes

:�
"gradients/oculta1/truediv_grad/SumSum*gradients/oculta1/truediv_grad/RealDiv:z:09gradients/oculta1/truediv_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
&gradients/oculta1/truediv_grad/ReshapeReshape+gradients/oculta1/truediv_grad/Sum:output:0-gradients/oculta1/truediv_grad/Shape:output:0*
T0*
_output_shapes
: �
"gradients/oculta1/truediv_grad/NegNeg4gradients_oculta1_truediv_grad_neg_oculta1_truediv_x*
T0*
_output_shapes
: �
(gradients/oculta1/truediv_grad/RealDiv_1RealDiv&gradients/oculta1/truediv_grad/Neg:y:02gradients_oculta1_truediv_grad_realdiv_oculta1_add*
T0*
_output_shapes

:�
(gradients/oculta1/truediv_grad/RealDiv_2RealDiv,gradients/oculta1/truediv_grad/RealDiv_1:z:02gradients_oculta1_truediv_grad_realdiv_oculta1_add*
T0*
_output_shapes

:�
"gradients/oculta1/truediv_grad/mulMul/gradients/test_out/MatMul_grad/MatMul:product:0,gradients/oculta1/truediv_grad/RealDiv_2:z:0*
T0*
_output_shapes

:�
$gradients/oculta1/truediv_grad/Sum_1Sum&gradients/oculta1/truediv_grad/mul:z:09gradients/oculta1/truediv_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
(gradients/oculta1/truediv_grad/Reshape_1Reshape-gradients/oculta1/truediv_grad/Sum_1:output:0/gradients/oculta1/truediv_grad/Shape_1:output:0*
T0*
_output_shapes

:v
3gradients/oculta1/add_grad/BroadcastGradientArgs/s0Const*
_output_shapes
: *
dtype0*
valueB x
5gradients/oculta1/add_grad/BroadcastGradientArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
3gradients/oculta1/add_grad/BroadcastGradientArgs/s1Const*
_output_shapes
:*
dtype0*
valueB"      �
0gradients/oculta1/add_grad/BroadcastGradientArgsBroadcastGradientArgs>gradients/oculta1/add_grad/BroadcastGradientArgs/s0_1:output:0<gradients/oculta1/add_grad/BroadcastGradientArgs/s1:output:0*2
_output_shapes 
:���������:����������
0gradients/oculta1/add_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
gradients/oculta1/add_grad/SumSum1gradients/oculta1/truediv_grad/Reshape_1:output:09gradients/oculta1/add_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: k
(gradients/oculta1/add_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB m
*gradients/oculta1/add_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
"gradients/oculta1/add_grad/ReshapeReshape'gradients/oculta1/add_grad/Sum:output:03gradients/oculta1/add_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: �
gradients/oculta1/pow_grad/mulMul1gradients/oculta1/truediv_grad/Reshape_1:output:0*gradients_oculta1_pow_grad_mul_oculta1_mul*
T0*
_output_shapes

:e
 gradients/oculta1/pow_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
gradients/oculta1/pow_grad/subSub*gradients_oculta1_pow_grad_mul_oculta1_mul)gradients/oculta1/pow_grad/sub/y:output:0*
T0*
_output_shapes

:�
gradients/oculta1/pow_grad/PowPow,gradients_oculta1_pow_grad_pow_oculta1_pow_x"gradients/oculta1/pow_grad/sub:z:0*
T0*
_output_shapes

:�
 gradients/oculta1/pow_grad/mul_1Mul"gradients/oculta1/pow_grad/mul:z:0"gradients/oculta1/pow_grad/Pow:z:0*
T0*
_output_shapes

:�
0gradients/oculta1/pow_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
gradients/oculta1/pow_grad/SumSum$gradients/oculta1/pow_grad/mul_1:z:09gradients/oculta1/pow_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: k
(gradients/oculta1/pow_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB m
*gradients/oculta1/pow_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
"gradients/oculta1/pow_grad/ReshapeReshape'gradients/oculta1/pow_grad/Sum:output:03gradients/oculta1/pow_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: i
$gradients/oculta1/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"gradients/oculta1/pow_grad/GreaterGreater,gradients_oculta1_pow_grad_pow_oculta1_pow_x-gradients/oculta1/pow_grad/Greater/y:output:0*
T0*
_output_shapes
: }
:gradients/oculta1/pow_grad/ones_like/Shape/shape_as_tensorConst*
_output_shapes
: *
dtype0*
valueB o
*gradients/oculta1/pow_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$gradients/oculta1/pow_grad/ones_likeFillCgradients/oculta1/pow_grad/ones_like/Shape/shape_as_tensor:output:03gradients/oculta1/pow_grad/ones_like/Const:output:0*
T0*
_output_shapes
: �
!gradients/oculta1/pow_grad/SelectSelect&gradients/oculta1/pow_grad/Greater:z:0,gradients_oculta1_pow_grad_pow_oculta1_pow_x-gradients/oculta1/pow_grad/ones_like:output:0*
T0*
_output_shapes
: r
gradients/oculta1/pow_grad/LogLog*gradients/oculta1/pow_grad/Select:output:0*
T0*
_output_shapes
: j
%gradients/oculta1/pow_grad/zeros_likeConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#gradients/oculta1/pow_grad/Select_1Select&gradients/oculta1/pow_grad/Greater:z:0"gradients/oculta1/pow_grad/Log:y:0.gradients/oculta1/pow_grad/zeros_like:output:0*
T0*
_output_shapes
: �
 gradients/oculta1/pow_grad/mul_2Mul1gradients/oculta1/truediv_grad/Reshape_1:output:0,gradients_oculta1_pow_grad_mul_2_oculta1_pow*
T0*
_output_shapes

:�
 gradients/oculta1/pow_grad/mul_3Mul$gradients/oculta1/pow_grad/mul_2:z:0,gradients/oculta1/pow_grad/Select_1:output:0*
T0*
_output_shapes

:�
gradients/oculta1/mul_grad/MulMul$gradients/oculta1/pow_grad/mul_3:z:0.gradients_oculta1_mul_grad_mul_oculta1_biasadd*
T0*
_output_shapes

:�
0gradients/oculta1/mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
gradients/oculta1/mul_grad/SumSum"gradients/oculta1/mul_grad/Mul:z:09gradients/oculta1/mul_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: k
(gradients/oculta1/mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB m
*gradients/oculta1/mul_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
"gradients/oculta1/mul_grad/ReshapeReshape'gradients/oculta1/mul_grad/Sum:output:03gradients/oculta1/mul_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: �
 gradients/oculta1/mul_grad/Mul_1Mul.gradients_oculta1_mul_grad_mul_1_oculta1_mul_x$gradients/oculta1/pow_grad/mul_3:z:0*
T0*
_output_shapes

:�
*gradients/oculta1/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/oculta1/mul_grad/Mul_1:z:0*
T0*
_output_shapes
:�
$gradients/oculta1/MatMul_grad/MatMulMatMul$gradients/oculta1/mul_grad/Mul_1:z:0Bgradients_oculta1_matmul_grad_matmul_oculta1_matmul_readvariableop*
T0*
_output_shapes

:*
transpose_b(�
&gradients/oculta1/MatMul_grad/MatMul_1MatMul6gradients_oculta1_matmul_grad_matmul_1_test_in_truediv$gradients/oculta1/mul_grad/Mul_1:z:0*
T0*
_output_shapes

:*
transpose_a(g
$gradients/test_in/truediv_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB w
&gradients/test_in/truediv_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      �
4gradients/test_in/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/test_in/truediv_grad/Shape:output:0/gradients/test_in/truediv_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
&gradients/test_in/truediv_grad/RealDivRealDiv.gradients/oculta1/MatMul_grad/MatMul:product:02gradients_test_in_truediv_grad_realdiv_test_in_add*
T0*
_output_shapes

:�
"gradients/test_in/truediv_grad/SumSum*gradients/test_in/truediv_grad/RealDiv:z:09gradients/test_in/truediv_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
&gradients/test_in/truediv_grad/ReshapeReshape+gradients/test_in/truediv_grad/Sum:output:0-gradients/test_in/truediv_grad/Shape:output:0*
T0*
_output_shapes
: �
"gradients/test_in/truediv_grad/NegNeg4gradients_test_in_truediv_grad_neg_test_in_truediv_x*
T0*
_output_shapes
: �
(gradients/test_in/truediv_grad/RealDiv_1RealDiv&gradients/test_in/truediv_grad/Neg:y:02gradients_test_in_truediv_grad_realdiv_test_in_add*
T0*
_output_shapes

:�
(gradients/test_in/truediv_grad/RealDiv_2RealDiv,gradients/test_in/truediv_grad/RealDiv_1:z:02gradients_test_in_truediv_grad_realdiv_test_in_add*
T0*
_output_shapes

:�
"gradients/test_in/truediv_grad/mulMul.gradients/oculta1/MatMul_grad/MatMul:product:0,gradients/test_in/truediv_grad/RealDiv_2:z:0*
T0*
_output_shapes

:�
$gradients/test_in/truediv_grad/Sum_1Sum&gradients/test_in/truediv_grad/mul:z:09gradients/test_in/truediv_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
(gradients/test_in/truediv_grad/Reshape_1Reshape-gradients/test_in/truediv_grad/Sum_1:output:0/gradients/test_in/truediv_grad/Shape_1:output:0*
T0*
_output_shapes

:v
3gradients/test_in/add_grad/BroadcastGradientArgs/s0Const*
_output_shapes
: *
dtype0*
valueB x
5gradients/test_in/add_grad/BroadcastGradientArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
3gradients/test_in/add_grad/BroadcastGradientArgs/s1Const*
_output_shapes
:*
dtype0*
valueB"      �
0gradients/test_in/add_grad/BroadcastGradientArgsBroadcastGradientArgs>gradients/test_in/add_grad/BroadcastGradientArgs/s0_1:output:0<gradients/test_in/add_grad/BroadcastGradientArgs/s1:output:0*2
_output_shapes 
:���������:����������
0gradients/test_in/add_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
gradients/test_in/add_grad/SumSum1gradients/test_in/truediv_grad/Reshape_1:output:09gradients/test_in/add_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: k
(gradients/test_in/add_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB m
*gradients/test_in/add_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
"gradients/test_in/add_grad/ReshapeReshape'gradients/test_in/add_grad/Sum:output:03gradients/test_in/add_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: �
gradients/test_in/pow_grad/mulMul1gradients/test_in/truediv_grad/Reshape_1:output:0*gradients_test_in_pow_grad_mul_test_in_mul*
T0*
_output_shapes

:e
 gradients/test_in/pow_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
gradients/test_in/pow_grad/subSub*gradients_test_in_pow_grad_mul_test_in_mul)gradients/test_in/pow_grad/sub/y:output:0*
T0*
_output_shapes

:�
gradients/test_in/pow_grad/PowPow,gradients_test_in_pow_grad_pow_test_in_pow_x"gradients/test_in/pow_grad/sub:z:0*
T0*
_output_shapes

:�
 gradients/test_in/pow_grad/mul_1Mul"gradients/test_in/pow_grad/mul:z:0"gradients/test_in/pow_grad/Pow:z:0*
T0*
_output_shapes

:�
0gradients/test_in/pow_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
gradients/test_in/pow_grad/SumSum$gradients/test_in/pow_grad/mul_1:z:09gradients/test_in/pow_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: k
(gradients/test_in/pow_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB m
*gradients/test_in/pow_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
"gradients/test_in/pow_grad/ReshapeReshape'gradients/test_in/pow_grad/Sum:output:03gradients/test_in/pow_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: i
$gradients/test_in/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"gradients/test_in/pow_grad/GreaterGreater,gradients_test_in_pow_grad_pow_test_in_pow_x-gradients/test_in/pow_grad/Greater/y:output:0*
T0*
_output_shapes
: }
:gradients/test_in/pow_grad/ones_like/Shape/shape_as_tensorConst*
_output_shapes
: *
dtype0*
valueB o
*gradients/test_in/pow_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$gradients/test_in/pow_grad/ones_likeFillCgradients/test_in/pow_grad/ones_like/Shape/shape_as_tensor:output:03gradients/test_in/pow_grad/ones_like/Const:output:0*
T0*
_output_shapes
: �
!gradients/test_in/pow_grad/SelectSelect&gradients/test_in/pow_grad/Greater:z:0,gradients_test_in_pow_grad_pow_test_in_pow_x-gradients/test_in/pow_grad/ones_like:output:0*
T0*
_output_shapes
: r
gradients/test_in/pow_grad/LogLog*gradients/test_in/pow_grad/Select:output:0*
T0*
_output_shapes
: j
%gradients/test_in/pow_grad/zeros_likeConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#gradients/test_in/pow_grad/Select_1Select&gradients/test_in/pow_grad/Greater:z:0"gradients/test_in/pow_grad/Log:y:0.gradients/test_in/pow_grad/zeros_like:output:0*
T0*
_output_shapes
: �
 gradients/test_in/pow_grad/mul_2Mul1gradients/test_in/truediv_grad/Reshape_1:output:0,gradients_test_in_pow_grad_mul_2_test_in_pow*
T0*
_output_shapes

:�
 gradients/test_in/pow_grad/mul_3Mul$gradients/test_in/pow_grad/mul_2:z:0,gradients/test_in/pow_grad/Select_1:output:0*
T0*
_output_shapes

:�
gradients/test_in/mul_grad/MulMul$gradients/test_in/pow_grad/mul_3:z:0.gradients_test_in_mul_grad_mul_test_in_biasadd*
T0*
_output_shapes

:�
0gradients/test_in/mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
gradients/test_in/mul_grad/SumSum"gradients/test_in/mul_grad/Mul:z:09gradients/test_in/mul_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: k
(gradients/test_in/mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB m
*gradients/test_in/mul_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
"gradients/test_in/mul_grad/ReshapeReshape'gradients/test_in/mul_grad/Sum:output:03gradients/test_in/mul_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: �
 gradients/test_in/mul_grad/Mul_1Mul.gradients_test_in_mul_grad_mul_1_test_in_mul_x$gradients/test_in/pow_grad/mul_3:z:0*
T0*
_output_shapes

:�
*gradients/test_in/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/test_in/mul_grad/Mul_1:z:0*
T0*
_output_shapes
:�
$gradients/test_in/MatMul_grad/MatMulMatMul$gradients/test_in/mul_grad/Mul_1:z:0Bgradients_test_in_matmul_grad_matmul_test_in_matmul_readvariableop*
T0*
_output_shapes

:*
transpose_b(�
&gradients/test_in/MatMul_grad/MatMul_1MatMul-gradients_test_in_matmul_grad_matmul_1_inputs$gradients/test_in/mul_grad/Mul_1:z:0*
T0*
_output_shapes

:*
transpose_a(m
IdentityIdentity.gradients/test_in/MatMul_grad/MatMul:product:0*
T0*
_output_shapes

:q

Identity_1Identity0gradients/test_in/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:p

Identity_2Identity3gradients/test_in/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:q

Identity_3Identity0gradients/oculta1/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:p

Identity_4Identity3gradients/oculta1/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:r

Identity_5Identity1gradients/test_out/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:q

Identity_6Identity4gradients/test_out/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: :: ::: :::: :: ::: :::: :: ::: ::*-
forward_function_name__forward_call_533:$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$
 

_output_shapes

::$	 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::$  

_output_shapes

:
�
�
+__inference_custom_model_layer_call_fn_5069

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_custom_model_layer_call_and_return_conditional_losses_4453o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
__inference__traced_save_5410
file_prefix7
%read_disablecopyonread_test_in_kernel:3
%read_1_disablecopyonread_test_in_bias:9
'read_2_disablecopyonread_oculta1_kernel:3
%read_3_disablecopyonread_oculta1_bias::
(read_4_disablecopyonread_test_out_kernel:4
&read_5_disablecopyonread_test_out_bias:,
"read_6_disablecopyonread_iteration:	 0
&read_7_disablecopyonread_learning_rate: ?
-read_8_disablecopyonread_sgd_m_test_in_kernel:9
+read_9_disablecopyonread_sgd_m_test_in_bias:@
.read_10_disablecopyonread_sgd_m_oculta1_kernel::
,read_11_disablecopyonread_sgd_m_oculta1_bias:A
/read_12_disablecopyonread_sgd_m_test_out_kernel:;
-read_13_disablecopyonread_sgd_m_test_out_bias:+
!read_14_disablecopyonread_total_1: +
!read_15_disablecopyonread_count_1: )
read_16_disablecopyonread_total: )
read_17_disablecopyonread_count: 
savev2_const
identity_37��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_test_in_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_test_in_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_test_in_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_test_in_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:{
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_oculta1_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_oculta1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_oculta1_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_oculta1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_test_out_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_test_out_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_test_out_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_test_out_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_6/DisableCopyOnReadDisableCopyOnRead"read_6_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp"read_6_disablecopyonread_iteration^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_learning_rate^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_8/DisableCopyOnReadDisableCopyOnRead-read_8_disablecopyonread_sgd_m_test_in_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp-read_8_disablecopyonread_sgd_m_test_in_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_9/DisableCopyOnReadDisableCopyOnRead+read_9_disablecopyonread_sgd_m_test_in_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp+read_9_disablecopyonread_sgd_m_test_in_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead.read_10_disablecopyonread_sgd_m_oculta1_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp.read_10_disablecopyonread_sgd_m_oculta1_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_11/DisableCopyOnReadDisableCopyOnRead,read_11_disablecopyonread_sgd_m_oculta1_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp,read_11_disablecopyonread_sgd_m_oculta1_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_12/DisableCopyOnReadDisableCopyOnRead/read_12_disablecopyonread_sgd_m_test_out_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp/read_12_disablecopyonread_sgd_m_test_out_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_13/DisableCopyOnReadDisableCopyOnRead-read_13_disablecopyonread_sgd_m_test_out_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp-read_13_disablecopyonread_sgd_m_test_out_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_14/DisableCopyOnReadDisableCopyOnRead!read_14_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp!read_14_disablecopyonread_total_1^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_15/DisableCopyOnReadDisableCopyOnRead!read_15_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp!read_15_disablecopyonread_count_1^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_16/DisableCopyOnReadDisableCopyOnReadread_16_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOpread_16_disablecopyonread_total^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_17/DisableCopyOnReadDisableCopyOnReadread_17_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOpread_17_disablecopyonread_count^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *!
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_36Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_37IdentityIdentity_36:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
A__inference_test_in_layer_call_and_return_conditional_losses_4376

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��^
mulMulmul/x:output:0BiasAdd:output:0*
T0*'
_output_shapes
:���������J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@U
powPowpow/x:output:0mul:z:0*
T0*'
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
addAddV2add/x:output:0pow:z:0*
T0*'
_output_shapes
:���������N
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
truedivRealDivtruediv/x:output:0add:z:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitytruediv:z:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
!__inference_internal_grad_fn_5318
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11M
IdentityIdentityresult_grads_0*
T0*
_output_shapes

:K

Identity_1Identityresult_grads_1*
T0*
_output_shapes
:O

Identity_2Identityresult_grads_2*
T0*
_output_shapes

:K

Identity_3Identityresult_grads_3*
T0*
_output_shapes
:O

Identity_4Identityresult_grads_4*
T0*
_output_shapes

:K

Identity_5Identityresult_grads_5*
T0*
_output_shapes
:�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5*
T
2**
_gradient_op_typeCustomGradient-5293*t
_output_shapesb
`::::::::::::S

Identity_6IdentityIdentityN:output:0*
T0*
_output_shapes

:O

Identity_7IdentityIdentityN:output:1*
T0*
_output_shapes
:S

Identity_8IdentityIdentityN:output:2*
T0*
_output_shapes

:O

Identity_9IdentityIdentityN:output:3*
T0*
_output_shapes
:T
Identity_10IdentityIdentityN:output:4*
T0*
_output_shapes

:P
Identity_11IdentityIdentityN:output:5*
T0*
_output_shapes
:"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*s
_input_shapesb
`:::::::::::::KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:O
K

_output_shapes

:
)
_user_specified_nameresult_grads_10:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:NJ

_output_shapes

:
(
_user_specified_nameresult_grads_8:JF

_output_shapes
:
(
_user_specified_nameresult_grads_7:NJ

_output_shapes

:
(
_user_specified_nameresult_grads_6:JF

_output_shapes
:
(
_user_specified_nameresult_grads_5:NJ

_output_shapes

:
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:
(
_user_specified_nameresult_grads_3:NJ

_output_shapes

:
(
_user_specified_nameresult_grads_2:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:N J

_output_shapes

:
(
_user_specified_nameresult_grads_0
�
�
B__inference_test_out_layer_call_and_return_conditional_losses_5196

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��^
mulMulmul/x:output:0BiasAdd:output:0*
T0*'
_output_shapes
:���������J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@U
powPowpow/x:output:0mul:z:0*
T0*'
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
addAddV2add/x:output:0pow:z:0*
T0*'
_output_shapes
:���������N
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
truedivRealDivtruediv/x:output:0add:z:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitytruediv:z:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
__inference_training_4226
training_input
training_target#
custom_model_4007:
custom_model_4009:#
custom_model_4011:
custom_model_4013:#
custom_model_4015:
custom_model_4017:&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: '
mul_1_readvariableop_resource: )
readvariableop_resource:'
readvariableop_2_resource:+
readvariableop_4_resource:'
readvariableop_6_resource:+
readvariableop_8_resource:(
readvariableop_10_resource:(
assignaddvariableop_8_resource:	 (
assignaddvariableop_9_resource: )
assignaddvariableop_10_resource: 

identity_8��AssignAddVariableOp�AssignAddVariableOp_1�AssignAddVariableOp_10�AssignAddVariableOp_2�AssignAddVariableOp_3�AssignAddVariableOp_4�AssignAddVariableOp_5�AssignAddVariableOp_6�AssignAddVariableOp_7�AssignAddVariableOp_8�AssignAddVariableOp_9�AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_10�ReadVariableOp_11�ReadVariableOp_2�ReadVariableOp_3�ReadVariableOp_4�ReadVariableOp_5�ReadVariableOp_6�ReadVariableOp_7�ReadVariableOp_8�ReadVariableOp_9�$custom_model/StatefulPartitionedCall�div_no_nan/ReadVariableOp�div_no_nan/ReadVariableOp_1�div_no_nan_1/ReadVariableOp�div_no_nan_1/ReadVariableOp_1�mul_1/ReadVariableOp�mul_11/ReadVariableOp�mul_3/ReadVariableOp�mul_5/ReadVariableOp�mul_7/ReadVariableOp�mul_9/ReadVariableOp�
$custom_model/StatefulPartitionedCallStatefulPartitionedCalltraining_inputcustom_model_4007custom_model_4009custom_model_4011custom_model_4013custom_model_4015custom_model_4017*
Tin
	2*(
Tout 
2*
_collective_manager_ids
 *�
_output_shapes�
�::: :: ::: :::: :: ::: :::: :: ::: ::*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *
fR
__forward_call_533�
$mean_squared_error/SquaredDifferenceSquaredDifference-custom_model/StatefulPartitionedCall:output:0training_target*
T0*
_output_shapes

:t
)mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
mean_squared_error/MeanMean(mean_squared_error/SquaredDifference:z:02mean_squared_error/Mean/reduction_indices:output:0*
T0*
_output_shapes
:k
&mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$mean_squared_error/weighted_loss/MulMul mean_squared_error/Mean:output:0/mean_squared_error/weighted_loss/Const:output:0*
T0*
_output_shapes
:r
(mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
$mean_squared_error/weighted_loss/SumSum(mean_squared_error/weighted_loss/Mul:z:01mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: o
-mean_squared_error/weighted_loss/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
2mean_squared_error/weighted_loss/num_elements/CastCast6mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: g
%mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
&mean_squared_error/weighted_loss/rangeRange5mean_squared_error/weighted_loss/range/start:output:0.mean_squared_error/weighted_loss/Rank:output:05mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
&mean_squared_error/weighted_loss/Sum_1Sum-mean_squared_error/weighted_loss/Sum:output:0/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
&mean_squared_error/weighted_loss/valueDivNoNan/mean_squared_error/weighted_loss/Sum_1:output:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: V
ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: a
MulMul*mean_squared_error/weighted_loss/value:z:0Cast:y:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: l
SumSumMul:z:0range:output:0*
T0*&
 _has_manual_control_dependencies(*
_output_shapes
: �
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0H
Rank_1Const*
_output_shapes
: *
dtype0*
value	B : O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :k
range_1Rangerange_1/start:output:0Rank_1:output:0range_1/delta:output:0*
_output_shapes
: I
Sum_1SumCast:y:0range_1:output:0*
T0*
_output_shapes
: �
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceSum_1:output:0^AssignAddVariableOp*
_output_shapes
 *
dtype0I
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  �?}
:gradient_tape/mean_squared_error/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
<gradient_tape/mean_squared_error/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
Jgradient_tape/mean_squared_error/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsCgradient_tape/mean_squared_error/weighted_loss/value/Shape:output:0Egradient_tape/mean_squared_error/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:���������:����������
?gradient_tape/mean_squared_error/weighted_loss/value/div_no_nanDivNoNanones:output:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
8gradient_tape/mean_squared_error/weighted_loss/value/SumSumCgradient_tape/mean_squared_error/weighted_loss/value/div_no_nan:z:0Ogradient_tape/mean_squared_error/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
<gradient_tape/mean_squared_error/weighted_loss/value/ReshapeReshapeAgradient_tape/mean_squared_error/weighted_loss/value/Sum:output:0Cgradient_tape/mean_squared_error/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: �
8gradient_tape/mean_squared_error/weighted_loss/value/NegNeg/mean_squared_error/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: �
Agradient_tape/mean_squared_error/weighted_loss/value/div_no_nan_1DivNoNan<gradient_tape/mean_squared_error/weighted_loss/value/Neg:y:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
Agradient_tape/mean_squared_error/weighted_loss/value/div_no_nan_2DivNoNanEgradient_tape/mean_squared_error/weighted_loss/value/div_no_nan_1:z:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
8gradient_tape/mean_squared_error/weighted_loss/value/mulMulones:output:0Egradient_tape/mean_squared_error/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: �
:gradient_tape/mean_squared_error/weighted_loss/value/Sum_1Sum<gradient_tape/mean_squared_error/weighted_loss/value/mul:z:0Ogradient_tape/mean_squared_error/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
>gradient_tape/mean_squared_error/weighted_loss/value/Reshape_1ReshapeCgradient_tape/mean_squared_error/weighted_loss/value/Sum_1:output:0Egradient_tape/mean_squared_error/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: 
<gradient_tape/mean_squared_error/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB �
>gradient_tape/mean_squared_error/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
6gradient_tape/mean_squared_error/weighted_loss/ReshapeReshapeEgradient_tape/mean_squared_error/weighted_loss/value/Reshape:output:0Ggradient_tape/mean_squared_error/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: w
4gradient_tape/mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB �
3gradient_tape/mean_squared_error/weighted_loss/TileTile?gradient_tape/mean_squared_error/weighted_loss/Reshape:output:0=gradient_tape/mean_squared_error/weighted_loss/Const:output:0*
T0*
_output_shapes
: �
>gradient_tape/mean_squared_error/weighted_loss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
8gradient_tape/mean_squared_error/weighted_loss/Reshape_1Reshape<gradient_tape/mean_squared_error/weighted_loss/Tile:output:0Ggradient_tape/mean_squared_error/weighted_loss/Reshape_1/shape:output:0*
T0*
_output_shapes
:�
6gradient_tape/mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB:�
5gradient_tape/mean_squared_error/weighted_loss/Tile_1TileAgradient_tape/mean_squared_error/weighted_loss/Reshape_1:output:0?gradient_tape/mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
:�
2gradient_tape/mean_squared_error/weighted_loss/MulMul>gradient_tape/mean_squared_error/weighted_loss/Tile_1:output:0/mean_squared_error/weighted_loss/Const:output:0*
T0*
_output_shapes
:{
*gradient_tape/mean_squared_error/Maximum/xConst*
_output_shapes
:*
dtype0*
valueB"      l
*gradient_tape/mean_squared_error/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :�
(gradient_tape/mean_squared_error/MaximumMaximum3gradient_tape/mean_squared_error/Maximum/x:output:03gradient_tape/mean_squared_error/Maximum/y:output:0*
T0*
_output_shapes
:|
+gradient_tape/mean_squared_error/floordiv/xConst*
_output_shapes
:*
dtype0*
valueB"      �
)gradient_tape/mean_squared_error/floordivFloorDiv4gradient_tape/mean_squared_error/floordiv/x:output:0,gradient_tape/mean_squared_error/Maximum:z:0*
T0*
_output_shapes
:
.gradient_tape/mean_squared_error/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
(gradient_tape/mean_squared_error/ReshapeReshape6gradient_tape/mean_squared_error/weighted_loss/Mul:z:07gradient_tape/mean_squared_error/Reshape/shape:output:0*
T0*
_output_shapes

:�
/gradient_tape/mean_squared_error/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
%gradient_tape/mean_squared_error/TileTile1gradient_tape/mean_squared_error/Reshape:output:08gradient_tape/mean_squared_error/Tile/multiples:output:0*
T0*
_output_shapes

:k
&gradient_tape/mean_squared_error/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �@�
(gradient_tape/mean_squared_error/truedivRealDiv.gradient_tape/mean_squared_error/Tile:output:0/gradient_tape/mean_squared_error/Const:output:0*
T0*&
 _has_manual_control_dependencies(*
_output_shapes

:�
'gradient_tape/mean_squared_error/scalarConst)^gradient_tape/mean_squared_error/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @�
$gradient_tape/mean_squared_error/MulMul0gradient_tape/mean_squared_error/scalar:output:0,gradient_tape/mean_squared_error/truediv:z:0*
T0*
_output_shapes

:�
$gradient_tape/mean_squared_error/subSub-custom_model/StatefulPartitionedCall:output:0training_target)^gradient_tape/mean_squared_error/truediv*
T0*
_output_shapes

:�
&gradient_tape/mean_squared_error/mul_1Mul(gradient_tape/mean_squared_error/Mul:z:0(gradient_tape/mean_squared_error/sub:z:0*
T0*
_output_shapes

:�
9gradient_tape/mean_squared_error/BroadcastGradientArgs/s0Const*
_output_shapes
:*
dtype0*
valueB"      �
9gradient_tape/mean_squared_error/BroadcastGradientArgs/s1Const*
_output_shapes
:*
dtype0*
valueB"      �
6gradient_tape/mean_squared_error/BroadcastGradientArgsBroadcastGradientArgsBgradient_tape/mean_squared_error/BroadcastGradientArgs/s0:output:0Bgradient_tape/mean_squared_error/BroadcastGradientArgs/s1:output:0*2
_output_shapes 
:���������:����������
PartitionedCallPartitionedCall*gradient_tape/mean_squared_error/mul_1:z:0-custom_model/StatefulPartitionedCall:output:1-custom_model/StatefulPartitionedCall:output:2-custom_model/StatefulPartitionedCall:output:3-custom_model/StatefulPartitionedCall:output:4-custom_model/StatefulPartitionedCall:output:5-custom_model/StatefulPartitionedCall:output:6-custom_model/StatefulPartitionedCall:output:7-custom_model/StatefulPartitionedCall:output:8-custom_model/StatefulPartitionedCall:output:9.custom_model/StatefulPartitionedCall:output:10.custom_model/StatefulPartitionedCall:output:11.custom_model/StatefulPartitionedCall:output:12.custom_model/StatefulPartitionedCall:output:13.custom_model/StatefulPartitionedCall:output:14.custom_model/StatefulPartitionedCall:output:15.custom_model/StatefulPartitionedCall:output:16.custom_model/StatefulPartitionedCall:output:17.custom_model/StatefulPartitionedCall:output:18.custom_model/StatefulPartitionedCall:output:19.custom_model/StatefulPartitionedCall:output:20.custom_model/StatefulPartitionedCall:output:21.custom_model/StatefulPartitionedCall:output:22.custom_model/StatefulPartitionedCall:output:23.custom_model/StatefulPartitionedCall:output:24.custom_model/StatefulPartitionedCall:output:25.custom_model/StatefulPartitionedCall:output:26.custom_model/StatefulPartitionedCall:output:27*'
Tin 
2*
Tout
	2*
_collective_manager_ids
 *N
_output_shapes<
::::::::* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference___backward_call_333_534W
IdentityIdentityPartitionedCall:output:1*
T0*
_output_shapes

:U

Identity_1IdentityPartitionedCall:output:2*
T0*
_output_shapes
:Y

Identity_2IdentityPartitionedCall:output:3*
T0*
_output_shapes

:U

Identity_3IdentityPartitionedCall:output:4*
T0*
_output_shapes
:Y

Identity_4IdentityPartitionedCall:output:5*
T0*
_output_shapes

:U

Identity_5IdentityPartitionedCall:output:6*
T0*
_output_shapes
:�
	IdentityN	IdentityNPartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6*
T
2**
_gradient_op_typeCustomGradient-4131*t
_output_shapesb
`::::::::::::M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    G
NegNegIdentityN:output:0*
T0*
_output_shapes

:j
mul_1/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
: *
dtype0\
mul_1MulNeg:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:f
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0`
mul_2MulReadVariableOp:value:0Cast_1/x:output:0*
T0*
_output_shapes

:K
addAddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes

:�
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes

:*
dtype0�
AssignAddVariableOp_2AssignAddVariableOpcustom_model_4007ReadVariableOp_1:value:0%^custom_model/StatefulPartitionedCall*
_output_shapes
 *
dtype0M
Cast_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *    E
Neg_1NegIdentityN:output:1*
T0*
_output_shapes
:j
mul_3/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
: *
dtype0Z
mul_3Mul	Neg_1:y:0mul_3/ReadVariableOp:value:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0^
mul_4MulReadVariableOp_2:value:0Cast_2/x:output:0*
T0*
_output_shapes
:I
add_1AddV2	mul_3:z:0	mul_4:z:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_1*
_output_shapes
:*
dtype0�
AssignAddVariableOp_3AssignAddVariableOpcustom_model_4009ReadVariableOp_3:value:0%^custom_model/StatefulPartitionedCall*
_output_shapes
 *
dtype0M
Cast_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *    I
Neg_2NegIdentityN:output:2*
T0*
_output_shapes

:j
mul_5/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
: *
dtype0^
mul_5Mul	Neg_2:y:0mul_5/ReadVariableOp:value:0*
T0*
_output_shapes

:j
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes

:*
dtype0b
mul_6MulReadVariableOp_4:value:0Cast_3/x:output:0*
T0*
_output_shapes

:M
add_2AddV2	mul_5:z:0	mul_6:z:0*
T0*
_output_shapes

:�
AssignVariableOp_2AssignVariableOpreadvariableop_4_resource	add_2:z:0^ReadVariableOp_4*
_output_shapes
 *
dtype0*
validate_shape(
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource^AssignVariableOp_2*
_output_shapes

:*
dtype0�
AssignAddVariableOp_4AssignAddVariableOpcustom_model_4011ReadVariableOp_5:value:0%^custom_model/StatefulPartitionedCall*
_output_shapes
 *
dtype0M
Cast_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *    E
Neg_3NegIdentityN:output:3*
T0*
_output_shapes
:j
mul_7/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
: *
dtype0Z
mul_7Mul	Neg_3:y:0mul_7/ReadVariableOp:value:0*
T0*
_output_shapes
:f
ReadVariableOp_6ReadVariableOpreadvariableop_6_resource*
_output_shapes
:*
dtype0^
mul_8MulReadVariableOp_6:value:0Cast_4/x:output:0*
T0*
_output_shapes
:I
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpreadvariableop_6_resource	add_3:z:0^ReadVariableOp_6*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_7ReadVariableOpreadvariableop_6_resource^AssignVariableOp_3*
_output_shapes
:*
dtype0�
AssignAddVariableOp_5AssignAddVariableOpcustom_model_4013ReadVariableOp_7:value:0%^custom_model/StatefulPartitionedCall*
_output_shapes
 *
dtype0M
Cast_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *    I
Neg_4NegIdentityN:output:4*
T0*
_output_shapes

:j
mul_9/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
: *
dtype0^
mul_9Mul	Neg_4:y:0mul_9/ReadVariableOp:value:0*
T0*
_output_shapes

:j
ReadVariableOp_8ReadVariableOpreadvariableop_8_resource*
_output_shapes

:*
dtype0c
mul_10MulReadVariableOp_8:value:0Cast_5/x:output:0*
T0*
_output_shapes

:N
add_4AddV2	mul_9:z:0
mul_10:z:0*
T0*
_output_shapes

:�
AssignVariableOp_4AssignVariableOpreadvariableop_8_resource	add_4:z:0^ReadVariableOp_8*
_output_shapes
 *
dtype0*
validate_shape(
ReadVariableOp_9ReadVariableOpreadvariableop_8_resource^AssignVariableOp_4*
_output_shapes

:*
dtype0�
AssignAddVariableOp_6AssignAddVariableOpcustom_model_4015ReadVariableOp_9:value:0%^custom_model/StatefulPartitionedCall*
_output_shapes
 *
dtype0M
Cast_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *    E
Neg_5NegIdentityN:output:5*
T0*
_output_shapes
:k
mul_11/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
: *
dtype0\
mul_11Mul	Neg_5:y:0mul_11/ReadVariableOp:value:0*
T0*
_output_shapes
:h
ReadVariableOp_10ReadVariableOpreadvariableop_10_resource*
_output_shapes
:*
dtype0`
mul_12MulReadVariableOp_10:value:0Cast_6/x:output:0*
T0*
_output_shapes
:K
add_5AddV2
mul_11:z:0
mul_12:z:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpreadvariableop_10_resource	add_5:z:0^ReadVariableOp_10*
_output_shapes
 *
dtype0*
validate_shape(}
ReadVariableOp_11ReadVariableOpreadvariableop_10_resource^AssignVariableOp_5*
_output_shapes
:*
dtype0�
AssignAddVariableOp_7AssignAddVariableOpcustom_model_4017ReadVariableOp_11:value:0%^custom_model/StatefulPartitionedCall*
_output_shapes
 *
dtype0G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
AssignAddVariableOp_8AssignAddVariableOpassignaddvariableop_8_resourceConst:output:0*
_output_shapes
 *
dtype0	s
subSub-custom_model/StatefulPartitionedCall:output:0training_target*
T0*
_output_shapes

:<
AbsAbssub:z:0*
T0*
_output_shapes

:a
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������[
MeanMeanAbs:y:0Mean/reduction_indices:output:0*
T0*
_output_shapes
:Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: v
Sum_2SumMean:output:0Const_1:output:0*
T0*&
 _has_manual_control_dependencies(*
_output_shapes
: �
AssignAddVariableOp_9AssignAddVariableOpassignaddvariableop_9_resourceSum_2:output:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0F
SizeConst*
_output_shapes
: *
dtype0*
value	B :M
Cast_7CastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: �
AssignAddVariableOp_10AssignAddVariableOpassignaddvariableop_10_resource
Cast_7:y:0^AssignAddVariableOp_9*
_output_shapes
 *
dtype0�
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp*
_output_shapes
: *
dtype0�
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: G

Identity_6Identitydiv_no_nan:z:0*
T0*
_output_shapes
: �
div_no_nan_1/ReadVariableOpReadVariableOpassignaddvariableop_9_resource^AssignAddVariableOp_9*
_output_shapes
: *
dtype0�
div_no_nan_1/ReadVariableOp_1ReadVariableOpassignaddvariableop_10_resource^AssignAddVariableOp_10*
_output_shapes
: *
dtype0�
div_no_nan_1DivNoNan#div_no_nan_1/ReadVariableOp:value:0%div_no_nan_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_7Identitydiv_no_nan_1:z:0*
T0*
_output_shapes
: S

Identity_8IdentityIdentity_6:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_10^AssignAddVariableOp_2^AssignAddVariableOp_3^AssignAddVariableOp_4^AssignAddVariableOp_5^AssignAddVariableOp_6^AssignAddVariableOp_7^AssignAddVariableOp_8^AssignAddVariableOp_9^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_10^ReadVariableOp_11^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6^ReadVariableOp_7^ReadVariableOp_8^ReadVariableOp_9%^custom_model/StatefulPartitionedCall^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1^div_no_nan_1/ReadVariableOp^div_no_nan_1/ReadVariableOp_1^mul_1/ReadVariableOp^mul_11/ReadVariableOp^mul_3/ReadVariableOp^mul_5/ReadVariableOp^mul_7/ReadVariableOp^mul_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_8Identity_8:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8::: : : : : : : : : : : : : : : : : : 20
AssignAddVariableOp_10AssignAddVariableOp_102.
AssignAddVariableOp_1AssignAddVariableOp_12.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_32.
AssignAddVariableOp_4AssignAddVariableOp_42.
AssignAddVariableOp_5AssignAddVariableOp_52.
AssignAddVariableOp_6AssignAddVariableOp_62.
AssignAddVariableOp_7AssignAddVariableOp_72.
AssignAddVariableOp_8AssignAddVariableOp_82.
AssignAddVariableOp_9AssignAddVariableOp_92*
AssignAddVariableOpAssignAddVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52$
AssignVariableOpAssignVariableOp2&
ReadVariableOp_10ReadVariableOp_102&
ReadVariableOp_11ReadVariableOp_112$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_62$
ReadVariableOp_7ReadVariableOp_72$
ReadVariableOp_8ReadVariableOp_82$
ReadVariableOp_9ReadVariableOp_92 
ReadVariableOpReadVariableOp2L
$custom_model/StatefulPartitionedCall$custom_model/StatefulPartitionedCall2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_126
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2>
div_no_nan_1/ReadVariableOp_1div_no_nan_1/ReadVariableOp_12:
div_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2.
mul_11/ReadVariableOpmul_11/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp2,
mul_5/ReadVariableOpmul_5/ReadVariableOp2,
mul_7/ReadVariableOpmul_7/ReadVariableOp2,
mul_9/ReadVariableOpmul_9/ReadVariableOp:OK

_output_shapes

:
)
_user_specified_nametraining_target:N J

_output_shapes

:
(
_user_specified_nametraining_input
�
�
A__inference_test_in_layer_call_and_return_conditional_losses_5142

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��^
mulMulmul/x:output:0BiasAdd:output:0*
T0*'
_output_shapes
:���������J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@U
powPowpow/x:output:0mul:z:0*
T0*'
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
addAddV2add/x:output:0pow:z:0*
T0*'
_output_shapes
:���������N
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
truedivRealDivtruediv/x:output:0add:z:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitytruediv:z:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�;
�	
__forward_call_4918
inputs_08
&test_in_matmul_readvariableop_resource:5
'test_in_biasadd_readvariableop_resource:8
&oculta1_matmul_readvariableop_resource:5
'oculta1_biasadd_readvariableop_resource:9
'test_out_matmul_readvariableop_resource:6
(test_out_biasadd_readvariableop_resource:
identity
test_out_add
test_out_truediv_x
test_out_add_x
test_out_pow
test_out_pow_x
test_out_mul
test_out_mul_x
test_out_biasadd"
test_out_matmul_readvariableop
oculta1_truediv
oculta1_add
oculta1_truediv_x
oculta1_add_x
oculta1_pow
oculta1_pow_x
oculta1_mul
oculta1_mul_x
oculta1_biasadd!
oculta1_matmul_readvariableop
test_in_truediv
test_in_add
test_in_truediv_x
test_in_add_x
test_in_pow
test_in_pow_x
test_in_mul
test_in_mul_x
test_in_biasadd!
test_in_matmul_readvariableop

inputs��oculta1/BiasAdd/ReadVariableOp�oculta1/MatMul/ReadVariableOp�test_in/BiasAdd/ReadVariableOp�test_in/MatMul/ReadVariableOp�test_out/BiasAdd/ReadVariableOp�test_out/MatMul/ReadVariableOp�
test_in/MatMul/ReadVariableOpReadVariableOp&test_in_matmul_readvariableop_resource*
_output_shapes

:*
dtype0{
test_in/MatMulMatMulinputs_0%test_in/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
test_in/BiasAdd/ReadVariableOpReadVariableOp'test_in_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_in/BiasAddBiasAddtest_in/MatMul:product:0&test_in/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������R
test_in/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��v
test_in/mulMultest_in/mul/x:output:0test_in/BiasAdd:output:0*
T0*'
_output_shapes
:���������R
test_in/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@m
test_in/powPowtest_in/pow/x:output:0test_in/mul:z:0*
T0*'
_output_shapes
:���������R
test_in/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?o
test_in/addAddV2test_in/add/x:output:0test_in/pow:z:0*
T0*'
_output_shapes
:���������V
test_in/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?y
test_in/truedivRealDivtest_in/truediv/x:output:0test_in/add:z:0*
T0*'
_output_shapes
:����������
oculta1/MatMul/ReadVariableOpReadVariableOp&oculta1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
oculta1/MatMulMatMultest_in/truediv:z:0%oculta1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
oculta1/BiasAdd/ReadVariableOpReadVariableOp'oculta1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
oculta1/BiasAddBiasAddoculta1/MatMul:product:0&oculta1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������R
oculta1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��v
oculta1/mulMuloculta1/mul/x:output:0oculta1/BiasAdd:output:0*
T0*'
_output_shapes
:���������R
oculta1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@m
oculta1/powPowoculta1/pow/x:output:0oculta1/mul:z:0*
T0*'
_output_shapes
:���������R
oculta1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?o
oculta1/addAddV2oculta1/add/x:output:0oculta1/pow:z:0*
T0*'
_output_shapes
:���������V
oculta1/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?y
oculta1/truedivRealDivoculta1/truediv/x:output:0oculta1/add:z:0*
T0*'
_output_shapes
:����������
test_out/MatMul/ReadVariableOpReadVariableOp'test_out_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
test_out/MatMulMatMuloculta1/truediv:z:0&test_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
test_out/BiasAdd/ReadVariableOpReadVariableOp(test_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_out/BiasAddBiasAddtest_out/MatMul:product:0'test_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������S
test_out/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��y
test_out/mulMultest_out/mul/x:output:0test_out/BiasAdd:output:0*
T0*'
_output_shapes
:���������S
test_out/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@p
test_out/powPowtest_out/pow/x:output:0test_out/mul:z:0*
T0*'
_output_shapes
:���������S
test_out/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?r
test_out/addAddV2test_out/add/x:output:0test_out/pow:z:0*
T0*'
_output_shapes
:���������W
test_out/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?|
test_out/truedivRealDivtest_out/truediv/x:output:0test_out/add:z:0*
T0*'
_output_shapes
:���������c
IdentityIdentitytest_out/truediv:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^oculta1/BiasAdd/ReadVariableOp^oculta1/MatMul/ReadVariableOp^test_in/BiasAdd/ReadVariableOp^test_in/MatMul/ReadVariableOp ^test_out/BiasAdd/ReadVariableOp^test_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"'
oculta1_add_xoculta1/add/x:output:0"
oculta1_addoculta1/add:z:0"+
oculta1_biasaddoculta1/BiasAdd:output:0"F
oculta1_matmul_readvariableop%oculta1/MatMul/ReadVariableOp:value:0"'
oculta1_mul_xoculta1/mul/x:output:0"
oculta1_muloculta1/mul:z:0"'
oculta1_pow_xoculta1/pow/x:output:0"
oculta1_powoculta1/pow:z:0"/
oculta1_truediv_xoculta1/truediv/x:output:0"&
oculta1_truedivoculta1/truediv:z:0"'
test_in_add_xtest_in/add/x:output:0"
test_in_addtest_in/add:z:0"+
test_in_biasaddtest_in/BiasAdd:output:0"F
test_in_matmul_readvariableop%test_in/MatMul/ReadVariableOp:value:0"'
test_in_mul_xtest_in/mul/x:output:0"
test_in_multest_in/mul:z:0"'
test_in_pow_xtest_in/pow/x:output:0"
test_in_powtest_in/pow:z:0"/
test_in_truediv_xtest_in/truediv/x:output:0"&
test_in_truedivtest_in/truediv:z:0")
test_out_add_xtest_out/add/x:output:0" 
test_out_addtest_out/add:z:0"-
test_out_biasaddtest_out/BiasAdd:output:0"H
test_out_matmul_readvariableop&test_out/MatMul/ReadVariableOp:value:0")
test_out_mul_xtest_out/mul/x:output:0" 
test_out_multest_out/mul:z:0")
test_out_pow_xtest_out/pow/x:output:0" 
test_out_powtest_out/pow:z:0"1
test_out_truediv_xtest_out/truediv/x:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : *A
backward_function_name'%__inference___backward_call_4703_49192@
oculta1/BiasAdd/ReadVariableOpoculta1/BiasAdd/ReadVariableOp2>
oculta1/MatMul/ReadVariableOpoculta1/MatMul/ReadVariableOp2@
test_in/BiasAdd/ReadVariableOptest_in/BiasAdd/ReadVariableOp2>
test_in/MatMul/ReadVariableOptest_in/MatMul/ReadVariableOp2B
test_out/BiasAdd/ReadVariableOptest_out/BiasAdd/ReadVariableOp2@
test_out/MatMul/ReadVariableOptest_out/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_oculta1_layer_call_and_return_conditional_losses_5169

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��^
mulMulmul/x:output:0BiasAdd:output:0*
T0*'
_output_shapes
:���������J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@U
powPowpow/x:output:0mul:z:0*
T0*'
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
addAddV2add/x:output:0pow:z:0*
T0*'
_output_shapes
:���������N
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
truedivRealDivtruediv/x:output:0add:z:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitytruediv:z:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�*
�
__inference_call_4002

inputs8
&test_in_matmul_readvariableop_resource:5
'test_in_biasadd_readvariableop_resource:8
&oculta1_matmul_readvariableop_resource:5
'oculta1_biasadd_readvariableop_resource:9
'test_out_matmul_readvariableop_resource:6
(test_out_biasadd_readvariableop_resource:
identity��oculta1/BiasAdd/ReadVariableOp�oculta1/MatMul/ReadVariableOp�test_in/BiasAdd/ReadVariableOp�test_in/MatMul/ReadVariableOp�test_out/BiasAdd/ReadVariableOp�test_out/MatMul/ReadVariableOp�
test_in/MatMul/ReadVariableOpReadVariableOp&test_in_matmul_readvariableop_resource*
_output_shapes

:*
dtype0p
test_in/MatMulMatMulinputs%test_in/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
test_in/BiasAdd/ReadVariableOpReadVariableOp'test_in_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_in/BiasAddBiasAddtest_in/MatMul:product:0&test_in/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:R
test_in/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��m
test_in/mulMultest_in/mul/x:output:0test_in/BiasAdd:output:0*
T0*
_output_shapes

:R
test_in/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@d
test_in/powPowtest_in/pow/x:output:0test_in/mul:z:0*
T0*
_output_shapes

:R
test_in/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
test_in/addAddV2test_in/add/x:output:0test_in/pow:z:0*
T0*
_output_shapes

:V
test_in/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?p
test_in/truedivRealDivtest_in/truediv/x:output:0test_in/add:z:0*
T0*
_output_shapes

:�
oculta1/MatMul/ReadVariableOpReadVariableOp&oculta1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0}
oculta1/MatMulMatMultest_in/truediv:z:0%oculta1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
oculta1/BiasAdd/ReadVariableOpReadVariableOp'oculta1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
oculta1/BiasAddBiasAddoculta1/MatMul:product:0&oculta1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:R
oculta1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��m
oculta1/mulMuloculta1/mul/x:output:0oculta1/BiasAdd:output:0*
T0*
_output_shapes

:R
oculta1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@d
oculta1/powPowoculta1/pow/x:output:0oculta1/mul:z:0*
T0*
_output_shapes

:R
oculta1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
oculta1/addAddV2oculta1/add/x:output:0oculta1/pow:z:0*
T0*
_output_shapes

:V
oculta1/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?p
oculta1/truedivRealDivoculta1/truediv/x:output:0oculta1/add:z:0*
T0*
_output_shapes

:�
test_out/MatMul/ReadVariableOpReadVariableOp'test_out_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
test_out/MatMulMatMuloculta1/truediv:z:0&test_out/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
test_out/BiasAdd/ReadVariableOpReadVariableOp(test_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_out/BiasAddBiasAddtest_out/MatMul:product:0'test_out/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:S
test_out/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��p
test_out/mulMultest_out/mul/x:output:0test_out/BiasAdd:output:0*
T0*
_output_shapes

:S
test_out/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@g
test_out/powPowtest_out/pow/x:output:0test_out/mul:z:0*
T0*
_output_shapes

:S
test_out/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
test_out/addAddV2test_out/add/x:output:0test_out/pow:z:0*
T0*
_output_shapes

:W
test_out/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?s
test_out/truedivRealDivtest_out/truediv/x:output:0test_out/add:z:0*
T0*
_output_shapes

:Z
IdentityIdentitytest_out/truediv:z:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp^oculta1/BiasAdd/ReadVariableOp^oculta1/MatMul/ReadVariableOp^test_in/BiasAdd/ReadVariableOp^test_in/MatMul/ReadVariableOp ^test_out/BiasAdd/ReadVariableOp^test_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:: : : : : : 2@
oculta1/BiasAdd/ReadVariableOpoculta1/BiasAdd/ReadVariableOp2>
oculta1/MatMul/ReadVariableOpoculta1/MatMul/ReadVariableOp2@
test_in/BiasAdd/ReadVariableOptest_in/BiasAdd/ReadVariableOp2>
test_in/MatMul/ReadVariableOptest_in/MatMul/ReadVariableOp2B
test_out/BiasAdd/ReadVariableOptest_out/BiasAdd/ReadVariableOp2@
test_out/MatMul/ReadVariableOptest_out/MatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
�
�
'__inference_test_out_layer_call_fn_5178

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_test_out_layer_call_and_return_conditional_losses_4424o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
!__inference_internal_grad_fn_5278
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11M
IdentityIdentityresult_grads_0*
T0*
_output_shapes

:K

Identity_1Identityresult_grads_1*
T0*
_output_shapes
:O

Identity_2Identityresult_grads_2*
T0*
_output_shapes

:K

Identity_3Identityresult_grads_3*
T0*
_output_shapes
:O

Identity_4Identityresult_grads_4*
T0*
_output_shapes

:K

Identity_5Identityresult_grads_5*
T0*
_output_shapes
:�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5*
T
2**
_gradient_op_typeCustomGradient-5253*t
_output_shapesb
`::::::::::::S

Identity_6IdentityIdentityN:output:0*
T0*
_output_shapes

:O

Identity_7IdentityIdentityN:output:1*
T0*
_output_shapes
:S

Identity_8IdentityIdentityN:output:2*
T0*
_output_shapes

:O

Identity_9IdentityIdentityN:output:3*
T0*
_output_shapes
:T
Identity_10IdentityIdentityN:output:4*
T0*
_output_shapes

:P
Identity_11IdentityIdentityN:output:5*
T0*
_output_shapes
:"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*s
_input_shapesb
`:::::::::::::KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:O
K

_output_shapes

:
)
_user_specified_nameresult_grads_10:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:NJ

_output_shapes

:
(
_user_specified_nameresult_grads_8:JF

_output_shapes
:
(
_user_specified_nameresult_grads_7:NJ

_output_shapes

:
(
_user_specified_nameresult_grads_6:JF

_output_shapes
:
(
_user_specified_nameresult_grads_5:NJ

_output_shapes

:
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:
(
_user_specified_nameresult_grads_3:NJ

_output_shapes

:
(
_user_specified_nameresult_grads_2:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:N J

_output_shapes

:
(
_user_specified_nameresult_grads_0
�*
�
__inference_call_4563

inputs8
&test_in_matmul_readvariableop_resource:5
'test_in_biasadd_readvariableop_resource:8
&oculta1_matmul_readvariableop_resource:5
'oculta1_biasadd_readvariableop_resource:9
'test_out_matmul_readvariableop_resource:6
(test_out_biasadd_readvariableop_resource:
identity��oculta1/BiasAdd/ReadVariableOp�oculta1/MatMul/ReadVariableOp�test_in/BiasAdd/ReadVariableOp�test_in/MatMul/ReadVariableOp�test_out/BiasAdd/ReadVariableOp�test_out/MatMul/ReadVariableOp�
test_in/MatMul/ReadVariableOpReadVariableOp&test_in_matmul_readvariableop_resource*
_output_shapes

:*
dtype0p
test_in/MatMulMatMulinputs%test_in/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
test_in/BiasAdd/ReadVariableOpReadVariableOp'test_in_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_in/BiasAddBiasAddtest_in/MatMul:product:0&test_in/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:R
test_in/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��m
test_in/mulMultest_in/mul/x:output:0test_in/BiasAdd:output:0*
T0*
_output_shapes

:R
test_in/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@d
test_in/powPowtest_in/pow/x:output:0test_in/mul:z:0*
T0*
_output_shapes

:R
test_in/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
test_in/addAddV2test_in/add/x:output:0test_in/pow:z:0*
T0*
_output_shapes

:V
test_in/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?p
test_in/truedivRealDivtest_in/truediv/x:output:0test_in/add:z:0*
T0*
_output_shapes

:�
oculta1/MatMul/ReadVariableOpReadVariableOp&oculta1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0}
oculta1/MatMulMatMultest_in/truediv:z:0%oculta1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
oculta1/BiasAdd/ReadVariableOpReadVariableOp'oculta1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
oculta1/BiasAddBiasAddoculta1/MatMul:product:0&oculta1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:R
oculta1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��m
oculta1/mulMuloculta1/mul/x:output:0oculta1/BiasAdd:output:0*
T0*
_output_shapes

:R
oculta1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@d
oculta1/powPowoculta1/pow/x:output:0oculta1/mul:z:0*
T0*
_output_shapes

:R
oculta1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
oculta1/addAddV2oculta1/add/x:output:0oculta1/pow:z:0*
T0*
_output_shapes

:V
oculta1/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?p
oculta1/truedivRealDivoculta1/truediv/x:output:0oculta1/add:z:0*
T0*
_output_shapes

:�
test_out/MatMul/ReadVariableOpReadVariableOp'test_out_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
test_out/MatMulMatMuloculta1/truediv:z:0&test_out/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
test_out/BiasAdd/ReadVariableOpReadVariableOp(test_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_out/BiasAddBiasAddtest_out/MatMul:product:0'test_out/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:S
test_out/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��p
test_out/mulMultest_out/mul/x:output:0test_out/BiasAdd:output:0*
T0*
_output_shapes

:S
test_out/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@g
test_out/powPowtest_out/pow/x:output:0test_out/mul:z:0*
T0*
_output_shapes

:S
test_out/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
test_out/addAddV2test_out/add/x:output:0test_out/pow:z:0*
T0*
_output_shapes

:W
test_out/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?s
test_out/truedivRealDivtest_out/truediv/x:output:0test_out/add:z:0*
T0*
_output_shapes

:Z
IdentityIdentitytest_out/truediv:z:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp^oculta1/BiasAdd/ReadVariableOp^oculta1/MatMul/ReadVariableOp^test_in/BiasAdd/ReadVariableOp^test_in/MatMul/ReadVariableOp ^test_out/BiasAdd/ReadVariableOp^test_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:: : : : : : 2@
oculta1/BiasAdd/ReadVariableOpoculta1/BiasAdd/ReadVariableOp2>
oculta1/MatMul/ReadVariableOpoculta1/MatMul/ReadVariableOp2@
test_in/BiasAdd/ReadVariableOptest_in/BiasAdd/ReadVariableOp2>
test_in/MatMul/ReadVariableOptest_in/MatMul/ReadVariableOp2B
test_out/BiasAdd/ReadVariableOptest_out/BiasAdd/ReadVariableOp2@
test_out/MatMul/ReadVariableOptest_out/MatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
�
�
A__inference_oculta1_layer_call_and_return_conditional_losses_4400

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��^
mulMulmul/x:output:0BiasAdd:output:0*
T0*'
_output_shapes
:���������J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@U
powPowpow/x:output:0mul:z:0*
T0*'
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
addAddV2add/x:output:0pow:z:0*
T0*'
_output_shapes
:���������N
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
truedivRealDivtruediv/x:output:0add:z:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitytruediv:z:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
__inference_training_5052
training_input
training_target#
custom_model_4613:
custom_model_4615:#
custom_model_4617:
custom_model_4619:#
custom_model_4621:
custom_model_4623:&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: '
mul_1_readvariableop_resource: )
readvariableop_resource:'
readvariableop_2_resource:+
readvariableop_4_resource:'
readvariableop_6_resource:+
readvariableop_8_resource:(
readvariableop_10_resource:(
assignaddvariableop_8_resource:	 (
assignaddvariableop_9_resource: )
assignaddvariableop_10_resource: 

identity_8��AssignAddVariableOp�AssignAddVariableOp_1�AssignAddVariableOp_10�AssignAddVariableOp_2�AssignAddVariableOp_3�AssignAddVariableOp_4�AssignAddVariableOp_5�AssignAddVariableOp_6�AssignAddVariableOp_7�AssignAddVariableOp_8�AssignAddVariableOp_9�AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_10�ReadVariableOp_11�ReadVariableOp_2�ReadVariableOp_3�ReadVariableOp_4�ReadVariableOp_5�ReadVariableOp_6�ReadVariableOp_7�ReadVariableOp_8�ReadVariableOp_9�$custom_model/StatefulPartitionedCall�div_no_nan/ReadVariableOp�div_no_nan/ReadVariableOp_1�div_no_nan_1/ReadVariableOp�div_no_nan_1/ReadVariableOp_1�mul_1/ReadVariableOp�mul_11/ReadVariableOp�mul_3/ReadVariableOp�mul_5/ReadVariableOp�mul_7/ReadVariableOp�mul_9/ReadVariableOp�
$custom_model/StatefulPartitionedCallStatefulPartitionedCalltraining_inputcustom_model_4613custom_model_4615custom_model_4617custom_model_4619custom_model_4621custom_model_4623*
Tin
	2*+
Tout#
!2*
_collective_manager_ids
 *�
_output_shapes�
�::���������: : :���������: :���������: :���������::���������:���������: : :���������: :���������: :���������::���������:���������: : :���������: :���������: :���������::���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *
fR
__forward_call_4918�
$mean_squared_error/SquaredDifferenceSquaredDifference-custom_model/StatefulPartitionedCall:output:0training_target*
T0*
_output_shapes

:t
)mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
mean_squared_error/MeanMean(mean_squared_error/SquaredDifference:z:02mean_squared_error/Mean/reduction_indices:output:0*
T0*
_output_shapes
:k
&mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$mean_squared_error/weighted_loss/MulMul mean_squared_error/Mean:output:0/mean_squared_error/weighted_loss/Const:output:0*
T0*
_output_shapes
:r
(mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
$mean_squared_error/weighted_loss/SumSum(mean_squared_error/weighted_loss/Mul:z:01mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: o
-mean_squared_error/weighted_loss/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
2mean_squared_error/weighted_loss/num_elements/CastCast6mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: g
%mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
&mean_squared_error/weighted_loss/rangeRange5mean_squared_error/weighted_loss/range/start:output:0.mean_squared_error/weighted_loss/Rank:output:05mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
&mean_squared_error/weighted_loss/Sum_1Sum-mean_squared_error/weighted_loss/Sum:output:0/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
&mean_squared_error/weighted_loss/valueDivNoNan/mean_squared_error/weighted_loss/Sum_1:output:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: V
ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: a
MulMul*mean_squared_error/weighted_loss/value:z:0Cast:y:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: l
SumSumMul:z:0range:output:0*
T0*&
 _has_manual_control_dependencies(*
_output_shapes
: �
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0H
Rank_1Const*
_output_shapes
: *
dtype0*
value	B : O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :k
range_1Rangerange_1/start:output:0Rank_1:output:0range_1/delta:output:0*
_output_shapes
: I
Sum_1SumCast:y:0range_1:output:0*
T0*
_output_shapes
: �
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceSum_1:output:0^AssignAddVariableOp*
_output_shapes
 *
dtype0I
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  �?}
:gradient_tape/mean_squared_error/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
<gradient_tape/mean_squared_error/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
Jgradient_tape/mean_squared_error/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsCgradient_tape/mean_squared_error/weighted_loss/value/Shape:output:0Egradient_tape/mean_squared_error/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:���������:����������
?gradient_tape/mean_squared_error/weighted_loss/value/div_no_nanDivNoNanones:output:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
8gradient_tape/mean_squared_error/weighted_loss/value/SumSumCgradient_tape/mean_squared_error/weighted_loss/value/div_no_nan:z:0Ogradient_tape/mean_squared_error/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
<gradient_tape/mean_squared_error/weighted_loss/value/ReshapeReshapeAgradient_tape/mean_squared_error/weighted_loss/value/Sum:output:0Cgradient_tape/mean_squared_error/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: �
8gradient_tape/mean_squared_error/weighted_loss/value/NegNeg/mean_squared_error/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: �
Agradient_tape/mean_squared_error/weighted_loss/value/div_no_nan_1DivNoNan<gradient_tape/mean_squared_error/weighted_loss/value/Neg:y:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
Agradient_tape/mean_squared_error/weighted_loss/value/div_no_nan_2DivNoNanEgradient_tape/mean_squared_error/weighted_loss/value/div_no_nan_1:z:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
8gradient_tape/mean_squared_error/weighted_loss/value/mulMulones:output:0Egradient_tape/mean_squared_error/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: �
:gradient_tape/mean_squared_error/weighted_loss/value/Sum_1Sum<gradient_tape/mean_squared_error/weighted_loss/value/mul:z:0Ogradient_tape/mean_squared_error/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
>gradient_tape/mean_squared_error/weighted_loss/value/Reshape_1ReshapeCgradient_tape/mean_squared_error/weighted_loss/value/Sum_1:output:0Egradient_tape/mean_squared_error/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: 
<gradient_tape/mean_squared_error/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB �
>gradient_tape/mean_squared_error/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
6gradient_tape/mean_squared_error/weighted_loss/ReshapeReshapeEgradient_tape/mean_squared_error/weighted_loss/value/Reshape:output:0Ggradient_tape/mean_squared_error/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: w
4gradient_tape/mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB �
3gradient_tape/mean_squared_error/weighted_loss/TileTile?gradient_tape/mean_squared_error/weighted_loss/Reshape:output:0=gradient_tape/mean_squared_error/weighted_loss/Const:output:0*
T0*
_output_shapes
: �
>gradient_tape/mean_squared_error/weighted_loss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
8gradient_tape/mean_squared_error/weighted_loss/Reshape_1Reshape<gradient_tape/mean_squared_error/weighted_loss/Tile:output:0Ggradient_tape/mean_squared_error/weighted_loss/Reshape_1/shape:output:0*
T0*
_output_shapes
:�
6gradient_tape/mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB:�
5gradient_tape/mean_squared_error/weighted_loss/Tile_1TileAgradient_tape/mean_squared_error/weighted_loss/Reshape_1:output:0?gradient_tape/mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
:�
2gradient_tape/mean_squared_error/weighted_loss/MulMul>gradient_tape/mean_squared_error/weighted_loss/Tile_1:output:0/mean_squared_error/weighted_loss/Const:output:0*
T0*
_output_shapes
:{
*gradient_tape/mean_squared_error/Maximum/xConst*
_output_shapes
:*
dtype0*
valueB"      l
*gradient_tape/mean_squared_error/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :�
(gradient_tape/mean_squared_error/MaximumMaximum3gradient_tape/mean_squared_error/Maximum/x:output:03gradient_tape/mean_squared_error/Maximum/y:output:0*
T0*
_output_shapes
:|
+gradient_tape/mean_squared_error/floordiv/xConst*
_output_shapes
:*
dtype0*
valueB"      �
)gradient_tape/mean_squared_error/floordivFloorDiv4gradient_tape/mean_squared_error/floordiv/x:output:0,gradient_tape/mean_squared_error/Maximum:z:0*
T0*
_output_shapes
:
.gradient_tape/mean_squared_error/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
(gradient_tape/mean_squared_error/ReshapeReshape6gradient_tape/mean_squared_error/weighted_loss/Mul:z:07gradient_tape/mean_squared_error/Reshape/shape:output:0*
T0*
_output_shapes

:�
/gradient_tape/mean_squared_error/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
%gradient_tape/mean_squared_error/TileTile1gradient_tape/mean_squared_error/Reshape:output:08gradient_tape/mean_squared_error/Tile/multiples:output:0*
T0*
_output_shapes

:k
&gradient_tape/mean_squared_error/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �@�
(gradient_tape/mean_squared_error/truedivRealDiv.gradient_tape/mean_squared_error/Tile:output:0/gradient_tape/mean_squared_error/Const:output:0*
T0*&
 _has_manual_control_dependencies(*
_output_shapes

:�
'gradient_tape/mean_squared_error/scalarConst)^gradient_tape/mean_squared_error/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @�
$gradient_tape/mean_squared_error/MulMul0gradient_tape/mean_squared_error/scalar:output:0,gradient_tape/mean_squared_error/truediv:z:0*
T0*
_output_shapes

:�
$gradient_tape/mean_squared_error/subSub-custom_model/StatefulPartitionedCall:output:0training_target)^gradient_tape/mean_squared_error/truediv*
T0*
_output_shapes

:�
&gradient_tape/mean_squared_error/mul_1Mul(gradient_tape/mean_squared_error/Mul:z:0(gradient_tape/mean_squared_error/sub:z:0*
T0*
_output_shapes

:�
9gradient_tape/mean_squared_error/BroadcastGradientArgs/s0Const*
_output_shapes
:*
dtype0*
valueB"      �
9gradient_tape/mean_squared_error/BroadcastGradientArgs/s1Const*
_output_shapes
:*
dtype0*
valueB"      �
6gradient_tape/mean_squared_error/BroadcastGradientArgsBroadcastGradientArgsBgradient_tape/mean_squared_error/BroadcastGradientArgs/s0:output:0Bgradient_tape/mean_squared_error/BroadcastGradientArgs/s1:output:0*2
_output_shapes 
:���������:����������
PartitionedCallPartitionedCall*gradient_tape/mean_squared_error/mul_1:z:0-custom_model/StatefulPartitionedCall:output:1-custom_model/StatefulPartitionedCall:output:2-custom_model/StatefulPartitionedCall:output:3-custom_model/StatefulPartitionedCall:output:4-custom_model/StatefulPartitionedCall:output:5-custom_model/StatefulPartitionedCall:output:6-custom_model/StatefulPartitionedCall:output:7-custom_model/StatefulPartitionedCall:output:8-custom_model/StatefulPartitionedCall:output:9.custom_model/StatefulPartitionedCall:output:10.custom_model/StatefulPartitionedCall:output:11.custom_model/StatefulPartitionedCall:output:12.custom_model/StatefulPartitionedCall:output:13.custom_model/StatefulPartitionedCall:output:14.custom_model/StatefulPartitionedCall:output:15.custom_model/StatefulPartitionedCall:output:16.custom_model/StatefulPartitionedCall:output:17.custom_model/StatefulPartitionedCall:output:18.custom_model/StatefulPartitionedCall:output:19.custom_model/StatefulPartitionedCall:output:20.custom_model/StatefulPartitionedCall:output:21.custom_model/StatefulPartitionedCall:output:22.custom_model/StatefulPartitionedCall:output:23.custom_model/StatefulPartitionedCall:output:24.custom_model/StatefulPartitionedCall:output:25.custom_model/StatefulPartitionedCall:output:26.custom_model/StatefulPartitionedCall:output:27.custom_model/StatefulPartitionedCall:output:28.custom_model/StatefulPartitionedCall:output:29.custom_model/StatefulPartitionedCall:output:30**
Tin#
!2*
Tout
	2*
_collective_manager_ids
 *W
_output_shapesE
C:���������::::::* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference___backward_call_4703_4919W
IdentityIdentityPartitionedCall:output:1*
T0*
_output_shapes

:U

Identity_1IdentityPartitionedCall:output:2*
T0*
_output_shapes
:Y

Identity_2IdentityPartitionedCall:output:3*
T0*
_output_shapes

:U

Identity_3IdentityPartitionedCall:output:4*
T0*
_output_shapes
:Y

Identity_4IdentityPartitionedCall:output:5*
T0*
_output_shapes

:U

Identity_5IdentityPartitionedCall:output:6*
T0*
_output_shapes
:�
	IdentityN	IdentityNPartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6*
T
2**
_gradient_op_typeCustomGradient-4957*t
_output_shapesb
`::::::::::::M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    G
NegNegIdentityN:output:0*
T0*
_output_shapes

:j
mul_1/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
: *
dtype0\
mul_1MulNeg:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:f
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0`
mul_2MulReadVariableOp:value:0Cast_1/x:output:0*
T0*
_output_shapes

:K
addAddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes

:�
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_1ReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes

:*
dtype0�
AssignAddVariableOp_2AssignAddVariableOpcustom_model_4613ReadVariableOp_1:value:0%^custom_model/StatefulPartitionedCall*
_output_shapes
 *
dtype0M
Cast_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *    E
Neg_1NegIdentityN:output:1*
T0*
_output_shapes
:j
mul_3/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
: *
dtype0Z
mul_3Mul	Neg_1:y:0mul_3/ReadVariableOp:value:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0^
mul_4MulReadVariableOp_2:value:0Cast_2/x:output:0*
T0*
_output_shapes
:I
add_1AddV2	mul_3:z:0	mul_4:z:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_1:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_3ReadVariableOpreadvariableop_2_resource^AssignVariableOp_1*
_output_shapes
:*
dtype0�
AssignAddVariableOp_3AssignAddVariableOpcustom_model_4615ReadVariableOp_3:value:0%^custom_model/StatefulPartitionedCall*
_output_shapes
 *
dtype0M
Cast_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *    I
Neg_2NegIdentityN:output:2*
T0*
_output_shapes

:j
mul_5/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
: *
dtype0^
mul_5Mul	Neg_2:y:0mul_5/ReadVariableOp:value:0*
T0*
_output_shapes

:j
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource*
_output_shapes

:*
dtype0b
mul_6MulReadVariableOp_4:value:0Cast_3/x:output:0*
T0*
_output_shapes

:M
add_2AddV2	mul_5:z:0	mul_6:z:0*
T0*
_output_shapes

:�
AssignVariableOp_2AssignVariableOpreadvariableop_4_resource	add_2:z:0^ReadVariableOp_4*
_output_shapes
 *
dtype0*
validate_shape(
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource^AssignVariableOp_2*
_output_shapes

:*
dtype0�
AssignAddVariableOp_4AssignAddVariableOpcustom_model_4617ReadVariableOp_5:value:0%^custom_model/StatefulPartitionedCall*
_output_shapes
 *
dtype0M
Cast_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *    E
Neg_3NegIdentityN:output:3*
T0*
_output_shapes
:j
mul_7/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
: *
dtype0Z
mul_7Mul	Neg_3:y:0mul_7/ReadVariableOp:value:0*
T0*
_output_shapes
:f
ReadVariableOp_6ReadVariableOpreadvariableop_6_resource*
_output_shapes
:*
dtype0^
mul_8MulReadVariableOp_6:value:0Cast_4/x:output:0*
T0*
_output_shapes
:I
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpreadvariableop_6_resource	add_3:z:0^ReadVariableOp_6*
_output_shapes
 *
dtype0*
validate_shape({
ReadVariableOp_7ReadVariableOpreadvariableop_6_resource^AssignVariableOp_3*
_output_shapes
:*
dtype0�
AssignAddVariableOp_5AssignAddVariableOpcustom_model_4619ReadVariableOp_7:value:0%^custom_model/StatefulPartitionedCall*
_output_shapes
 *
dtype0M
Cast_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *    I
Neg_4NegIdentityN:output:4*
T0*
_output_shapes

:j
mul_9/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
: *
dtype0^
mul_9Mul	Neg_4:y:0mul_9/ReadVariableOp:value:0*
T0*
_output_shapes

:j
ReadVariableOp_8ReadVariableOpreadvariableop_8_resource*
_output_shapes

:*
dtype0c
mul_10MulReadVariableOp_8:value:0Cast_5/x:output:0*
T0*
_output_shapes

:N
add_4AddV2	mul_9:z:0
mul_10:z:0*
T0*
_output_shapes

:�
AssignVariableOp_4AssignVariableOpreadvariableop_8_resource	add_4:z:0^ReadVariableOp_8*
_output_shapes
 *
dtype0*
validate_shape(
ReadVariableOp_9ReadVariableOpreadvariableop_8_resource^AssignVariableOp_4*
_output_shapes

:*
dtype0�
AssignAddVariableOp_6AssignAddVariableOpcustom_model_4621ReadVariableOp_9:value:0%^custom_model/StatefulPartitionedCall*
_output_shapes
 *
dtype0M
Cast_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *    E
Neg_5NegIdentityN:output:5*
T0*
_output_shapes
:k
mul_11/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
: *
dtype0\
mul_11Mul	Neg_5:y:0mul_11/ReadVariableOp:value:0*
T0*
_output_shapes
:h
ReadVariableOp_10ReadVariableOpreadvariableop_10_resource*
_output_shapes
:*
dtype0`
mul_12MulReadVariableOp_10:value:0Cast_6/x:output:0*
T0*
_output_shapes
:K
add_5AddV2
mul_11:z:0
mul_12:z:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpreadvariableop_10_resource	add_5:z:0^ReadVariableOp_10*
_output_shapes
 *
dtype0*
validate_shape(}
ReadVariableOp_11ReadVariableOpreadvariableop_10_resource^AssignVariableOp_5*
_output_shapes
:*
dtype0�
AssignAddVariableOp_7AssignAddVariableOpcustom_model_4623ReadVariableOp_11:value:0%^custom_model/StatefulPartitionedCall*
_output_shapes
 *
dtype0G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
AssignAddVariableOp_8AssignAddVariableOpassignaddvariableop_8_resourceConst:output:0*
_output_shapes
 *
dtype0	s
subSub-custom_model/StatefulPartitionedCall:output:0training_target*
T0*
_output_shapes

:<
AbsAbssub:z:0*
T0*
_output_shapes

:a
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������[
MeanMeanAbs:y:0Mean/reduction_indices:output:0*
T0*
_output_shapes
:Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: v
Sum_2SumMean:output:0Const_1:output:0*
T0*&
 _has_manual_control_dependencies(*
_output_shapes
: �
AssignAddVariableOp_9AssignAddVariableOpassignaddvariableop_9_resourceSum_2:output:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0F
SizeConst*
_output_shapes
: *
dtype0*
value	B :M
Cast_7CastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: �
AssignAddVariableOp_10AssignAddVariableOpassignaddvariableop_10_resource
Cast_7:y:0^AssignAddVariableOp_9*
_output_shapes
 *
dtype0�
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp*
_output_shapes
: *
dtype0�
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: G

Identity_6Identitydiv_no_nan:z:0*
T0*
_output_shapes
: �
div_no_nan_1/ReadVariableOpReadVariableOpassignaddvariableop_9_resource^AssignAddVariableOp_9*
_output_shapes
: *
dtype0�
div_no_nan_1/ReadVariableOp_1ReadVariableOpassignaddvariableop_10_resource^AssignAddVariableOp_10*
_output_shapes
: *
dtype0�
div_no_nan_1DivNoNan#div_no_nan_1/ReadVariableOp:value:0%div_no_nan_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_7Identitydiv_no_nan_1:z:0*
T0*
_output_shapes
: S

Identity_8IdentityIdentity_6:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_10^AssignAddVariableOp_2^AssignAddVariableOp_3^AssignAddVariableOp_4^AssignAddVariableOp_5^AssignAddVariableOp_6^AssignAddVariableOp_7^AssignAddVariableOp_8^AssignAddVariableOp_9^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_10^ReadVariableOp_11^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6^ReadVariableOp_7^ReadVariableOp_8^ReadVariableOp_9%^custom_model/StatefulPartitionedCall^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1^div_no_nan_1/ReadVariableOp^div_no_nan_1/ReadVariableOp_1^mul_1/ReadVariableOp^mul_11/ReadVariableOp^mul_3/ReadVariableOp^mul_5/ReadVariableOp^mul_7/ReadVariableOp^mul_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_8Identity_8:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8::: : : : : : : : : : : : : : : : : : 20
AssignAddVariableOp_10AssignAddVariableOp_102.
AssignAddVariableOp_1AssignAddVariableOp_12.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_32.
AssignAddVariableOp_4AssignAddVariableOp_42.
AssignAddVariableOp_5AssignAddVariableOp_52.
AssignAddVariableOp_6AssignAddVariableOp_62.
AssignAddVariableOp_7AssignAddVariableOp_72.
AssignAddVariableOp_8AssignAddVariableOp_82.
AssignAddVariableOp_9AssignAddVariableOp_92*
AssignAddVariableOpAssignAddVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52$
AssignVariableOpAssignVariableOp2&
ReadVariableOp_10ReadVariableOp_102&
ReadVariableOp_11ReadVariableOp_112$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_62$
ReadVariableOp_7ReadVariableOp_72$
ReadVariableOp_8ReadVariableOp_82$
ReadVariableOp_9ReadVariableOp_92 
ReadVariableOpReadVariableOp2L
$custom_model/StatefulPartitionedCall$custom_model/StatefulPartitionedCall2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_126
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2>
div_no_nan_1/ReadVariableOp_1div_no_nan_1/ReadVariableOp_12:
div_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2.
mul_11/ReadVariableOpmul_11/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp2,
mul_5/ReadVariableOpmul_5/ReadVariableOp2,
mul_7/ReadVariableOpmul_7/ReadVariableOp2,
mul_9/ReadVariableOpmul_9/ReadVariableOp:OK

_output_shapes

:
)
_user_specified_nametraining_target:N J

_output_shapes

:
(
_user_specified_nametraining_input
�
�
"__inference_signature_wrapper_4271
training_input
training_target
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:	 

unknown_15: 

unknown_16: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltraining_inputtraining_targetunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *"
fR
__inference_training_4226^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8::: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:OK

_output_shapes

:
)
_user_specified_nametraining_target:N J

_output_shapes

:
(
_user_specified_nametraining_input
�,
�
__inference_call_4339

inputs8
&test_in_matmul_readvariableop_resource:5
'test_in_biasadd_readvariableop_resource:8
&oculta1_matmul_readvariableop_resource:5
'oculta1_biasadd_readvariableop_resource:9
'test_out_matmul_readvariableop_resource:6
(test_out_biasadd_readvariableop_resource:
identity��oculta1/BiasAdd/ReadVariableOp�oculta1/MatMul/ReadVariableOp�test_in/BiasAdd/ReadVariableOp�test_in/MatMul/ReadVariableOp�test_out/BiasAdd/ReadVariableOp�test_out/MatMul/ReadVariableOp�
test_in/MatMul/ReadVariableOpReadVariableOp&test_in_matmul_readvariableop_resource*
_output_shapes

:*
dtype0y
test_in/MatMulMatMulinputs%test_in/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
test_in/BiasAdd/ReadVariableOpReadVariableOp'test_in_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_in/BiasAddBiasAddtest_in/MatMul:product:0&test_in/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������R
test_in/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��v
test_in/mulMultest_in/mul/x:output:0test_in/BiasAdd:output:0*
T0*'
_output_shapes
:���������R
test_in/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@m
test_in/powPowtest_in/pow/x:output:0test_in/mul:z:0*
T0*'
_output_shapes
:���������R
test_in/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?o
test_in/addAddV2test_in/add/x:output:0test_in/pow:z:0*
T0*'
_output_shapes
:���������V
test_in/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?y
test_in/truedivRealDivtest_in/truediv/x:output:0test_in/add:z:0*
T0*'
_output_shapes
:����������
oculta1/MatMul/ReadVariableOpReadVariableOp&oculta1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
oculta1/MatMulMatMultest_in/truediv:z:0%oculta1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
oculta1/BiasAdd/ReadVariableOpReadVariableOp'oculta1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
oculta1/BiasAddBiasAddoculta1/MatMul:product:0&oculta1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������R
oculta1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��v
oculta1/mulMuloculta1/mul/x:output:0oculta1/BiasAdd:output:0*
T0*'
_output_shapes
:���������R
oculta1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@m
oculta1/powPowoculta1/pow/x:output:0oculta1/mul:z:0*
T0*'
_output_shapes
:���������R
oculta1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?o
oculta1/addAddV2oculta1/add/x:output:0oculta1/pow:z:0*
T0*'
_output_shapes
:���������V
oculta1/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?y
oculta1/truedivRealDivoculta1/truediv/x:output:0oculta1/add:z:0*
T0*'
_output_shapes
:����������
test_out/MatMul/ReadVariableOpReadVariableOp'test_out_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
test_out/MatMulMatMuloculta1/truediv:z:0&test_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
test_out/BiasAdd/ReadVariableOpReadVariableOp(test_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_out/BiasAddBiasAddtest_out/MatMul:product:0'test_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������S
test_out/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��y
test_out/mulMultest_out/mul/x:output:0test_out/BiasAdd:output:0*
T0*'
_output_shapes
:���������S
test_out/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@p
test_out/powPowtest_out/pow/x:output:0test_out/mul:z:0*
T0*'
_output_shapes
:���������S
test_out/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?r
test_out/addAddV2test_out/add/x:output:0test_out/pow:z:0*
T0*'
_output_shapes
:���������W
test_out/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?|
test_out/truedivRealDivtest_out/truediv/x:output:0test_out/add:z:0*
T0*'
_output_shapes
:���������c
IdentityIdentitytest_out/truediv:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^oculta1/BiasAdd/ReadVariableOp^oculta1/MatMul/ReadVariableOp^test_in/BiasAdd/ReadVariableOp^test_in/MatMul/ReadVariableOp ^test_out/BiasAdd/ReadVariableOp^test_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2@
oculta1/BiasAdd/ReadVariableOpoculta1/BiasAdd/ReadVariableOp2>
oculta1/MatMul/ReadVariableOpoculta1/MatMul/ReadVariableOp2@
test_in/BiasAdd/ReadVariableOptest_in/BiasAdd/ReadVariableOp2>
test_in/MatMul/ReadVariableOptest_in/MatMul/ReadVariableOp2B
test_out/BiasAdd/ReadVariableOptest_out/BiasAdd/ReadVariableOp2@
test_out/MatMul/ReadVariableOptest_out/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
%__inference___backward_call_4703_4919
placeholder8
4gradients_test_out_truediv_grad_shape_1_test_out_add:
6gradients_test_out_truediv_grad_neg_test_out_truediv_x4
0gradients_test_out_add_grad_shape_test_out_add_x4
0gradients_test_out_add_grad_shape_1_test_out_pow4
0gradients_test_out_pow_grad_shape_test_out_pow_x4
0gradients_test_out_pow_grad_shape_1_test_out_mul4
0gradients_test_out_mul_grad_shape_test_out_mul_x8
4gradients_test_out_mul_grad_shape_1_test_out_biasaddH
Dgradients_test_out_matmul_grad_matmul_test_out_matmul_readvariableop;
7gradients_test_out_matmul_grad_matmul_1_oculta1_truediv6
2gradients_oculta1_truediv_grad_shape_1_oculta1_add8
4gradients_oculta1_truediv_grad_neg_oculta1_truediv_x2
.gradients_oculta1_add_grad_shape_oculta1_add_x2
.gradients_oculta1_add_grad_shape_1_oculta1_pow2
.gradients_oculta1_pow_grad_shape_oculta1_pow_x2
.gradients_oculta1_pow_grad_shape_1_oculta1_mul2
.gradients_oculta1_mul_grad_shape_oculta1_mul_x6
2gradients_oculta1_mul_grad_shape_1_oculta1_biasaddF
Bgradients_oculta1_matmul_grad_matmul_oculta1_matmul_readvariableop:
6gradients_oculta1_matmul_grad_matmul_1_test_in_truediv6
2gradients_test_in_truediv_grad_shape_1_test_in_add8
4gradients_test_in_truediv_grad_neg_test_in_truediv_x2
.gradients_test_in_add_grad_shape_test_in_add_x2
.gradients_test_in_add_grad_shape_1_test_in_pow2
.gradients_test_in_pow_grad_shape_test_in_pow_x2
.gradients_test_in_pow_grad_shape_1_test_in_mul2
.gradients_test_in_mul_grad_shape_test_in_mul_x6
2gradients_test_in_mul_grad_shape_1_test_in_biasaddF
Bgradients_test_in_matmul_grad_matmul_test_in_matmul_readvariableop1
-gradients_test_in_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������h
%gradients/test_out/truediv_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
'gradients/test_out/truediv_grad/Shape_1Shape4gradients_test_out_truediv_grad_shape_1_test_out_add*
T0*
_output_shapes
::���
5gradients/test_out/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/test_out/truediv_grad/Shape:output:00gradients/test_out/truediv_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
'gradients/test_out/truediv_grad/RealDivRealDivgradients/grad_ys_0:output:04gradients_test_out_truediv_grad_shape_1_test_out_add*
T0*'
_output_shapes
:����������
#gradients/test_out/truediv_grad/SumSum+gradients/test_out/truediv_grad/RealDiv:z:0:gradients/test_out/truediv_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
'gradients/test_out/truediv_grad/ReshapeReshape,gradients/test_out/truediv_grad/Sum:output:0.gradients/test_out/truediv_grad/Shape:output:0*
T0*
_output_shapes
: �
#gradients/test_out/truediv_grad/NegNeg6gradients_test_out_truediv_grad_neg_test_out_truediv_x*
T0*
_output_shapes
: �
)gradients/test_out/truediv_grad/RealDiv_1RealDiv'gradients/test_out/truediv_grad/Neg:y:04gradients_test_out_truediv_grad_shape_1_test_out_add*
T0*'
_output_shapes
:����������
)gradients/test_out/truediv_grad/RealDiv_2RealDiv-gradients/test_out/truediv_grad/RealDiv_1:z:04gradients_test_out_truediv_grad_shape_1_test_out_add*
T0*'
_output_shapes
:����������
#gradients/test_out/truediv_grad/mulMulgradients/grad_ys_0:output:0-gradients/test_out/truediv_grad/RealDiv_2:z:0*
T0*'
_output_shapes
:����������
%gradients/test_out/truediv_grad/Sum_1Sum'gradients/test_out/truediv_grad/mul:z:0:gradients/test_out/truediv_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
)gradients/test_out/truediv_grad/Reshape_1Reshape.gradients/test_out/truediv_grad/Sum_1:output:00gradients/test_out/truediv_grad/Shape_1:output:0*
T0*'
_output_shapes
:����������
!gradients/test_out/add_grad/ShapeShape0gradients_test_out_add_grad_shape_test_out_add_x*
T0*
_output_shapes
: :���
#gradients/test_out/add_grad/Shape_1Shape0gradients_test_out_add_grad_shape_1_test_out_pow*
T0*
_output_shapes
::���
1gradients/test_out/add_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/test_out/add_grad/Shape:output:0,gradients/test_out/add_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/test_out/add_grad/SumSum2gradients/test_out/truediv_grad/Reshape_1:output:06gradients/test_out/add_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
#gradients/test_out/add_grad/ReshapeReshape(gradients/test_out/add_grad/Sum:output:0*gradients/test_out/add_grad/Shape:output:0*
T0*
_output_shapes
: �
!gradients/test_out/add_grad/Sum_1Sum2gradients/test_out/truediv_grad/Reshape_1:output:06gradients/test_out/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
%gradients/test_out/add_grad/Reshape_1Reshape*gradients/test_out/add_grad/Sum_1:output:0,gradients/test_out/add_grad/Shape_1:output:0*
T0*'
_output_shapes
:����������
!gradients/test_out/pow_grad/ShapeShape0gradients_test_out_pow_grad_shape_test_out_pow_x*
T0*
_output_shapes
: :���
#gradients/test_out/pow_grad/Shape_1Shape0gradients_test_out_pow_grad_shape_1_test_out_mul*
T0*
_output_shapes
::���
1gradients/test_out/pow_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/test_out/pow_grad/Shape:output:0,gradients/test_out/pow_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/test_out/pow_grad/mulMul.gradients/test_out/add_grad/Reshape_1:output:00gradients_test_out_pow_grad_shape_1_test_out_mul*
T0*'
_output_shapes
:���������f
!gradients/test_out/pow_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
gradients/test_out/pow_grad/subSub0gradients_test_out_pow_grad_shape_1_test_out_mul*gradients/test_out/pow_grad/sub/y:output:0*
T0*'
_output_shapes
:����������
gradients/test_out/pow_grad/PowPow0gradients_test_out_pow_grad_shape_test_out_pow_x#gradients/test_out/pow_grad/sub:z:0*
T0*'
_output_shapes
:����������
!gradients/test_out/pow_grad/mul_1Mul#gradients/test_out/pow_grad/mul:z:0#gradients/test_out/pow_grad/Pow:z:0*
T0*'
_output_shapes
:����������
gradients/test_out/pow_grad/SumSum%gradients/test_out/pow_grad/mul_1:z:06gradients/test_out/pow_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
#gradients/test_out/pow_grad/ReshapeReshape(gradients/test_out/pow_grad/Sum:output:0*gradients/test_out/pow_grad/Shape:output:0*
T0*
_output_shapes
: j
%gradients/test_out/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#gradients/test_out/pow_grad/GreaterGreater0gradients_test_out_pow_grad_shape_test_out_pow_x.gradients/test_out/pow_grad/Greater/y:output:0*
T0*
_output_shapes
: ~
;gradients/test_out/pow_grad/ones_like/Shape/shape_as_tensorConst*
_output_shapes
: *
dtype0*
valueB p
+gradients/test_out/pow_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%gradients/test_out/pow_grad/ones_likeFillDgradients/test_out/pow_grad/ones_like/Shape/shape_as_tensor:output:04gradients/test_out/pow_grad/ones_like/Const:output:0*
T0*
_output_shapes
: �
"gradients/test_out/pow_grad/SelectSelect'gradients/test_out/pow_grad/Greater:z:00gradients_test_out_pow_grad_shape_test_out_pow_x.gradients/test_out/pow_grad/ones_like:output:0*
T0*
_output_shapes
: t
gradients/test_out/pow_grad/LogLog+gradients/test_out/pow_grad/Select:output:0*
T0*
_output_shapes
: k
&gradients/test_out/pow_grad/zeros_likeConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$gradients/test_out/pow_grad/Select_1Select'gradients/test_out/pow_grad/Greater:z:0#gradients/test_out/pow_grad/Log:y:0/gradients/test_out/pow_grad/zeros_like:output:0*
T0*
_output_shapes
: �
!gradients/test_out/pow_grad/mul_2Mul.gradients/test_out/add_grad/Reshape_1:output:00gradients_test_out_add_grad_shape_1_test_out_pow*
T0*'
_output_shapes
:����������
!gradients/test_out/pow_grad/mul_3Mul%gradients/test_out/pow_grad/mul_2:z:0-gradients/test_out/pow_grad/Select_1:output:0*
T0*'
_output_shapes
:����������
!gradients/test_out/pow_grad/Sum_1Sum%gradients/test_out/pow_grad/mul_3:z:06gradients/test_out/pow_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
%gradients/test_out/pow_grad/Reshape_1Reshape*gradients/test_out/pow_grad/Sum_1:output:0,gradients/test_out/pow_grad/Shape_1:output:0*
T0*'
_output_shapes
:����������
!gradients/test_out/mul_grad/ShapeShape0gradients_test_out_mul_grad_shape_test_out_mul_x*
T0*
_output_shapes
: :���
#gradients/test_out/mul_grad/Shape_1Shape4gradients_test_out_mul_grad_shape_1_test_out_biasadd*
T0*
_output_shapes
::���
1gradients/test_out/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/test_out/mul_grad/Shape:output:0,gradients/test_out/mul_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/test_out/mul_grad/MulMul.gradients/test_out/pow_grad/Reshape_1:output:04gradients_test_out_mul_grad_shape_1_test_out_biasadd*
T0*'
_output_shapes
:����������
gradients/test_out/mul_grad/SumSum#gradients/test_out/mul_grad/Mul:z:06gradients/test_out/mul_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
#gradients/test_out/mul_grad/ReshapeReshape(gradients/test_out/mul_grad/Sum:output:0*gradients/test_out/mul_grad/Shape:output:0*
T0*
_output_shapes
: �
!gradients/test_out/mul_grad/Mul_1Mul0gradients_test_out_mul_grad_shape_test_out_mul_x.gradients/test_out/pow_grad/Reshape_1:output:0*
T0*'
_output_shapes
:����������
!gradients/test_out/mul_grad/Sum_1Sum%gradients/test_out/mul_grad/Mul_1:z:06gradients/test_out/mul_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
%gradients/test_out/mul_grad/Reshape_1Reshape*gradients/test_out/mul_grad/Sum_1:output:0,gradients/test_out/mul_grad/Shape_1:output:0*
T0*'
_output_shapes
:����������
+gradients/test_out/BiasAdd_grad/BiasAddGradBiasAddGrad.gradients/test_out/mul_grad/Reshape_1:output:0*
T0*
_output_shapes
:�
%gradients/test_out/MatMul_grad/MatMulMatMul.gradients/test_out/mul_grad/Reshape_1:output:0Dgradients_test_out_matmul_grad_matmul_test_out_matmul_readvariableop*
T0*'
_output_shapes
:���������*
transpose_b(�
'gradients/test_out/MatMul_grad/MatMul_1MatMul7gradients_test_out_matmul_grad_matmul_1_oculta1_truediv.gradients/test_out/mul_grad/Reshape_1:output:0*
T0*
_output_shapes

:*
transpose_a(g
$gradients/oculta1/truediv_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
&gradients/oculta1/truediv_grad/Shape_1Shape2gradients_oculta1_truediv_grad_shape_1_oculta1_add*
T0*
_output_shapes
::���
4gradients/oculta1/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/oculta1/truediv_grad/Shape:output:0/gradients/oculta1/truediv_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
&gradients/oculta1/truediv_grad/RealDivRealDiv/gradients/test_out/MatMul_grad/MatMul:product:02gradients_oculta1_truediv_grad_shape_1_oculta1_add*
T0*'
_output_shapes
:����������
"gradients/oculta1/truediv_grad/SumSum*gradients/oculta1/truediv_grad/RealDiv:z:09gradients/oculta1/truediv_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
&gradients/oculta1/truediv_grad/ReshapeReshape+gradients/oculta1/truediv_grad/Sum:output:0-gradients/oculta1/truediv_grad/Shape:output:0*
T0*
_output_shapes
: �
"gradients/oculta1/truediv_grad/NegNeg4gradients_oculta1_truediv_grad_neg_oculta1_truediv_x*
T0*
_output_shapes
: �
(gradients/oculta1/truediv_grad/RealDiv_1RealDiv&gradients/oculta1/truediv_grad/Neg:y:02gradients_oculta1_truediv_grad_shape_1_oculta1_add*
T0*'
_output_shapes
:����������
(gradients/oculta1/truediv_grad/RealDiv_2RealDiv,gradients/oculta1/truediv_grad/RealDiv_1:z:02gradients_oculta1_truediv_grad_shape_1_oculta1_add*
T0*'
_output_shapes
:����������
"gradients/oculta1/truediv_grad/mulMul/gradients/test_out/MatMul_grad/MatMul:product:0,gradients/oculta1/truediv_grad/RealDiv_2:z:0*
T0*'
_output_shapes
:����������
$gradients/oculta1/truediv_grad/Sum_1Sum&gradients/oculta1/truediv_grad/mul:z:09gradients/oculta1/truediv_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
(gradients/oculta1/truediv_grad/Reshape_1Reshape-gradients/oculta1/truediv_grad/Sum_1:output:0/gradients/oculta1/truediv_grad/Shape_1:output:0*
T0*'
_output_shapes
:����������
 gradients/oculta1/add_grad/ShapeShape.gradients_oculta1_add_grad_shape_oculta1_add_x*
T0*
_output_shapes
: :���
"gradients/oculta1/add_grad/Shape_1Shape.gradients_oculta1_add_grad_shape_1_oculta1_pow*
T0*
_output_shapes
::���
0gradients/oculta1/add_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/oculta1/add_grad/Shape:output:0+gradients/oculta1/add_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/oculta1/add_grad/SumSum1gradients/oculta1/truediv_grad/Reshape_1:output:05gradients/oculta1/add_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
"gradients/oculta1/add_grad/ReshapeReshape'gradients/oculta1/add_grad/Sum:output:0)gradients/oculta1/add_grad/Shape:output:0*
T0*
_output_shapes
: �
 gradients/oculta1/add_grad/Sum_1Sum1gradients/oculta1/truediv_grad/Reshape_1:output:05gradients/oculta1/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
$gradients/oculta1/add_grad/Reshape_1Reshape)gradients/oculta1/add_grad/Sum_1:output:0+gradients/oculta1/add_grad/Shape_1:output:0*
T0*'
_output_shapes
:����������
 gradients/oculta1/pow_grad/ShapeShape.gradients_oculta1_pow_grad_shape_oculta1_pow_x*
T0*
_output_shapes
: :���
"gradients/oculta1/pow_grad/Shape_1Shape.gradients_oculta1_pow_grad_shape_1_oculta1_mul*
T0*
_output_shapes
::���
0gradients/oculta1/pow_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/oculta1/pow_grad/Shape:output:0+gradients/oculta1/pow_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/oculta1/pow_grad/mulMul-gradients/oculta1/add_grad/Reshape_1:output:0.gradients_oculta1_pow_grad_shape_1_oculta1_mul*
T0*'
_output_shapes
:���������e
 gradients/oculta1/pow_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
gradients/oculta1/pow_grad/subSub.gradients_oculta1_pow_grad_shape_1_oculta1_mul)gradients/oculta1/pow_grad/sub/y:output:0*
T0*'
_output_shapes
:����������
gradients/oculta1/pow_grad/PowPow.gradients_oculta1_pow_grad_shape_oculta1_pow_x"gradients/oculta1/pow_grad/sub:z:0*
T0*'
_output_shapes
:����������
 gradients/oculta1/pow_grad/mul_1Mul"gradients/oculta1/pow_grad/mul:z:0"gradients/oculta1/pow_grad/Pow:z:0*
T0*'
_output_shapes
:����������
gradients/oculta1/pow_grad/SumSum$gradients/oculta1/pow_grad/mul_1:z:05gradients/oculta1/pow_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
"gradients/oculta1/pow_grad/ReshapeReshape'gradients/oculta1/pow_grad/Sum:output:0)gradients/oculta1/pow_grad/Shape:output:0*
T0*
_output_shapes
: i
$gradients/oculta1/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"gradients/oculta1/pow_grad/GreaterGreater.gradients_oculta1_pow_grad_shape_oculta1_pow_x-gradients/oculta1/pow_grad/Greater/y:output:0*
T0*
_output_shapes
: }
:gradients/oculta1/pow_grad/ones_like/Shape/shape_as_tensorConst*
_output_shapes
: *
dtype0*
valueB o
*gradients/oculta1/pow_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$gradients/oculta1/pow_grad/ones_likeFillCgradients/oculta1/pow_grad/ones_like/Shape/shape_as_tensor:output:03gradients/oculta1/pow_grad/ones_like/Const:output:0*
T0*
_output_shapes
: �
!gradients/oculta1/pow_grad/SelectSelect&gradients/oculta1/pow_grad/Greater:z:0.gradients_oculta1_pow_grad_shape_oculta1_pow_x-gradients/oculta1/pow_grad/ones_like:output:0*
T0*
_output_shapes
: r
gradients/oculta1/pow_grad/LogLog*gradients/oculta1/pow_grad/Select:output:0*
T0*
_output_shapes
: j
%gradients/oculta1/pow_grad/zeros_likeConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#gradients/oculta1/pow_grad/Select_1Select&gradients/oculta1/pow_grad/Greater:z:0"gradients/oculta1/pow_grad/Log:y:0.gradients/oculta1/pow_grad/zeros_like:output:0*
T0*
_output_shapes
: �
 gradients/oculta1/pow_grad/mul_2Mul-gradients/oculta1/add_grad/Reshape_1:output:0.gradients_oculta1_add_grad_shape_1_oculta1_pow*
T0*'
_output_shapes
:����������
 gradients/oculta1/pow_grad/mul_3Mul$gradients/oculta1/pow_grad/mul_2:z:0,gradients/oculta1/pow_grad/Select_1:output:0*
T0*'
_output_shapes
:����������
 gradients/oculta1/pow_grad/Sum_1Sum$gradients/oculta1/pow_grad/mul_3:z:05gradients/oculta1/pow_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
$gradients/oculta1/pow_grad/Reshape_1Reshape)gradients/oculta1/pow_grad/Sum_1:output:0+gradients/oculta1/pow_grad/Shape_1:output:0*
T0*'
_output_shapes
:����������
 gradients/oculta1/mul_grad/ShapeShape.gradients_oculta1_mul_grad_shape_oculta1_mul_x*
T0*
_output_shapes
: :���
"gradients/oculta1/mul_grad/Shape_1Shape2gradients_oculta1_mul_grad_shape_1_oculta1_biasadd*
T0*
_output_shapes
::���
0gradients/oculta1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/oculta1/mul_grad/Shape:output:0+gradients/oculta1/mul_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/oculta1/mul_grad/MulMul-gradients/oculta1/pow_grad/Reshape_1:output:02gradients_oculta1_mul_grad_shape_1_oculta1_biasadd*
T0*'
_output_shapes
:����������
gradients/oculta1/mul_grad/SumSum"gradients/oculta1/mul_grad/Mul:z:05gradients/oculta1/mul_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
"gradients/oculta1/mul_grad/ReshapeReshape'gradients/oculta1/mul_grad/Sum:output:0)gradients/oculta1/mul_grad/Shape:output:0*
T0*
_output_shapes
: �
 gradients/oculta1/mul_grad/Mul_1Mul.gradients_oculta1_mul_grad_shape_oculta1_mul_x-gradients/oculta1/pow_grad/Reshape_1:output:0*
T0*'
_output_shapes
:����������
 gradients/oculta1/mul_grad/Sum_1Sum$gradients/oculta1/mul_grad/Mul_1:z:05gradients/oculta1/mul_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
$gradients/oculta1/mul_grad/Reshape_1Reshape)gradients/oculta1/mul_grad/Sum_1:output:0+gradients/oculta1/mul_grad/Shape_1:output:0*
T0*'
_output_shapes
:����������
*gradients/oculta1/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/oculta1/mul_grad/Reshape_1:output:0*
T0*
_output_shapes
:�
$gradients/oculta1/MatMul_grad/MatMulMatMul-gradients/oculta1/mul_grad/Reshape_1:output:0Bgradients_oculta1_matmul_grad_matmul_oculta1_matmul_readvariableop*
T0*'
_output_shapes
:���������*
transpose_b(�
&gradients/oculta1/MatMul_grad/MatMul_1MatMul6gradients_oculta1_matmul_grad_matmul_1_test_in_truediv-gradients/oculta1/mul_grad/Reshape_1:output:0*
T0*
_output_shapes

:*
transpose_a(g
$gradients/test_in/truediv_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
&gradients/test_in/truediv_grad/Shape_1Shape2gradients_test_in_truediv_grad_shape_1_test_in_add*
T0*
_output_shapes
::���
4gradients/test_in/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/test_in/truediv_grad/Shape:output:0/gradients/test_in/truediv_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
&gradients/test_in/truediv_grad/RealDivRealDiv.gradients/oculta1/MatMul_grad/MatMul:product:02gradients_test_in_truediv_grad_shape_1_test_in_add*
T0*'
_output_shapes
:����������
"gradients/test_in/truediv_grad/SumSum*gradients/test_in/truediv_grad/RealDiv:z:09gradients/test_in/truediv_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
&gradients/test_in/truediv_grad/ReshapeReshape+gradients/test_in/truediv_grad/Sum:output:0-gradients/test_in/truediv_grad/Shape:output:0*
T0*
_output_shapes
: �
"gradients/test_in/truediv_grad/NegNeg4gradients_test_in_truediv_grad_neg_test_in_truediv_x*
T0*
_output_shapes
: �
(gradients/test_in/truediv_grad/RealDiv_1RealDiv&gradients/test_in/truediv_grad/Neg:y:02gradients_test_in_truediv_grad_shape_1_test_in_add*
T0*'
_output_shapes
:����������
(gradients/test_in/truediv_grad/RealDiv_2RealDiv,gradients/test_in/truediv_grad/RealDiv_1:z:02gradients_test_in_truediv_grad_shape_1_test_in_add*
T0*'
_output_shapes
:����������
"gradients/test_in/truediv_grad/mulMul.gradients/oculta1/MatMul_grad/MatMul:product:0,gradients/test_in/truediv_grad/RealDiv_2:z:0*
T0*'
_output_shapes
:����������
$gradients/test_in/truediv_grad/Sum_1Sum&gradients/test_in/truediv_grad/mul:z:09gradients/test_in/truediv_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
(gradients/test_in/truediv_grad/Reshape_1Reshape-gradients/test_in/truediv_grad/Sum_1:output:0/gradients/test_in/truediv_grad/Shape_1:output:0*
T0*'
_output_shapes
:����������
 gradients/test_in/add_grad/ShapeShape.gradients_test_in_add_grad_shape_test_in_add_x*
T0*
_output_shapes
: :���
"gradients/test_in/add_grad/Shape_1Shape.gradients_test_in_add_grad_shape_1_test_in_pow*
T0*
_output_shapes
::���
0gradients/test_in/add_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/test_in/add_grad/Shape:output:0+gradients/test_in/add_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/test_in/add_grad/SumSum1gradients/test_in/truediv_grad/Reshape_1:output:05gradients/test_in/add_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
"gradients/test_in/add_grad/ReshapeReshape'gradients/test_in/add_grad/Sum:output:0)gradients/test_in/add_grad/Shape:output:0*
T0*
_output_shapes
: �
 gradients/test_in/add_grad/Sum_1Sum1gradients/test_in/truediv_grad/Reshape_1:output:05gradients/test_in/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
$gradients/test_in/add_grad/Reshape_1Reshape)gradients/test_in/add_grad/Sum_1:output:0+gradients/test_in/add_grad/Shape_1:output:0*
T0*'
_output_shapes
:����������
 gradients/test_in/pow_grad/ShapeShape.gradients_test_in_pow_grad_shape_test_in_pow_x*
T0*
_output_shapes
: :���
"gradients/test_in/pow_grad/Shape_1Shape.gradients_test_in_pow_grad_shape_1_test_in_mul*
T0*
_output_shapes
::���
0gradients/test_in/pow_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/test_in/pow_grad/Shape:output:0+gradients/test_in/pow_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/test_in/pow_grad/mulMul-gradients/test_in/add_grad/Reshape_1:output:0.gradients_test_in_pow_grad_shape_1_test_in_mul*
T0*'
_output_shapes
:���������e
 gradients/test_in/pow_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
gradients/test_in/pow_grad/subSub.gradients_test_in_pow_grad_shape_1_test_in_mul)gradients/test_in/pow_grad/sub/y:output:0*
T0*'
_output_shapes
:����������
gradients/test_in/pow_grad/PowPow.gradients_test_in_pow_grad_shape_test_in_pow_x"gradients/test_in/pow_grad/sub:z:0*
T0*'
_output_shapes
:����������
 gradients/test_in/pow_grad/mul_1Mul"gradients/test_in/pow_grad/mul:z:0"gradients/test_in/pow_grad/Pow:z:0*
T0*'
_output_shapes
:����������
gradients/test_in/pow_grad/SumSum$gradients/test_in/pow_grad/mul_1:z:05gradients/test_in/pow_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
"gradients/test_in/pow_grad/ReshapeReshape'gradients/test_in/pow_grad/Sum:output:0)gradients/test_in/pow_grad/Shape:output:0*
T0*
_output_shapes
: i
$gradients/test_in/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"gradients/test_in/pow_grad/GreaterGreater.gradients_test_in_pow_grad_shape_test_in_pow_x-gradients/test_in/pow_grad/Greater/y:output:0*
T0*
_output_shapes
: }
:gradients/test_in/pow_grad/ones_like/Shape/shape_as_tensorConst*
_output_shapes
: *
dtype0*
valueB o
*gradients/test_in/pow_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$gradients/test_in/pow_grad/ones_likeFillCgradients/test_in/pow_grad/ones_like/Shape/shape_as_tensor:output:03gradients/test_in/pow_grad/ones_like/Const:output:0*
T0*
_output_shapes
: �
!gradients/test_in/pow_grad/SelectSelect&gradients/test_in/pow_grad/Greater:z:0.gradients_test_in_pow_grad_shape_test_in_pow_x-gradients/test_in/pow_grad/ones_like:output:0*
T0*
_output_shapes
: r
gradients/test_in/pow_grad/LogLog*gradients/test_in/pow_grad/Select:output:0*
T0*
_output_shapes
: j
%gradients/test_in/pow_grad/zeros_likeConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#gradients/test_in/pow_grad/Select_1Select&gradients/test_in/pow_grad/Greater:z:0"gradients/test_in/pow_grad/Log:y:0.gradients/test_in/pow_grad/zeros_like:output:0*
T0*
_output_shapes
: �
 gradients/test_in/pow_grad/mul_2Mul-gradients/test_in/add_grad/Reshape_1:output:0.gradients_test_in_add_grad_shape_1_test_in_pow*
T0*'
_output_shapes
:����������
 gradients/test_in/pow_grad/mul_3Mul$gradients/test_in/pow_grad/mul_2:z:0,gradients/test_in/pow_grad/Select_1:output:0*
T0*'
_output_shapes
:����������
 gradients/test_in/pow_grad/Sum_1Sum$gradients/test_in/pow_grad/mul_3:z:05gradients/test_in/pow_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
$gradients/test_in/pow_grad/Reshape_1Reshape)gradients/test_in/pow_grad/Sum_1:output:0+gradients/test_in/pow_grad/Shape_1:output:0*
T0*'
_output_shapes
:����������
 gradients/test_in/mul_grad/ShapeShape.gradients_test_in_mul_grad_shape_test_in_mul_x*
T0*
_output_shapes
: :���
"gradients/test_in/mul_grad/Shape_1Shape2gradients_test_in_mul_grad_shape_1_test_in_biasadd*
T0*
_output_shapes
::���
0gradients/test_in/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/test_in/mul_grad/Shape:output:0+gradients/test_in/mul_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/test_in/mul_grad/MulMul-gradients/test_in/pow_grad/Reshape_1:output:02gradients_test_in_mul_grad_shape_1_test_in_biasadd*
T0*'
_output_shapes
:����������
gradients/test_in/mul_grad/SumSum"gradients/test_in/mul_grad/Mul:z:05gradients/test_in/mul_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
"gradients/test_in/mul_grad/ReshapeReshape'gradients/test_in/mul_grad/Sum:output:0)gradients/test_in/mul_grad/Shape:output:0*
T0*
_output_shapes
: �
 gradients/test_in/mul_grad/Mul_1Mul.gradients_test_in_mul_grad_shape_test_in_mul_x-gradients/test_in/pow_grad/Reshape_1:output:0*
T0*'
_output_shapes
:����������
 gradients/test_in/mul_grad/Sum_1Sum$gradients/test_in/mul_grad/Mul_1:z:05gradients/test_in/mul_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
$gradients/test_in/mul_grad/Reshape_1Reshape)gradients/test_in/mul_grad/Sum_1:output:0+gradients/test_in/mul_grad/Shape_1:output:0*
T0*'
_output_shapes
:����������
*gradients/test_in/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/test_in/mul_grad/Reshape_1:output:0*
T0*
_output_shapes
:�
$gradients/test_in/MatMul_grad/MatMulMatMul-gradients/test_in/mul_grad/Reshape_1:output:0Bgradients_test_in_matmul_grad_matmul_test_in_matmul_readvariableop*
T0*'
_output_shapes
:���������*
transpose_b(�
&gradients/test_in/MatMul_grad/MatMul_1MatMul-gradients_test_in_matmul_grad_matmul_1_inputs-gradients/test_in/mul_grad/Reshape_1:output:0*
T0*
_output_shapes

:*
transpose_a(v
IdentityIdentity.gradients/test_in/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������q

Identity_1Identity0gradients/test_in/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:p

Identity_2Identity3gradients/test_in/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:q

Identity_3Identity0gradients/oculta1/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:p

Identity_4Identity3gradients/oculta1/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:r

Identity_5Identity1gradients/test_out/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:q

Identity_6Identity4gradients/test_out/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������: : :���������: :���������: :���������::���������:���������: : :���������: :���������: :���������::���������:���������: : :���������: :���������: :���������::���������*.
forward_function_name__forward_call_4918:-)
'
_output_shapes
:���������:$ 

_output_shapes

::-)
'
_output_shapes
:���������:

_output_shapes
: :-)
'
_output_shapes
:���������:

_output_shapes
: :-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:$ 

_output_shapes

::-)
'
_output_shapes
:���������:

_output_shapes
: :-)
'
_output_shapes
:���������:

_output_shapes
: :-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-
)
'
_output_shapes
:���������:$	 

_output_shapes

::-)
'
_output_shapes
:���������:

_output_shapes
: :-)
'
_output_shapes
:���������:

_output_shapes
: :-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:- )
'
_output_shapes
:���������
�
�
"__inference_signature_wrapper_4290

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *
fR
__inference_call_4002f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs
�*
�
__inference_call_245

inputs8
&test_in_matmul_readvariableop_resource:5
'test_in_biasadd_readvariableop_resource:8
&oculta1_matmul_readvariableop_resource:5
'oculta1_biasadd_readvariableop_resource:9
'test_out_matmul_readvariableop_resource:6
(test_out_biasadd_readvariableop_resource:
identity��oculta1/BiasAdd/ReadVariableOp�oculta1/MatMul/ReadVariableOp�test_in/BiasAdd/ReadVariableOp�test_in/MatMul/ReadVariableOp�test_out/BiasAdd/ReadVariableOp�test_out/MatMul/ReadVariableOp�
test_in/MatMul/ReadVariableOpReadVariableOp&test_in_matmul_readvariableop_resource*
_output_shapes

:*
dtype0p
test_in/MatMulMatMulinputs%test_in/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
test_in/BiasAdd/ReadVariableOpReadVariableOp'test_in_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_in/BiasAddBiasAddtest_in/MatMul:product:0&test_in/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:R
test_in/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��m
test_in/mulMultest_in/mul/x:output:0test_in/BiasAdd:output:0*
T0*
_output_shapes

:R
test_in/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@d
test_in/powPowtest_in/pow/x:output:0test_in/mul:z:0*
T0*
_output_shapes

:R
test_in/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
test_in/addAddV2test_in/add/x:output:0test_in/pow:z:0*
T0*
_output_shapes

:V
test_in/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?p
test_in/truedivRealDivtest_in/truediv/x:output:0test_in/add:z:0*
T0*
_output_shapes

:�
oculta1/MatMul/ReadVariableOpReadVariableOp&oculta1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0}
oculta1/MatMulMatMultest_in/truediv:z:0%oculta1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
oculta1/BiasAdd/ReadVariableOpReadVariableOp'oculta1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
oculta1/BiasAddBiasAddoculta1/MatMul:product:0&oculta1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:R
oculta1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��m
oculta1/mulMuloculta1/mul/x:output:0oculta1/BiasAdd:output:0*
T0*
_output_shapes

:R
oculta1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@d
oculta1/powPowoculta1/pow/x:output:0oculta1/mul:z:0*
T0*
_output_shapes

:R
oculta1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
oculta1/addAddV2oculta1/add/x:output:0oculta1/pow:z:0*
T0*
_output_shapes

:V
oculta1/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?p
oculta1/truedivRealDivoculta1/truediv/x:output:0oculta1/add:z:0*
T0*
_output_shapes

:�
test_out/MatMul/ReadVariableOpReadVariableOp'test_out_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
test_out/MatMulMatMuloculta1/truediv:z:0&test_out/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
test_out/BiasAdd/ReadVariableOpReadVariableOp(test_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_out/BiasAddBiasAddtest_out/MatMul:product:0'test_out/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:S
test_out/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��p
test_out/mulMultest_out/mul/x:output:0test_out/BiasAdd:output:0*
T0*
_output_shapes

:S
test_out/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@g
test_out/powPowtest_out/pow/x:output:0test_out/mul:z:0*
T0*
_output_shapes

:S
test_out/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
test_out/addAddV2test_out/add/x:output:0test_out/pow:z:0*
T0*
_output_shapes

:W
test_out/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?s
test_out/truedivRealDivtest_out/truediv/x:output:0test_out/add:z:0*
T0*
_output_shapes

:Z
IdentityIdentitytest_out/truediv:z:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp^oculta1/BiasAdd/ReadVariableOp^oculta1/MatMul/ReadVariableOp^test_in/BiasAdd/ReadVariableOp^test_in/MatMul/ReadVariableOp ^test_out/BiasAdd/ReadVariableOp^test_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:: : : : : : 2@
oculta1/BiasAdd/ReadVariableOpoculta1/BiasAdd/ReadVariableOp2>
oculta1/MatMul/ReadVariableOpoculta1/MatMul/ReadVariableOp2@
test_in/BiasAdd/ReadVariableOptest_in/BiasAdd/ReadVariableOp2>
test_in/MatMul/ReadVariableOptest_in/MatMul/ReadVariableOp2B
test_out/BiasAdd/ReadVariableOptest_out/BiasAdd/ReadVariableOp2@
test_out/MatMul/ReadVariableOptest_out/MatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
�,
�
__inference_call_4609

inputs8
&test_in_matmul_readvariableop_resource:5
'test_in_biasadd_readvariableop_resource:8
&oculta1_matmul_readvariableop_resource:5
'oculta1_biasadd_readvariableop_resource:9
'test_out_matmul_readvariableop_resource:6
(test_out_biasadd_readvariableop_resource:
identity��oculta1/BiasAdd/ReadVariableOp�oculta1/MatMul/ReadVariableOp�test_in/BiasAdd/ReadVariableOp�test_in/MatMul/ReadVariableOp�test_out/BiasAdd/ReadVariableOp�test_out/MatMul/ReadVariableOp�
test_in/MatMul/ReadVariableOpReadVariableOp&test_in_matmul_readvariableop_resource*
_output_shapes

:*
dtype0y
test_in/MatMulMatMulinputs%test_in/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
test_in/BiasAdd/ReadVariableOpReadVariableOp'test_in_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_in/BiasAddBiasAddtest_in/MatMul:product:0&test_in/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������R
test_in/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��v
test_in/mulMultest_in/mul/x:output:0test_in/BiasAdd:output:0*
T0*'
_output_shapes
:���������R
test_in/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@m
test_in/powPowtest_in/pow/x:output:0test_in/mul:z:0*
T0*'
_output_shapes
:���������R
test_in/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?o
test_in/addAddV2test_in/add/x:output:0test_in/pow:z:0*
T0*'
_output_shapes
:���������V
test_in/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?y
test_in/truedivRealDivtest_in/truediv/x:output:0test_in/add:z:0*
T0*'
_output_shapes
:����������
oculta1/MatMul/ReadVariableOpReadVariableOp&oculta1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
oculta1/MatMulMatMultest_in/truediv:z:0%oculta1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
oculta1/BiasAdd/ReadVariableOpReadVariableOp'oculta1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
oculta1/BiasAddBiasAddoculta1/MatMul:product:0&oculta1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������R
oculta1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��v
oculta1/mulMuloculta1/mul/x:output:0oculta1/BiasAdd:output:0*
T0*'
_output_shapes
:���������R
oculta1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@m
oculta1/powPowoculta1/pow/x:output:0oculta1/mul:z:0*
T0*'
_output_shapes
:���������R
oculta1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?o
oculta1/addAddV2oculta1/add/x:output:0oculta1/pow:z:0*
T0*'
_output_shapes
:���������V
oculta1/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?y
oculta1/truedivRealDivoculta1/truediv/x:output:0oculta1/add:z:0*
T0*'
_output_shapes
:����������
test_out/MatMul/ReadVariableOpReadVariableOp'test_out_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
test_out/MatMulMatMuloculta1/truediv:z:0&test_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
test_out/BiasAdd/ReadVariableOpReadVariableOp(test_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_out/BiasAddBiasAddtest_out/MatMul:product:0'test_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������S
test_out/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��y
test_out/mulMultest_out/mul/x:output:0test_out/BiasAdd:output:0*
T0*'
_output_shapes
:���������S
test_out/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@p
test_out/powPowtest_out/pow/x:output:0test_out/mul:z:0*
T0*'
_output_shapes
:���������S
test_out/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?r
test_out/addAddV2test_out/add/x:output:0test_out/pow:z:0*
T0*'
_output_shapes
:���������W
test_out/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?|
test_out/truedivRealDivtest_out/truediv/x:output:0test_out/add:z:0*
T0*'
_output_shapes
:���������c
IdentityIdentitytest_out/truediv:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^oculta1/BiasAdd/ReadVariableOp^oculta1/MatMul/ReadVariableOp^test_in/BiasAdd/ReadVariableOp^test_in/MatMul/ReadVariableOp ^test_out/BiasAdd/ReadVariableOp^test_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2@
oculta1/BiasAdd/ReadVariableOpoculta1/BiasAdd/ReadVariableOp2>
oculta1/MatMul/ReadVariableOpoculta1/MatMul/ReadVariableOp2@
test_in/BiasAdd/ReadVariableOptest_in/BiasAdd/ReadVariableOp2>
test_in/MatMul/ReadVariableOptest_in/MatMul/ReadVariableOp2B
test_out/BiasAdd/ReadVariableOptest_out/BiasAdd/ReadVariableOp2@
test_out/MatMul/ReadVariableOptest_out/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_custom_model_layer_call_and_return_conditional_losses_4431
input_1
test_in_4377:
test_in_4379:
oculta1_4401:
oculta1_4403:
test_out_4425:
test_out_4427:
identity��oculta1/StatefulPartitionedCall�test_in/StatefulPartitionedCall� test_out/StatefulPartitionedCall�
test_in/StatefulPartitionedCallStatefulPartitionedCallinput_1test_in_4377test_in_4379*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_test_in_layer_call_and_return_conditional_losses_4376�
oculta1/StatefulPartitionedCallStatefulPartitionedCall(test_in/StatefulPartitionedCall:output:0oculta1_4401oculta1_4403*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_oculta1_layer_call_and_return_conditional_losses_4400�
 test_out/StatefulPartitionedCallStatefulPartitionedCall(oculta1/StatefulPartitionedCall:output:0test_out_4425test_out_4427*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_test_out_layer_call_and_return_conditional_losses_4424x
IdentityIdentity)test_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^oculta1/StatefulPartitionedCall ^test_in/StatefulPartitionedCall!^test_out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2B
oculta1/StatefulPartitionedCalloculta1/StatefulPartitionedCall2B
test_in/StatefulPartitionedCalltest_in/StatefulPartitionedCall2D
 test_out/StatefulPartitionedCall test_out/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�8
�	
__forward_call_533
inputs_08
&test_in_matmul_readvariableop_resource:5
'test_in_biasadd_readvariableop_resource:8
&oculta1_matmul_readvariableop_resource:5
'oculta1_biasadd_readvariableop_resource:9
'test_out_matmul_readvariableop_resource:6
(test_out_biasadd_readvariableop_resource:
identity
test_out_add
test_out_truediv_x
test_out_mul
test_out_pow_x
test_out_pow
test_out_biasadd
test_out_mul_x"
test_out_matmul_readvariableop
oculta1_truediv
oculta1_add
oculta1_truediv_x
oculta1_mul
oculta1_pow_x
oculta1_pow
oculta1_biasadd
oculta1_mul_x!
oculta1_matmul_readvariableop
test_in_truediv
test_in_add
test_in_truediv_x
test_in_mul
test_in_pow_x
test_in_pow
test_in_biasadd
test_in_mul_x!
test_in_matmul_readvariableop

inputs��oculta1/BiasAdd/ReadVariableOp�oculta1/MatMul/ReadVariableOp�test_in/BiasAdd/ReadVariableOp�test_in/MatMul/ReadVariableOp�test_out/BiasAdd/ReadVariableOp�test_out/MatMul/ReadVariableOp�
test_in/MatMul/ReadVariableOpReadVariableOp&test_in_matmul_readvariableop_resource*
_output_shapes

:*
dtype0r
test_in/MatMulMatMulinputs_0%test_in/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
test_in/BiasAdd/ReadVariableOpReadVariableOp'test_in_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_in/BiasAddBiasAddtest_in/MatMul:product:0&test_in/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:R
test_in/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��m
test_in/mulMultest_in/mul/x:output:0test_in/BiasAdd:output:0*
T0*
_output_shapes

:R
test_in/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@d
test_in/powPowtest_in/pow/x:output:0test_in/mul:z:0*
T0*
_output_shapes

:R
test_in/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
test_in/addAddV2test_in/add/x:output:0test_in/pow:z:0*
T0*
_output_shapes

:V
test_in/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?p
test_in/truedivRealDivtest_in/truediv/x:output:0test_in/add:z:0*
T0*
_output_shapes

:�
oculta1/MatMul/ReadVariableOpReadVariableOp&oculta1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0}
oculta1/MatMulMatMultest_in/truediv:z:0%oculta1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
oculta1/BiasAdd/ReadVariableOpReadVariableOp'oculta1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
oculta1/BiasAddBiasAddoculta1/MatMul:product:0&oculta1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:R
oculta1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��m
oculta1/mulMuloculta1/mul/x:output:0oculta1/BiasAdd:output:0*
T0*
_output_shapes

:R
oculta1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@d
oculta1/powPowoculta1/pow/x:output:0oculta1/mul:z:0*
T0*
_output_shapes

:R
oculta1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
oculta1/addAddV2oculta1/add/x:output:0oculta1/pow:z:0*
T0*
_output_shapes

:V
oculta1/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?p
oculta1/truedivRealDivoculta1/truediv/x:output:0oculta1/add:z:0*
T0*
_output_shapes

:�
test_out/MatMul/ReadVariableOpReadVariableOp'test_out_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
test_out/MatMulMatMuloculta1/truediv:z:0&test_out/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
test_out/BiasAdd/ReadVariableOpReadVariableOp(test_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
test_out/BiasAddBiasAddtest_out/MatMul:product:0'test_out/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:S
test_out/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��p
test_out/mulMultest_out/mul/x:output:0test_out/BiasAdd:output:0*
T0*
_output_shapes

:S
test_out/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *T�-@g
test_out/powPowtest_out/pow/x:output:0test_out/mul:z:0*
T0*
_output_shapes

:S
test_out/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
test_out/addAddV2test_out/add/x:output:0test_out/pow:z:0*
T0*
_output_shapes

:W
test_out/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?s
test_out/truedivRealDivtest_out/truediv/x:output:0test_out/add:z:0*
T0*
_output_shapes

:Z
IdentityIdentitytest_out/truediv:z:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp^oculta1/BiasAdd/ReadVariableOp^oculta1/MatMul/ReadVariableOp^test_in/BiasAdd/ReadVariableOp^test_in/MatMul/ReadVariableOp ^test_out/BiasAdd/ReadVariableOp^test_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"
oculta1_addoculta1/add:z:0"+
oculta1_biasaddoculta1/BiasAdd:output:0"F
oculta1_matmul_readvariableop%oculta1/MatMul/ReadVariableOp:value:0"'
oculta1_mul_xoculta1/mul/x:output:0"
oculta1_muloculta1/mul:z:0"'
oculta1_pow_xoculta1/pow/x:output:0"
oculta1_powoculta1/pow:z:0"/
oculta1_truediv_xoculta1/truediv/x:output:0"&
oculta1_truedivoculta1/truediv:z:0"
test_in_addtest_in/add:z:0"+
test_in_biasaddtest_in/BiasAdd:output:0"F
test_in_matmul_readvariableop%test_in/MatMul/ReadVariableOp:value:0"'
test_in_mul_xtest_in/mul/x:output:0"
test_in_multest_in/mul:z:0"'
test_in_pow_xtest_in/pow/x:output:0"
test_in_powtest_in/pow:z:0"/
test_in_truediv_xtest_in/truediv/x:output:0"&
test_in_truedivtest_in/truediv:z:0" 
test_out_addtest_out/add:z:0"-
test_out_biasaddtest_out/BiasAdd:output:0"H
test_out_matmul_readvariableop&test_out/MatMul/ReadVariableOp:value:0")
test_out_mul_xtest_out/mul/x:output:0" 
test_out_multest_out/mul:z:0")
test_out_pow_xtest_out/pow/x:output:0" 
test_out_powtest_out/pow:z:0"1
test_out_truediv_xtest_out/truediv/x:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:: : : : : : *?
backward_function_name%#__inference___backward_call_333_5342@
oculta1/BiasAdd/ReadVariableOpoculta1/BiasAdd/ReadVariableOp2>
oculta1/MatMul/ReadVariableOpoculta1/MatMul/ReadVariableOp2@
test_in/BiasAdd/ReadVariableOptest_in/BiasAdd/ReadVariableOp2>
test_in/MatMul/ReadVariableOptest_in/MatMul/ReadVariableOp2B
test_out/BiasAdd/ReadVariableOptest_out/BiasAdd/ReadVariableOp2@
test_out/MatMul/ReadVariableOptest_out/MatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
�
�
+__inference_custom_model_layer_call_fn_4468
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_custom_model_layer_call_and_return_conditional_losses_4453o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_18
!__inference_internal_grad_fn_5278CustomGradient-49578
!__inference_internal_grad_fn_5318CustomGradient-4131"�
L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
predx
%
inputs
pred_inputs:03
output_0'
StatefulPartitionedCall:0tensorflow/serving/predict*�
train�
6
training_input$
train_training_input:0
8
training_target%
train_training_target:0-
output_0!
StatefulPartitionedCall_1:0 tensorflow/serving/predict:�r
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
dense_1
	dense_2

dense_3
	optimizer
call
training

signatures"
_tf_keras_model
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_12�
+__inference_custom_model_layer_call_fn_4468
+__inference_custom_model_layer_call_fn_5069�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�
trace_0
trace_12�
F__inference_custom_model_layer_call_and_return_conditional_losses_4431
F__inference_custom_model_layer_call_and_return_conditional_losses_5115�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�B�
__inference__wrapped_model_4354input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
0
_variables
1_iterations
2_learning_rate
3_index_dict
4	momentums
5_update_step_xla"
experimentalOptimizer
�
6trace_0
7trace_12�
__inference_call_4563
__inference_call_4609�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z6trace_0z7trace_1
�
8trace_02�
__inference_training_5052�
���
FullArgSpec
args�
j
train_data
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z8trace_0
,
	9train
:pred"
signature_map
 :2test_in/kernel
:2test_in/bias
 :2oculta1/kernel
:2oculta1/bias
!:2test_out/kernel
:2test_out/bias
 "
trackable_list_wrapper
5
0
	1

2"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_custom_model_layer_call_fn_4468input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_custom_model_layer_call_fn_5069inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_custom_model_layer_call_and_return_conditional_losses_4431input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_custom_model_layer_call_and_return_conditional_losses_5115inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
Btrace_02�
&__inference_test_in_layer_call_fn_5124�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zBtrace_0
�
Ctrace_02�
A__inference_test_in_layer_call_and_return_conditional_losses_5142�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zCtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
Itrace_02�
&__inference_oculta1_layer_call_fn_5151�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zItrace_0
�
Jtrace_02�
A__inference_oculta1_layer_call_and_return_conditional_losses_5169�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zJtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
Ptrace_02�
'__inference_test_out_layer_call_fn_5178�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zPtrace_0
�
Qtrace_02�
B__inference_test_out_layer_call_and_return_conditional_losses_5196�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zQtrace_0
Q
10
R1
S2
T3
U4
V5
W6"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
J
R0
S1
T2
U3
V4
W5"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
__inference_call_4563inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_call_4609inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_training_5052training_inputtraining_target"�
���
FullArgSpec
args�
j
train_data
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_signature_wrapper_4271training_inputtraining_target"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_signature_wrapper_4290inputs"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
X	variables
Y	keras_api
	Ztotal
	[count"
_tf_keras_metric
^
\	variables
]	keras_api
	^total
	_count
`
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_test_in_layer_call_fn_5124inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_test_in_layer_call_and_return_conditional_losses_5142inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_oculta1_layer_call_fn_5151inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_oculta1_layer_call_and_return_conditional_losses_5169inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_test_out_layer_call_fn_5178inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_test_out_layer_call_and_return_conditional_losses_5196inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
$:"2SGD/m/test_in/kernel
:2SGD/m/test_in/bias
$:"2SGD/m/oculta1/kernel
:2SGD/m/oculta1/bias
%:#2SGD/m/test_out/kernel
:2SGD/m/test_out/bias
.
Z0
[1"
trackable_list_wrapper
-
X	variables"
_generic_user_object
:  (2total
:  (2count
.
^0
_1"
trackable_list_wrapper
-
\	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
__inference__wrapped_model_4354o0�-
&�#
!�
input_1���������
� "3�0
.
output_1"�
output_1���������c
__inference_call_4563J&�#
�
�
inputs
� "�
unknownu
__inference_call_4609\/�,
%�"
 �
inputs���������
� "!�
unknown����������
F__inference_custom_model_layer_call_and_return_conditional_losses_4431h0�-
&�#
!�
input_1���������
� ",�)
"�
tensor_0���������
� �
F__inference_custom_model_layer_call_and_return_conditional_losses_5115g/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
+__inference_custom_model_layer_call_fn_4468]0�-
&�#
!�
input_1���������
� "!�
unknown����������
+__inference_custom_model_layer_call_fn_5069\/�,
%�"
 �
inputs���������
� "!�
unknown����������
!__inference_internal_grad_fn_5278����
���

 
�
result_grads_0
�
result_grads_1
�
result_grads_2
�
result_grads_3
�
result_grads_4
�
result_grads_5
�
result_grads_6
�
result_grads_7
�
result_grads_8
�
result_grads_9
 �
result_grads_10
�
result_grads_11
� "���

 

 

 

 

 

 
�
tensor_6
�
tensor_7
�
tensor_8
�
tensor_9
�
	tensor_10
�
	tensor_11�
!__inference_internal_grad_fn_5318����
���

 
�
result_grads_0
�
result_grads_1
�
result_grads_2
�
result_grads_3
�
result_grads_4
�
result_grads_5
�
result_grads_6
�
result_grads_7
�
result_grads_8
�
result_grads_9
 �
result_grads_10
�
result_grads_11
� "���

 

 

 

 

 

 
�
tensor_6
�
tensor_7
�
tensor_8
�
tensor_9
�
	tensor_10
�
	tensor_11�
A__inference_oculta1_layer_call_and_return_conditional_losses_5169c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
&__inference_oculta1_layer_call_fn_5151X/�,
%�"
 �
inputs���������
� "!�
unknown����������
"__inference_signature_wrapper_4271�Z[2RSTUVW1^_u�r
� 
k�h
1
training_input�
training_input
3
training_target �
training_target""�

output_0�
output_0 �
"__inference_signature_wrapper_4290f0�-
� 
&�#
!
inputs�
inputs"*�'
%
output_0�
output_0�
A__inference_test_in_layer_call_and_return_conditional_losses_5142c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
&__inference_test_in_layer_call_fn_5124X/�,
%�"
 �
inputs���������
� "!�
unknown����������
B__inference_test_out_layer_call_and_return_conditional_losses_5196c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
'__inference_test_out_layer_call_fn_5178X/�,
%�"
 �
inputs���������
� "!�
unknown����������
__inference_training_5052}Z[2RSTUVW1^_U�R
K�H
F�C
�
training_input
 �
training_target
� "�
unknown 