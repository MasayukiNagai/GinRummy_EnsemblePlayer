??
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
?
ApplyGradientDescent
var"T?

alpha"T

delta"T
out"T?" 
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
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
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve*2.1.02unknown??
?
ConstConst*
_output_shapes

:*
dtype0*Y
valuePBN"@                              ??      ??              ??      ??
x
Const_1Const*
_output_shapes

:*
dtype0*9
value0B."               ??      ??        
d
xPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
Z
zerosConst*
_output_shapes

:*
dtype0*
valueB*    
u
W
VariableV2*
_output_shapes

:*
	container *
dtype0*
shape
:*
shared_name 
?
W/AssignAssignWzeros*
T0*
_class

loc:@W*
_output_shapes

:*
use_locking(*
validate_shape(
T
W/readIdentityW*
T0*
_class

loc:@W*
_output_shapes

:
T
zeros_1Const*
_output_shapes
:*
dtype0*
valueB*    
m
b
VariableV2*
_output_shapes
:*
	container *
dtype0*
shape:*
shared_name 
?
b/AssignAssignbzeros_1*
T0*
_class

loc:@b*
_output_shapes
:*
use_locking(*
validate_shape(
P
b/readIdentityb*
T0*
_class

loc:@b*
_output_shapes
:
d
yPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
s
MatMulMatMulxW/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
L
AddAddMatMulb/read*
T0*'
_output_shapes
:?????????
D
subSubyAdd*
T0*'
_output_shapes
:?????????
G
SquareSquaresub*
T0*'
_output_shapes
:?????????
X
Const_2Const*
_output_shapes
:*
dtype0*
valueB"       
[
MeanMeanSquareConst_2*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
R
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
X
gradients/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  ??
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: *

index_type0
r
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
?
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
_
gradients/Mean_grad/ShapeShapeSquare*
T0*
_output_shapes
:*
out_type0
?
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0*'
_output_shapes
:?????????
a
gradients/Mean_grad/Shape_1ShapeSquare*
T0*
_output_shapes
:*
out_type0
^
gradients/Mean_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
c
gradients/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
e
gradients/Mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
_
gradients/Mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
?
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
?
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
?
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*'
_output_shapes
:?????????
~
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @
t
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0*'
_output_shapes
:?????????
?
gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0*'
_output_shapes
:?????????
Y
gradients/sub_grad/ShapeShapey*
T0*
_output_shapes
:*
out_type0
]
gradients/sub_grad/Shape_1ShapeAdd*
T0*
_output_shapes
:*
out_type0
?
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
l
gradients/sub_grad/NegNeggradients/Square_grad/Mul_1*
T0*'
_output_shapes
:?????????
?
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg*gradients/sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Sum_1gradients/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
?
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*'
_output_shapes
:?????????
?
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*'
_output_shapes
:?????????
^
gradients/Add_grad/ShapeShapeMatMul*
T0*
_output_shapes
:*
out_type0
`
gradients/Add_grad/Shape_1Shapeb/read*
T0*
_output_shapes
:*
out_type0
?
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/Add_grad/SumSum-gradients/sub_grad/tuple/control_dependency_1(gradients/Add_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
gradients/Add_grad/Sum_1Sum-gradients/sub_grad/tuple/control_dependency_1*gradients/Add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
?
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Add_grad/Reshape*'
_output_shapes
:?????????
?
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_grad/Reshape_1*
_output_shapes
:
?
gradients/MatMul_grad/MatMulMatMul+gradients/Add_grad/tuple/control_dependencyW/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b(
?
gradients/MatMul_grad/MatMul_1MatMulx+gradients/Add_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
?
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*'
_output_shapes
:?????????
?
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
_output_shapes

:
b
GradientDescent/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;
?
-GradientDescent/update_W/ApplyGradientDescentApplyGradientDescentWGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
T0*
_class

loc:@W*
_output_shapes

:*
use_locking( 
?
-GradientDescent/update_b/ApplyGradientDescentApplyGradientDescentbGradientDescent/learning_rate-gradients/Add_grad/tuple/control_dependency_1*
T0*
_class

loc:@b*
_output_shapes
:*
use_locking( 
w
GradientDescentNoOp.^GradientDescent/update_W/ApplyGradientDescent.^GradientDescent/update_b/ApplyGradientDescent
"
initNoOp	^W/Assign	^b/Assign
?
Const_3Const*
_output_shapes

:*
dtype0*Y
valuePBN"@                              ??      ??              ??      ??
x
Const_4Const*
_output_shapes

:*
dtype0*9
value0B."               ??      ??        
f
x_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
\
zeros_2Const*
_output_shapes

:*
dtype0*
valueB*    
w
W_1
VariableV2*
_output_shapes

:*
	container *
dtype0*
shape
:*
shared_name 
?

W_1/AssignAssignW_1zeros_2*
T0*
_class

loc:@W_1*
_output_shapes

:*
use_locking(*
validate_shape(
Z
W_1/readIdentityW_1*
T0*
_class

loc:@W_1*
_output_shapes

:
T
zeros_3Const*
_output_shapes
:*
dtype0*
valueB*    
o
b_1
VariableV2*
_output_shapes
:*
	container *
dtype0*
shape:*
shared_name 
?

b_1/AssignAssignb_1zeros_3*
T0*
_class

loc:@b_1*
_output_shapes
:*
use_locking(*
validate_shape(
V
b_1/readIdentityb_1*
T0*
_class

loc:@b_1*
_output_shapes
:
f
y_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
y
MatMul_1MatMulx_1W_1/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
R
Add_1AddMatMul_1b_1/read*
T0*'
_output_shapes
:?????????
J
sub_1Suby_1Add_1*
T0*'
_output_shapes
:?????????
K
Square_1Squaresub_1*
T0*'
_output_shapes
:?????????
X
Const_5Const*
_output_shapes
:*
dtype0*
valueB"       
_
Mean_1MeanSquare_1Const_5*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
T
gradients_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
Z
gradients_1/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  ??
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*
_output_shapes
: *

index_type0
v
%gradients_1/Mean_1_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
?
gradients_1/Mean_1_grad/ReshapeReshapegradients_1/Fill%gradients_1/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
e
gradients_1/Mean_1_grad/ShapeShapeSquare_1*
T0*
_output_shapes
:*
out_type0
?
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*
T0*

Tmultiples0*'
_output_shapes
:?????????
g
gradients_1/Mean_1_grad/Shape_1ShapeSquare_1*
T0*
_output_shapes
:*
out_type0
b
gradients_1/Mean_1_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
g
gradients_1/Mean_1_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
i
gradients_1/Mean_1_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
c
!gradients_1/Mean_1_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
?
gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 
?
 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0*
_output_shapes
: 
?
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
?
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*'
_output_shapes
:?????????
?
gradients_1/Square_1_grad/ConstConst ^gradients_1/Mean_1_grad/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @
~
gradients_1/Square_1_grad/MulMulsub_1gradients_1/Square_1_grad/Const*
T0*'
_output_shapes
:?????????
?
gradients_1/Square_1_grad/Mul_1Mulgradients_1/Mean_1_grad/truedivgradients_1/Square_1_grad/Mul*
T0*'
_output_shapes
:?????????
_
gradients_1/sub_1_grad/ShapeShapey_1*
T0*
_output_shapes
:*
out_type0
c
gradients_1/sub_1_grad/Shape_1ShapeAdd_1*
T0*
_output_shapes
:*
out_type0
?
,gradients_1/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_1_grad/Shapegradients_1/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_1/sub_1_grad/SumSumgradients_1/Square_1_grad/Mul_1,gradients_1/sub_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients_1/sub_1_grad/ReshapeReshapegradients_1/sub_1_grad/Sumgradients_1/sub_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
t
gradients_1/sub_1_grad/NegNeggradients_1/Square_1_grad/Mul_1*
T0*'
_output_shapes
:?????????
?
gradients_1/sub_1_grad/Sum_1Sumgradients_1/sub_1_grad/Neg.gradients_1/sub_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
 gradients_1/sub_1_grad/Reshape_1Reshapegradients_1/sub_1_grad/Sum_1gradients_1/sub_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
s
'gradients_1/sub_1_grad/tuple/group_depsNoOp^gradients_1/sub_1_grad/Reshape!^gradients_1/sub_1_grad/Reshape_1
?
/gradients_1/sub_1_grad/tuple/control_dependencyIdentitygradients_1/sub_1_grad/Reshape(^gradients_1/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_1_grad/Reshape*'
_output_shapes
:?????????
?
1gradients_1/sub_1_grad/tuple/control_dependency_1Identity gradients_1/sub_1_grad/Reshape_1(^gradients_1/sub_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/sub_1_grad/Reshape_1*'
_output_shapes
:?????????
d
gradients_1/Add_1_grad/ShapeShapeMatMul_1*
T0*
_output_shapes
:*
out_type0
f
gradients_1/Add_1_grad/Shape_1Shapeb_1/read*
T0*
_output_shapes
:*
out_type0
?
,gradients_1/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Add_1_grad/Shapegradients_1/Add_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_1/Add_1_grad/SumSum1gradients_1/sub_1_grad/tuple/control_dependency_1,gradients_1/Add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients_1/Add_1_grad/ReshapeReshapegradients_1/Add_1_grad/Sumgradients_1/Add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
gradients_1/Add_1_grad/Sum_1Sum1gradients_1/sub_1_grad/tuple/control_dependency_1.gradients_1/Add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
 gradients_1/Add_1_grad/Reshape_1Reshapegradients_1/Add_1_grad/Sum_1gradients_1/Add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
s
'gradients_1/Add_1_grad/tuple/group_depsNoOp^gradients_1/Add_1_grad/Reshape!^gradients_1/Add_1_grad/Reshape_1
?
/gradients_1/Add_1_grad/tuple/control_dependencyIdentitygradients_1/Add_1_grad/Reshape(^gradients_1/Add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/Add_1_grad/Reshape*'
_output_shapes
:?????????
?
1gradients_1/Add_1_grad/tuple/control_dependency_1Identity gradients_1/Add_1_grad/Reshape_1(^gradients_1/Add_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/Add_1_grad/Reshape_1*
_output_shapes
:
?
 gradients_1/MatMul_1_grad/MatMulMatMul/gradients_1/Add_1_grad/tuple/control_dependencyW_1/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b(
?
"gradients_1/MatMul_1_grad/MatMul_1MatMulx_1/gradients_1/Add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
z
*gradients_1/MatMul_1_grad/tuple/group_depsNoOp!^gradients_1/MatMul_1_grad/MatMul#^gradients_1/MatMul_1_grad/MatMul_1
?
2gradients_1/MatMul_1_grad/tuple/control_dependencyIdentity gradients_1/MatMul_1_grad/MatMul+^gradients_1/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/MatMul_1_grad/MatMul*'
_output_shapes
:?????????
?
4gradients_1/MatMul_1_grad/tuple/control_dependency_1Identity"gradients_1/MatMul_1_grad/MatMul_1+^gradients_1/MatMul_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/MatMul_1_grad/MatMul_1*
_output_shapes

:
d
GradientDescent_1/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;
?
1GradientDescent_1/update_W_1/ApplyGradientDescentApplyGradientDescentW_1GradientDescent_1/learning_rate4gradients_1/MatMul_1_grad/tuple/control_dependency_1*
T0*
_class

loc:@W_1*
_output_shapes

:*
use_locking( 
?
1GradientDescent_1/update_b_1/ApplyGradientDescentApplyGradientDescentb_1GradientDescent_1/learning_rate1gradients_1/Add_1_grad/tuple/control_dependency_1*
T0*
_class

loc:@b_1*
_output_shapes
:*
use_locking( 
?
GradientDescent_1NoOp2^GradientDescent_1/update_W_1/ApplyGradientDescent2^GradientDescent_1/update_b_1/ApplyGradientDescent
>
init_1NoOp	^W/Assign^W_1/Assign	^b/Assign^b_1/Assign
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
?
save/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_19121c5e22a6427c8bfc4489283278af/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
~
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBBWBW_1BbBb_1
z
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B 
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesWW_1bb_1"/device:CPU:0*
dtypes
2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 
?
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
?
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBBWBW_1BbBb_1
}
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*$
_output_shapes
::::*
dtypes
2
?
save/AssignAssignWsave/RestoreV2*
T0*
_class

loc:@W*
_output_shapes

:*
use_locking(*
validate_shape(
?
save/Assign_1AssignW_1save/RestoreV2:1*
T0*
_class

loc:@W_1*
_output_shapes

:*
use_locking(*
validate_shape(
?
save/Assign_2Assignbsave/RestoreV2:2*
T0*
_class

loc:@b*
_output_shapes
:*
use_locking(*
validate_shape(
?
save/Assign_3Assignb_1save/RestoreV2:3*
T0*
_class

loc:@b_1*
_output_shapes
:*
use_locking(*
validate_shape(
X
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3
-
save/restore_allNoOp^save/restore_shard
?
Const_6Const*
_output_shapes

:*
dtype0*Y
valuePBN"@                              ??      ??              ??      ??
x
Const_7Const*
_output_shapes

:*
dtype0*9
value0B."               ??      ??        
f
x_2Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
\
zeros_4Const*
_output_shapes

:*
dtype0*
valueB*    
w
W_2
VariableV2*
_output_shapes

:*
	container *
dtype0*
shape
:*
shared_name 
?

W_2/AssignAssignW_2zeros_4*
T0*
_class

loc:@W_2*
_output_shapes

:*
use_locking(*
validate_shape(
Z
W_2/readIdentityW_2*
T0*
_class

loc:@W_2*
_output_shapes

:
T
zeros_5Const*
_output_shapes
:*
dtype0*
valueB*    
o
b_2
VariableV2*
_output_shapes
:*
	container *
dtype0*
shape:*
shared_name 
?

b_2/AssignAssignb_2zeros_5*
T0*
_class

loc:@b_2*
_output_shapes
:*
use_locking(*
validate_shape(
V
b_2/readIdentityb_2*
T0*
_class

loc:@b_2*
_output_shapes
:
f
y_2Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
y
MatMul_2MatMulx_2W_2/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
R
Add_2AddMatMul_2b_2/read*
T0*'
_output_shapes
:?????????
J
sub_2Suby_2Add_2*
T0*'
_output_shapes
:?????????
K
Square_2Squaresub_2*
T0*'
_output_shapes
:?????????
X
Const_8Const*
_output_shapes
:*
dtype0*
valueB"       
_
Mean_2MeanSquare_2Const_8*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
T
gradients_2/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
Z
gradients_2/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  ??
u
gradients_2/FillFillgradients_2/Shapegradients_2/grad_ys_0*
T0*
_output_shapes
: *

index_type0
v
%gradients_2/Mean_2_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
?
gradients_2/Mean_2_grad/ReshapeReshapegradients_2/Fill%gradients_2/Mean_2_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
e
gradients_2/Mean_2_grad/ShapeShapeSquare_2*
T0*
_output_shapes
:*
out_type0
?
gradients_2/Mean_2_grad/TileTilegradients_2/Mean_2_grad/Reshapegradients_2/Mean_2_grad/Shape*
T0*

Tmultiples0*'
_output_shapes
:?????????
g
gradients_2/Mean_2_grad/Shape_1ShapeSquare_2*
T0*
_output_shapes
:*
out_type0
b
gradients_2/Mean_2_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
g
gradients_2/Mean_2_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
gradients_2/Mean_2_grad/ProdProdgradients_2/Mean_2_grad/Shape_1gradients_2/Mean_2_grad/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
i
gradients_2/Mean_2_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
gradients_2/Mean_2_grad/Prod_1Prodgradients_2/Mean_2_grad/Shape_2gradients_2/Mean_2_grad/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
c
!gradients_2/Mean_2_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
?
gradients_2/Mean_2_grad/MaximumMaximumgradients_2/Mean_2_grad/Prod_1!gradients_2/Mean_2_grad/Maximum/y*
T0*
_output_shapes
: 
?
 gradients_2/Mean_2_grad/floordivFloorDivgradients_2/Mean_2_grad/Prodgradients_2/Mean_2_grad/Maximum*
T0*
_output_shapes
: 
?
gradients_2/Mean_2_grad/CastCast gradients_2/Mean_2_grad/floordiv*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
?
gradients_2/Mean_2_grad/truedivRealDivgradients_2/Mean_2_grad/Tilegradients_2/Mean_2_grad/Cast*
T0*'
_output_shapes
:?????????
?
gradients_2/Square_2_grad/ConstConst ^gradients_2/Mean_2_grad/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @
~
gradients_2/Square_2_grad/MulMulsub_2gradients_2/Square_2_grad/Const*
T0*'
_output_shapes
:?????????
?
gradients_2/Square_2_grad/Mul_1Mulgradients_2/Mean_2_grad/truedivgradients_2/Square_2_grad/Mul*
T0*'
_output_shapes
:?????????
_
gradients_2/sub_2_grad/ShapeShapey_2*
T0*
_output_shapes
:*
out_type0
c
gradients_2/sub_2_grad/Shape_1ShapeAdd_2*
T0*
_output_shapes
:*
out_type0
?
,gradients_2/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/sub_2_grad/Shapegradients_2/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_2/sub_2_grad/SumSumgradients_2/Square_2_grad/Mul_1,gradients_2/sub_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients_2/sub_2_grad/ReshapeReshapegradients_2/sub_2_grad/Sumgradients_2/sub_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
t
gradients_2/sub_2_grad/NegNeggradients_2/Square_2_grad/Mul_1*
T0*'
_output_shapes
:?????????
?
gradients_2/sub_2_grad/Sum_1Sumgradients_2/sub_2_grad/Neg.gradients_2/sub_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
 gradients_2/sub_2_grad/Reshape_1Reshapegradients_2/sub_2_grad/Sum_1gradients_2/sub_2_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
s
'gradients_2/sub_2_grad/tuple/group_depsNoOp^gradients_2/sub_2_grad/Reshape!^gradients_2/sub_2_grad/Reshape_1
?
/gradients_2/sub_2_grad/tuple/control_dependencyIdentitygradients_2/sub_2_grad/Reshape(^gradients_2/sub_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_2/sub_2_grad/Reshape*'
_output_shapes
:?????????
?
1gradients_2/sub_2_grad/tuple/control_dependency_1Identity gradients_2/sub_2_grad/Reshape_1(^gradients_2/sub_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_2/sub_2_grad/Reshape_1*'
_output_shapes
:?????????
d
gradients_2/Add_2_grad/ShapeShapeMatMul_2*
T0*
_output_shapes
:*
out_type0
f
gradients_2/Add_2_grad/Shape_1Shapeb_2/read*
T0*
_output_shapes
:*
out_type0
?
,gradients_2/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/Add_2_grad/Shapegradients_2/Add_2_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_2/Add_2_grad/SumSum1gradients_2/sub_2_grad/tuple/control_dependency_1,gradients_2/Add_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients_2/Add_2_grad/ReshapeReshapegradients_2/Add_2_grad/Sumgradients_2/Add_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
gradients_2/Add_2_grad/Sum_1Sum1gradients_2/sub_2_grad/tuple/control_dependency_1.gradients_2/Add_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
 gradients_2/Add_2_grad/Reshape_1Reshapegradients_2/Add_2_grad/Sum_1gradients_2/Add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
s
'gradients_2/Add_2_grad/tuple/group_depsNoOp^gradients_2/Add_2_grad/Reshape!^gradients_2/Add_2_grad/Reshape_1
?
/gradients_2/Add_2_grad/tuple/control_dependencyIdentitygradients_2/Add_2_grad/Reshape(^gradients_2/Add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_2/Add_2_grad/Reshape*'
_output_shapes
:?????????
?
1gradients_2/Add_2_grad/tuple/control_dependency_1Identity gradients_2/Add_2_grad/Reshape_1(^gradients_2/Add_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_2/Add_2_grad/Reshape_1*
_output_shapes
:
?
 gradients_2/MatMul_2_grad/MatMulMatMul/gradients_2/Add_2_grad/tuple/control_dependencyW_2/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b(
?
"gradients_2/MatMul_2_grad/MatMul_1MatMulx_2/gradients_2/Add_2_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
z
*gradients_2/MatMul_2_grad/tuple/group_depsNoOp!^gradients_2/MatMul_2_grad/MatMul#^gradients_2/MatMul_2_grad/MatMul_1
?
2gradients_2/MatMul_2_grad/tuple/control_dependencyIdentity gradients_2/MatMul_2_grad/MatMul+^gradients_2/MatMul_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_2/MatMul_2_grad/MatMul*'
_output_shapes
:?????????
?
4gradients_2/MatMul_2_grad/tuple/control_dependency_1Identity"gradients_2/MatMul_2_grad/MatMul_1+^gradients_2/MatMul_2_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_2/MatMul_2_grad/MatMul_1*
_output_shapes

:
d
GradientDescent_2/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;
?
1GradientDescent_2/update_W_2/ApplyGradientDescentApplyGradientDescentW_2GradientDescent_2/learning_rate4gradients_2/MatMul_2_grad/tuple/control_dependency_1*
T0*
_class

loc:@W_2*
_output_shapes

:*
use_locking( 
?
1GradientDescent_2/update_b_2/ApplyGradientDescentApplyGradientDescentb_2GradientDescent_2/learning_rate1gradients_2/Add_2_grad/tuple/control_dependency_1*
T0*
_class

loc:@b_2*
_output_shapes
:*
use_locking( 
?
GradientDescent_2NoOp2^GradientDescent_2/update_W_2/ApplyGradientDescent2^GradientDescent_2/update_b_2/ApplyGradientDescent
X
init_2NoOp	^W/Assign^W_1/Assign^W_2/Assign	^b/Assign^b_1/Assign^b_2/Assign
?
Const_9Const*
_output_shapes

:*
dtype0*Y
valuePBN"@                              ??      ??              ??      ??
y
Const_10Const*
_output_shapes

:*
dtype0*9
value0B."               ??      ??        
f
x_3Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
\
zeros_6Const*
_output_shapes

:*
dtype0*
valueB*    
w
W_3
VariableV2*
_output_shapes

:*
	container *
dtype0*
shape
:*
shared_name 
?

W_3/AssignAssignW_3zeros_6*
T0*
_class

loc:@W_3*
_output_shapes

:*
use_locking(*
validate_shape(
Z
W_3/readIdentityW_3*
T0*
_class

loc:@W_3*
_output_shapes

:
T
zeros_7Const*
_output_shapes
:*
dtype0*
valueB*    
o
b_3
VariableV2*
_output_shapes
:*
	container *
dtype0*
shape:*
shared_name 
?

b_3/AssignAssignb_3zeros_7*
T0*
_class

loc:@b_3*
_output_shapes
:*
use_locking(*
validate_shape(
V
b_3/readIdentityb_3*
T0*
_class

loc:@b_3*
_output_shapes
:
f
y_3Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
y
MatMul_3MatMulx_3W_3/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
R
Add_3AddMatMul_3b_3/read*
T0*'
_output_shapes
:?????????
J
sub_3Suby_3Add_3*
T0*'
_output_shapes
:?????????
K
Square_3Squaresub_3*
T0*'
_output_shapes
:?????????
Y
Const_11Const*
_output_shapes
:*
dtype0*
valueB"       
`
Mean_3MeanSquare_3Const_11*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
T
gradients_3/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
Z
gradients_3/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  ??
u
gradients_3/FillFillgradients_3/Shapegradients_3/grad_ys_0*
T0*
_output_shapes
: *

index_type0
v
%gradients_3/Mean_3_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
?
gradients_3/Mean_3_grad/ReshapeReshapegradients_3/Fill%gradients_3/Mean_3_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
e
gradients_3/Mean_3_grad/ShapeShapeSquare_3*
T0*
_output_shapes
:*
out_type0
?
gradients_3/Mean_3_grad/TileTilegradients_3/Mean_3_grad/Reshapegradients_3/Mean_3_grad/Shape*
T0*

Tmultiples0*'
_output_shapes
:?????????
g
gradients_3/Mean_3_grad/Shape_1ShapeSquare_3*
T0*
_output_shapes
:*
out_type0
b
gradients_3/Mean_3_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
g
gradients_3/Mean_3_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
gradients_3/Mean_3_grad/ProdProdgradients_3/Mean_3_grad/Shape_1gradients_3/Mean_3_grad/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
i
gradients_3/Mean_3_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
gradients_3/Mean_3_grad/Prod_1Prodgradients_3/Mean_3_grad/Shape_2gradients_3/Mean_3_grad/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
c
!gradients_3/Mean_3_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
?
gradients_3/Mean_3_grad/MaximumMaximumgradients_3/Mean_3_grad/Prod_1!gradients_3/Mean_3_grad/Maximum/y*
T0*
_output_shapes
: 
?
 gradients_3/Mean_3_grad/floordivFloorDivgradients_3/Mean_3_grad/Prodgradients_3/Mean_3_grad/Maximum*
T0*
_output_shapes
: 
?
gradients_3/Mean_3_grad/CastCast gradients_3/Mean_3_grad/floordiv*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
?
gradients_3/Mean_3_grad/truedivRealDivgradients_3/Mean_3_grad/Tilegradients_3/Mean_3_grad/Cast*
T0*'
_output_shapes
:?????????
?
gradients_3/Square_3_grad/ConstConst ^gradients_3/Mean_3_grad/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @
~
gradients_3/Square_3_grad/MulMulsub_3gradients_3/Square_3_grad/Const*
T0*'
_output_shapes
:?????????
?
gradients_3/Square_3_grad/Mul_1Mulgradients_3/Mean_3_grad/truedivgradients_3/Square_3_grad/Mul*
T0*'
_output_shapes
:?????????
_
gradients_3/sub_3_grad/ShapeShapey_3*
T0*
_output_shapes
:*
out_type0
c
gradients_3/sub_3_grad/Shape_1ShapeAdd_3*
T0*
_output_shapes
:*
out_type0
?
,gradients_3/sub_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_3/sub_3_grad/Shapegradients_3/sub_3_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_3/sub_3_grad/SumSumgradients_3/Square_3_grad/Mul_1,gradients_3/sub_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients_3/sub_3_grad/ReshapeReshapegradients_3/sub_3_grad/Sumgradients_3/sub_3_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
t
gradients_3/sub_3_grad/NegNeggradients_3/Square_3_grad/Mul_1*
T0*'
_output_shapes
:?????????
?
gradients_3/sub_3_grad/Sum_1Sumgradients_3/sub_3_grad/Neg.gradients_3/sub_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
 gradients_3/sub_3_grad/Reshape_1Reshapegradients_3/sub_3_grad/Sum_1gradients_3/sub_3_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
s
'gradients_3/sub_3_grad/tuple/group_depsNoOp^gradients_3/sub_3_grad/Reshape!^gradients_3/sub_3_grad/Reshape_1
?
/gradients_3/sub_3_grad/tuple/control_dependencyIdentitygradients_3/sub_3_grad/Reshape(^gradients_3/sub_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_3/sub_3_grad/Reshape*'
_output_shapes
:?????????
?
1gradients_3/sub_3_grad/tuple/control_dependency_1Identity gradients_3/sub_3_grad/Reshape_1(^gradients_3/sub_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_3/sub_3_grad/Reshape_1*'
_output_shapes
:?????????
d
gradients_3/Add_3_grad/ShapeShapeMatMul_3*
T0*
_output_shapes
:*
out_type0
f
gradients_3/Add_3_grad/Shape_1Shapeb_3/read*
T0*
_output_shapes
:*
out_type0
?
,gradients_3/Add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_3/Add_3_grad/Shapegradients_3/Add_3_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_3/Add_3_grad/SumSum1gradients_3/sub_3_grad/tuple/control_dependency_1,gradients_3/Add_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients_3/Add_3_grad/ReshapeReshapegradients_3/Add_3_grad/Sumgradients_3/Add_3_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
gradients_3/Add_3_grad/Sum_1Sum1gradients_3/sub_3_grad/tuple/control_dependency_1.gradients_3/Add_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
 gradients_3/Add_3_grad/Reshape_1Reshapegradients_3/Add_3_grad/Sum_1gradients_3/Add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
s
'gradients_3/Add_3_grad/tuple/group_depsNoOp^gradients_3/Add_3_grad/Reshape!^gradients_3/Add_3_grad/Reshape_1
?
/gradients_3/Add_3_grad/tuple/control_dependencyIdentitygradients_3/Add_3_grad/Reshape(^gradients_3/Add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_3/Add_3_grad/Reshape*'
_output_shapes
:?????????
?
1gradients_3/Add_3_grad/tuple/control_dependency_1Identity gradients_3/Add_3_grad/Reshape_1(^gradients_3/Add_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_3/Add_3_grad/Reshape_1*
_output_shapes
:
?
 gradients_3/MatMul_3_grad/MatMulMatMul/gradients_3/Add_3_grad/tuple/control_dependencyW_3/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b(
?
"gradients_3/MatMul_3_grad/MatMul_1MatMulx_3/gradients_3/Add_3_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
z
*gradients_3/MatMul_3_grad/tuple/group_depsNoOp!^gradients_3/MatMul_3_grad/MatMul#^gradients_3/MatMul_3_grad/MatMul_1
?
2gradients_3/MatMul_3_grad/tuple/control_dependencyIdentity gradients_3/MatMul_3_grad/MatMul+^gradients_3/MatMul_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_3/MatMul_3_grad/MatMul*'
_output_shapes
:?????????
?
4gradients_3/MatMul_3_grad/tuple/control_dependency_1Identity"gradients_3/MatMul_3_grad/MatMul_1+^gradients_3/MatMul_3_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_3/MatMul_3_grad/MatMul_1*
_output_shapes

:
d
GradientDescent_3/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;
?
1GradientDescent_3/update_W_3/ApplyGradientDescentApplyGradientDescentW_3GradientDescent_3/learning_rate4gradients_3/MatMul_3_grad/tuple/control_dependency_1*
T0*
_class

loc:@W_3*
_output_shapes

:*
use_locking( 
?
1GradientDescent_3/update_b_3/ApplyGradientDescentApplyGradientDescentb_3GradientDescent_3/learning_rate1gradients_3/Add_3_grad/tuple/control_dependency_1*
T0*
_class

loc:@b_3*
_output_shapes
:*
use_locking( 
?
GradientDescent_3NoOp2^GradientDescent_3/update_W_3/ApplyGradientDescent2^GradientDescent_3/update_b_3/ApplyGradientDescent
r
init_3NoOp	^W/Assign^W_1/Assign^W_2/Assign^W_3/Assign	^b/Assign^b_1/Assign^b_2/Assign^b_3/Assign
?
Const_12Const*
_output_shapes

:*
dtype0*Y
valuePBN"@                              ??      ??              ??      ??
y
Const_13Const*
_output_shapes

:*
dtype0*9
value0B."               ??      ??        
f
x_4Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
\
zeros_8Const*
_output_shapes

:*
dtype0*
valueB*    
w
W_4
VariableV2*
_output_shapes

:*
	container *
dtype0*
shape
:*
shared_name 
?

W_4/AssignAssignW_4zeros_8*
T0*
_class

loc:@W_4*
_output_shapes

:*
use_locking(*
validate_shape(
Z
W_4/readIdentityW_4*
T0*
_class

loc:@W_4*
_output_shapes

:
T
zeros_9Const*
_output_shapes
:*
dtype0*
valueB*    
o
b_4
VariableV2*
_output_shapes
:*
	container *
dtype0*
shape:*
shared_name 
?

b_4/AssignAssignb_4zeros_9*
T0*
_class

loc:@b_4*
_output_shapes
:*
use_locking(*
validate_shape(
V
b_4/readIdentityb_4*
T0*
_class

loc:@b_4*
_output_shapes
:
f
y_4Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
y
MatMul_4MatMulx_4W_4/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
R
Add_4AddMatMul_4b_4/read*
T0*'
_output_shapes
:?????????
J
sub_4Suby_4Add_4*
T0*'
_output_shapes
:?????????
K
Square_4Squaresub_4*
T0*'
_output_shapes
:?????????
Y
Const_14Const*
_output_shapes
:*
dtype0*
valueB"       
`
Mean_4MeanSquare_4Const_14*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
T
gradients_4/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
Z
gradients_4/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  ??
u
gradients_4/FillFillgradients_4/Shapegradients_4/grad_ys_0*
T0*
_output_shapes
: *

index_type0
v
%gradients_4/Mean_4_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
?
gradients_4/Mean_4_grad/ReshapeReshapegradients_4/Fill%gradients_4/Mean_4_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
e
gradients_4/Mean_4_grad/ShapeShapeSquare_4*
T0*
_output_shapes
:*
out_type0
?
gradients_4/Mean_4_grad/TileTilegradients_4/Mean_4_grad/Reshapegradients_4/Mean_4_grad/Shape*
T0*

Tmultiples0*'
_output_shapes
:?????????
g
gradients_4/Mean_4_grad/Shape_1ShapeSquare_4*
T0*
_output_shapes
:*
out_type0
b
gradients_4/Mean_4_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
g
gradients_4/Mean_4_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
gradients_4/Mean_4_grad/ProdProdgradients_4/Mean_4_grad/Shape_1gradients_4/Mean_4_grad/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
i
gradients_4/Mean_4_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
gradients_4/Mean_4_grad/Prod_1Prodgradients_4/Mean_4_grad/Shape_2gradients_4/Mean_4_grad/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
c
!gradients_4/Mean_4_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
?
gradients_4/Mean_4_grad/MaximumMaximumgradients_4/Mean_4_grad/Prod_1!gradients_4/Mean_4_grad/Maximum/y*
T0*
_output_shapes
: 
?
 gradients_4/Mean_4_grad/floordivFloorDivgradients_4/Mean_4_grad/Prodgradients_4/Mean_4_grad/Maximum*
T0*
_output_shapes
: 
?
gradients_4/Mean_4_grad/CastCast gradients_4/Mean_4_grad/floordiv*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
?
gradients_4/Mean_4_grad/truedivRealDivgradients_4/Mean_4_grad/Tilegradients_4/Mean_4_grad/Cast*
T0*'
_output_shapes
:?????????
?
gradients_4/Square_4_grad/ConstConst ^gradients_4/Mean_4_grad/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @
~
gradients_4/Square_4_grad/MulMulsub_4gradients_4/Square_4_grad/Const*
T0*'
_output_shapes
:?????????
?
gradients_4/Square_4_grad/Mul_1Mulgradients_4/Mean_4_grad/truedivgradients_4/Square_4_grad/Mul*
T0*'
_output_shapes
:?????????
_
gradients_4/sub_4_grad/ShapeShapey_4*
T0*
_output_shapes
:*
out_type0
c
gradients_4/sub_4_grad/Shape_1ShapeAdd_4*
T0*
_output_shapes
:*
out_type0
?
,gradients_4/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_4/sub_4_grad/Shapegradients_4/sub_4_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_4/sub_4_grad/SumSumgradients_4/Square_4_grad/Mul_1,gradients_4/sub_4_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients_4/sub_4_grad/ReshapeReshapegradients_4/sub_4_grad/Sumgradients_4/sub_4_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
t
gradients_4/sub_4_grad/NegNeggradients_4/Square_4_grad/Mul_1*
T0*'
_output_shapes
:?????????
?
gradients_4/sub_4_grad/Sum_1Sumgradients_4/sub_4_grad/Neg.gradients_4/sub_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
 gradients_4/sub_4_grad/Reshape_1Reshapegradients_4/sub_4_grad/Sum_1gradients_4/sub_4_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
s
'gradients_4/sub_4_grad/tuple/group_depsNoOp^gradients_4/sub_4_grad/Reshape!^gradients_4/sub_4_grad/Reshape_1
?
/gradients_4/sub_4_grad/tuple/control_dependencyIdentitygradients_4/sub_4_grad/Reshape(^gradients_4/sub_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_4/sub_4_grad/Reshape*'
_output_shapes
:?????????
?
1gradients_4/sub_4_grad/tuple/control_dependency_1Identity gradients_4/sub_4_grad/Reshape_1(^gradients_4/sub_4_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_4/sub_4_grad/Reshape_1*'
_output_shapes
:?????????
d
gradients_4/Add_4_grad/ShapeShapeMatMul_4*
T0*
_output_shapes
:*
out_type0
f
gradients_4/Add_4_grad/Shape_1Shapeb_4/read*
T0*
_output_shapes
:*
out_type0
?
,gradients_4/Add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_4/Add_4_grad/Shapegradients_4/Add_4_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_4/Add_4_grad/SumSum1gradients_4/sub_4_grad/tuple/control_dependency_1,gradients_4/Add_4_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients_4/Add_4_grad/ReshapeReshapegradients_4/Add_4_grad/Sumgradients_4/Add_4_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
gradients_4/Add_4_grad/Sum_1Sum1gradients_4/sub_4_grad/tuple/control_dependency_1.gradients_4/Add_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
 gradients_4/Add_4_grad/Reshape_1Reshapegradients_4/Add_4_grad/Sum_1gradients_4/Add_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
s
'gradients_4/Add_4_grad/tuple/group_depsNoOp^gradients_4/Add_4_grad/Reshape!^gradients_4/Add_4_grad/Reshape_1
?
/gradients_4/Add_4_grad/tuple/control_dependencyIdentitygradients_4/Add_4_grad/Reshape(^gradients_4/Add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_4/Add_4_grad/Reshape*'
_output_shapes
:?????????
?
1gradients_4/Add_4_grad/tuple/control_dependency_1Identity gradients_4/Add_4_grad/Reshape_1(^gradients_4/Add_4_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_4/Add_4_grad/Reshape_1*
_output_shapes
:
?
 gradients_4/MatMul_4_grad/MatMulMatMul/gradients_4/Add_4_grad/tuple/control_dependencyW_4/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b(
?
"gradients_4/MatMul_4_grad/MatMul_1MatMulx_4/gradients_4/Add_4_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
z
*gradients_4/MatMul_4_grad/tuple/group_depsNoOp!^gradients_4/MatMul_4_grad/MatMul#^gradients_4/MatMul_4_grad/MatMul_1
?
2gradients_4/MatMul_4_grad/tuple/control_dependencyIdentity gradients_4/MatMul_4_grad/MatMul+^gradients_4/MatMul_4_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_4/MatMul_4_grad/MatMul*'
_output_shapes
:?????????
?
4gradients_4/MatMul_4_grad/tuple/control_dependency_1Identity"gradients_4/MatMul_4_grad/MatMul_1+^gradients_4/MatMul_4_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_4/MatMul_4_grad/MatMul_1*
_output_shapes

:
d
GradientDescent_4/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;
?
1GradientDescent_4/update_W_4/ApplyGradientDescentApplyGradientDescentW_4GradientDescent_4/learning_rate4gradients_4/MatMul_4_grad/tuple/control_dependency_1*
T0*
_class

loc:@W_4*
_output_shapes

:*
use_locking( 
?
1GradientDescent_4/update_b_4/ApplyGradientDescentApplyGradientDescentb_4GradientDescent_4/learning_rate1gradients_4/Add_4_grad/tuple/control_dependency_1*
T0*
_class

loc:@b_4*
_output_shapes
:*
use_locking( 
?
GradientDescent_4NoOp2^GradientDescent_4/update_W_4/ApplyGradientDescent2^GradientDescent_4/update_b_4/ApplyGradientDescent
?
init_4NoOp	^W/Assign^W_1/Assign^W_2/Assign^W_3/Assign^W_4/Assign	^b/Assign^b_1/Assign^b_2/Assign^b_3/Assign^b_4/Assign
[
save_1/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
_output_shapes
: *
dtype0*
shape: 
?
save_1/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_c5aa712eb785415880e8881186017464/part
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
?
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*A
value8B6
BWBW_1BW_2BW_3BW_4BbBb_1Bb_2Bb_3Bb_4
?
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B 
?
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesWW_1W_2W_3W_4bb_1b_2b_3b_4"/device:CPU:0*
dtypes
2

?
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
?
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 
?
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
?
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*A
value8B6
BWBW_1BW_2BW_3BW_4BbBb_1Bb_2Bb_3Bb_4
?
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B 
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*<
_output_shapes*
(::::::::::*
dtypes
2

?
save_1/AssignAssignWsave_1/RestoreV2*
T0*
_class

loc:@W*
_output_shapes

:*
use_locking(*
validate_shape(
?
save_1/Assign_1AssignW_1save_1/RestoreV2:1*
T0*
_class

loc:@W_1*
_output_shapes

:*
use_locking(*
validate_shape(
?
save_1/Assign_2AssignW_2save_1/RestoreV2:2*
T0*
_class

loc:@W_2*
_output_shapes

:*
use_locking(*
validate_shape(
?
save_1/Assign_3AssignW_3save_1/RestoreV2:3*
T0*
_class

loc:@W_3*
_output_shapes

:*
use_locking(*
validate_shape(
?
save_1/Assign_4AssignW_4save_1/RestoreV2:4*
T0*
_class

loc:@W_4*
_output_shapes

:*
use_locking(*
validate_shape(
?
save_1/Assign_5Assignbsave_1/RestoreV2:5*
T0*
_class

loc:@b*
_output_shapes
:*
use_locking(*
validate_shape(
?
save_1/Assign_6Assignb_1save_1/RestoreV2:6*
T0*
_class

loc:@b_1*
_output_shapes
:*
use_locking(*
validate_shape(
?
save_1/Assign_7Assignb_2save_1/RestoreV2:7*
T0*
_class

loc:@b_2*
_output_shapes
:*
use_locking(*
validate_shape(
?
save_1/Assign_8Assignb_3save_1/RestoreV2:8*
T0*
_class

loc:@b_3*
_output_shapes
:*
use_locking(*
validate_shape(
?
save_1/Assign_9Assignb_4save_1/RestoreV2:9*
T0*
_class

loc:@b_4*
_output_shapes
:*
use_locking(*
validate_shape(
?
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard"?B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"k
train_op_
]
GradientDescent
GradientDescent_1
GradientDescent_2
GradientDescent_3
GradientDescent_4"?
trainable_variables??
$
W:0W/AssignW/read:02zeros:08
&
b:0b/Assignb/read:02	zeros_1:08
,
W_1:0
W_1/Assign
W_1/read:02	zeros_2:08
,
b_1:0
b_1/Assign
b_1/read:02	zeros_3:08
,
W_2:0
W_2/Assign
W_2/read:02	zeros_4:08
,
b_2:0
b_2/Assign
b_2/read:02	zeros_5:08
,
W_3:0
W_3/Assign
W_3/read:02	zeros_6:08
,
b_3:0
b_3/Assign
b_3/read:02	zeros_7:08
,
W_4:0
W_4/Assign
W_4/read:02	zeros_8:08
,
b_4:0
b_4/Assign
b_4/read:02	zeros_9:08"?
	variables??
$
W:0W/AssignW/read:02zeros:08
&
b:0b/Assignb/read:02	zeros_1:08
,
W_1:0
W_1/Assign
W_1/read:02	zeros_2:08
,
b_1:0
b_1/Assign
b_1/read:02	zeros_3:08
,
W_2:0
W_2/Assign
W_2/read:02	zeros_4:08
,
b_2:0
b_2/Assign
b_2/read:02	zeros_5:08
,
W_3:0
W_3/Assign
W_3/read:02	zeros_6:08
,
b_3:0
b_3/Assign
b_3/read:02	zeros_7:08
,
W_4:0
W_4/Assign
W_4/read:02	zeros_8:08
,
b_4:0
b_4/Assign
b_4/read:02	zeros_9:08