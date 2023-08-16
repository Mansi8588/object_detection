
:
ConstConst*
valueB"  �?  �?*
dtype0
W
image_tensorPlaceholder*-
shape$:"������������������*
dtype0
5
ToFloatCastimage_tensor*

SrcT0*

DstT0
A
Preprocessor/map/ShapeShapeToFloat*
T0*
out_type0
R
$Preprocessor/map/strided_slice/stackConst*
value
B: *
dtype0
T
&Preprocessor/map/strided_slice/stack_1Const*
value
B:*
dtype0
T
&Preprocessor/map/strided_slice/stack_2Const*
value
B:*
dtype0
�
Preprocessor/map/strided_sliceStridedSlicePreprocessor/map/Shape$Preprocessor/map/strided_slice/stack&Preprocessor/map/strided_slice/stack_1&Preprocessor/map/strided_slice/stack_2*

begin_mask *
shrink_axis_mask*

ellipsis_mask *
end_mask *
Index0*

new_axis_mask *
T0
�
Preprocessor/map/TensorArray
TensorArrayV3Preprocessor/map/strided_slice*
tensor_array_name *
dynamic_size( *

element_shape:*
dtype0*
clear_after_read(
T
)Preprocessor/map/TensorArrayUnstack/ShapeShapeToFloat*
T0*
out_type0
e
7Preprocessor/map/TensorArrayUnstack/strided_slice/stackConst*
value
B: *
dtype0
g
9Preprocessor/map/TensorArrayUnstack/strided_slice/stack_1Const*
value
B:*
dtype0
g
9Preprocessor/map/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
value
B:
�
1Preprocessor/map/TensorArrayUnstack/strided_sliceStridedSlice)Preprocessor/map/TensorArrayUnstack/Shape7Preprocessor/map/TensorArrayUnstack/strided_slice/stack9Preprocessor/map/TensorArrayUnstack/strided_slice/stack_19Preprocessor/map/TensorArrayUnstack/strided_slice/stack_2*

begin_mask *
shrink_axis_mask*

ellipsis_mask *
end_mask *
Index0*

new_axis_mask *
T0
Y
/Preprocessor/map/TensorArrayUnstack/range/startConst*
dtype0*
value	B : 
Y
/Preprocessor/map/TensorArrayUnstack/range/deltaConst*
dtype0*
value	B :
�
)Preprocessor/map/TensorArrayUnstack/rangeRange/Preprocessor/map/TensorArrayUnstack/range/start1Preprocessor/map/TensorArrayUnstack/strided_slice/Preprocessor/map/TensorArrayUnstack/range/delta*

Tidx0
�
KPreprocessor/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Preprocessor/map/TensorArray)Preprocessor/map/TensorArrayUnstack/rangeToFloatPreprocessor/map/TensorArray:1*
_class
loc:@ToFloat*
T0
@
Preprocessor/map/ConstConst*
value	B : *
dtype0
�
Preprocessor/map/TensorArray_1
TensorArrayV3Preprocessor/map/strided_slice*
tensor_array_name *
dynamic_size( *

element_shape:*
dtype0*
clear_after_read(
�
Preprocessor/map/while/EnterEnterPreprocessor/map/Const*>

frame_name0.Preprocessor/map/while/Preprocessor/map/while/*
is_constant( *
parallel_iterations
*
T0
�
Preprocessor/map/while/Enter_1Enter Preprocessor/map/TensorArray_1:1*>

frame_name0.Preprocessor/map/while/Preprocessor/map/while/*
is_constant( *
parallel_iterations
*
T0
{
Preprocessor/map/while/MergeMergePreprocessor/map/while/Enter$Preprocessor/map/while/NextIteration*
T0*
N
�
Preprocessor/map/while/Merge_1MergePreprocessor/map/while/Enter_1&Preprocessor/map/while/NextIteration_1*
T0*
N
�
!Preprocessor/map/while/Less/EnterEnterPreprocessor/map/strided_slice*>

frame_name0.Preprocessor/map/while/Preprocessor/map/while/*
is_constant(*
parallel_iterations
*
T0
m
Preprocessor/map/while/LessLessPreprocessor/map/while/Merge!Preprocessor/map/while/Less/Enter*
T0
H
Preprocessor/map/while/LoopCondLoopCondPreprocessor/map/while/Less
�
Preprocessor/map/while/SwitchSwitchPreprocessor/map/while/MergePreprocessor/map/while/LoopCond*
T0*/
_class%
#!loc:@Preprocessor/map/while/Merge
�
Preprocessor/map/while/Switch_1SwitchPreprocessor/map/while/Merge_1Preprocessor/map/while/LoopCond*1
_class'
%#loc:@Preprocessor/map/while/Merge_1*
T0
U
Preprocessor/map/while/IdentityIdentityPreprocessor/map/while/Switch:1*
T0
Y
!Preprocessor/map/while/Identity_1Identity!Preprocessor/map/while/Switch_1:1*
T0
�
.Preprocessor/map/while/TensorArrayReadV3/EnterEnterPreprocessor/map/TensorArray*>

frame_name0.Preprocessor/map/while/Preprocessor/map/while/*
is_constant(*
parallel_iterations
*
T0
�
0Preprocessor/map/while/TensorArrayReadV3/Enter_1EnterKPreprocessor/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*>

frame_name0.Preprocessor/map/while/Preprocessor/map/while/*
is_constant(*
parallel_iterations

�
(Preprocessor/map/while/TensorArrayReadV3TensorArrayReadV3.Preprocessor/map/while/TensorArrayReadV3/EnterPreprocessor/map/while/Identity0Preprocessor/map/while/TensorArrayReadV3/Enter_1*
dtype0
}
1Preprocessor/map/while/ResizeImage/ExpandDims/dimConst ^Preprocessor/map/while/Identity*
value	B : *
dtype0
�
-Preprocessor/map/while/ResizeImage/ExpandDims
ExpandDims(Preprocessor/map/while/TensorArrayReadV31Preprocessor/map/while/ResizeImage/ExpandDims/dim*
T0*

Tdim0
~
'Preprocessor/map/while/ResizeImage/sizeConst ^Preprocessor/map/while/Identity*
valueB",  ,  *
dtype0
�
1Preprocessor/map/while/ResizeImage/ResizeBilinearResizeBilinear-Preprocessor/map/while/ResizeImage/ExpandDims'Preprocessor/map/while/ResizeImage/size*

align_corners( *
T0
�
*Preprocessor/map/while/ResizeImage/SqueezeSqueeze1Preprocessor/map/while/ResizeImage/ResizeBilinear*
T0*
squeeze_dims
 
�
@Preprocessor/map/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterPreprocessor/map/TensorArray_1*>

frame_name0.Preprocessor/map/while/Preprocessor/map/while/*
is_constant(*
parallel_iterations
*
T0*=
_class3
1/loc:@Preprocessor/map/while/ResizeImage/Squeeze
�
:Preprocessor/map/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3@Preprocessor/map/while/TensorArrayWrite/TensorArrayWriteV3/EnterPreprocessor/map/while/Identity*Preprocessor/map/while/ResizeImage/Squeeze!Preprocessor/map/while/Identity_1*
T0*=
_class3
1/loc:@Preprocessor/map/while/ResizeImage/Squeeze
h
Preprocessor/map/while/add/yConst ^Preprocessor/map/while/Identity*
dtype0*
value	B :
i
Preprocessor/map/while/addAddPreprocessor/map/while/IdentityPreprocessor/map/while/add/y*
T0
Z
$Preprocessor/map/while/NextIteration
NextIterationPreprocessor/map/while/add*
T0
|
&Preprocessor/map/while/NextIteration_1
NextIteration:Preprocessor/map/while/TensorArrayWrite/TensorArrayWriteV3*
T0
O
Preprocessor/map/while/Exit_1ExitPreprocessor/map/while/Switch_1*
T0
�
3Preprocessor/map/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3Preprocessor/map/TensorArray_1Preprocessor/map/while/Exit_1*1
_class'
%#loc:@Preprocessor/map/TensorArray_1
�
-Preprocessor/map/TensorArrayStack/range/startConst*
value	B : *1
_class'
%#loc:@Preprocessor/map/TensorArray_1*
dtype0
�
-Preprocessor/map/TensorArrayStack/range/deltaConst*
value	B :*1
_class'
%#loc:@Preprocessor/map/TensorArray_1*
dtype0
�
'Preprocessor/map/TensorArrayStack/rangeRange-Preprocessor/map/TensorArrayStack/range/start3Preprocessor/map/TensorArrayStack/TensorArraySizeV3-Preprocessor/map/TensorArrayStack/range/delta*1
_class'
%#loc:@Preprocessor/map/TensorArray_1*

Tidx0
�
5Preprocessor/map/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3Preprocessor/map/TensorArray_1'Preprocessor/map/TensorArrayStack/rangePreprocessor/map/while/Exit_1*!

element_shape:��*1
_class'
%#loc:@Preprocessor/map/TensorArray_1*
dtype0
?
Preprocessor/mul/xConst*
dtype0*
valueB
 *�� <
k
Preprocessor/mulMulPreprocessor/mul/x5Preprocessor/map/TensorArrayStack/TensorArrayGatherV3*
T0
?
Preprocessor/sub/yConst*
valueB
 *  �?*
dtype0
F
Preprocessor/subSubPreprocessor/mulPreprocessor/sub/y*
T0
S
FeatureExtractor/ShapeConst*%
valueB"   ,  ,     *
dtype0
R
$FeatureExtractor/strided_slice/stackConst*
value
B:*
dtype0
T
&FeatureExtractor/strided_slice/stack_1Const*
value
B:*
dtype0
T
&FeatureExtractor/strided_slice/stack_2Const*
value
B:*
dtype0
�
FeatureExtractor/strided_sliceStridedSliceFeatureExtractor/Shape$FeatureExtractor/strided_slice/stack&FeatureExtractor/strided_slice/stack_1&FeatureExtractor/strided_slice/stack_2*
T0*

begin_mask *
shrink_axis_mask*

ellipsis_mask *
end_mask *
Index0*

new_axis_mask 
I
FeatureExtractor/GreaterEqual/yConst*
value	B :!*
dtype0
w
FeatureExtractor/GreaterEqualGreaterEqualFeatureExtractor/strided_sliceFeatureExtractor/GreaterEqual/y*
T0
U
FeatureExtractor/Shape_1Const*
dtype0*%
valueB"   ,  ,     
T
&FeatureExtractor/strided_slice_1/stackConst*
value
B:*
dtype0
V
(FeatureExtractor/strided_slice_1/stack_1Const*
dtype0*
value
B:
V
(FeatureExtractor/strided_slice_1/stack_2Const*
dtype0*
value
B:
�
 FeatureExtractor/strided_slice_1StridedSliceFeatureExtractor/Shape_1&FeatureExtractor/strided_slice_1/stack(FeatureExtractor/strided_slice_1/stack_1(FeatureExtractor/strided_slice_1/stack_2*
end_mask *
Index0*

new_axis_mask *
T0*

begin_mask *
shrink_axis_mask*

ellipsis_mask 
K
!FeatureExtractor/GreaterEqual_1/yConst*
value	B :!*
dtype0
}
FeatureExtractor/GreaterEqual_1GreaterEqual FeatureExtractor/strided_slice_1!FeatureExtractor/GreaterEqual_1/y*
T0
i
FeatureExtractor/LogicalAnd
LogicalAndFeatureExtractor/GreaterEqualFeatureExtractor/GreaterEqual_1
�
%FeatureExtractor/Assert/Assert/data_0Const*I
value@B> B8image size must at least be 33 in both height and width.*
dtype0
�
FeatureExtractor/Assert/AssertAssertFeatureExtractor/LogicalAnd%FeatureExtractor/Assert/Assert/data_0*
	summarize*

T
2
�
-FeatureExtractor/MobilenetV1/Conv2d_0/weightsConst*
dtype0*�
value�B� "�1~�>�J3!/e1��}r!�ړ!�ʿ>�.<�3�!m�KY�!&A?Η�<s�m>��*���?��l��*�Jzi�09X=�t��k�� �VCf����%P�U���Z?~n�"��<;�>S� ��3D:u=���>��!�Ma��>�!y��!��>�o��2!�;ȧ�F!�) ����,����
���?��v>��s=Fb����>���> ڽ�~[��k� ���$���?�d���c<�c�F<L�7��!Kg�3J��>��>L��!�u�wj�!��!��>x��ee!"7���'̡Կ�=Ӓ�<6\����΢�DӾ���>�G2?u��!rtO=a���+WQ�� ���g������a�>�A!��<�~/?�Ԭ�d#�3��a���D?x�s!S
%��"�!�!�:=>��i=~�� �&Ȩ�M!��?���:��
4g��T�� I� �s�D��$�a>l�ƾ+%�Y%�>�����&�X
�
.ͼ֙�!� �����>��� �R�3�??/6e?DE� �lR����!��.!ҫK>Ί���"�\� �	���'��}}��]
�tΰ�|Ӣ����>l��Fȟ���>N�龭�о� >&h����$���?���5u���.��8)�yvn�ɱ3�\}?��Z>�ԍ!����5�!$}
"VN=�\�G0")��.��50�n·��)K=�ꯢ�?l��>o�u?���!�K>)�>$��N���=��F ���ƾ^Z��n"�& �̇�?��/b�3���>؀�>���!�%��B頝�q 	�7�⍷���!n��zz���<>+q<p��=��h"��;?7O��C�Ⱦr�0��>X�p>!��N������
�%hE���ھ�K�"R-�>潽>�� ׍�3��z=�5�>�ݾ!p�O���!Yc��t���㝻Z� >�� ����Ӣ�inz���j>#�U!�����W>Kv�=.8��>S>�j��0�����=��� ݶ��Y4?P�/?���V?��:��� #��3�"{> 
�=	�!�������!�"�ذ��3"��@�5���t�>�O�<��a�C�8��>ؓ>���>} �!r4"���J=x�F�2�=�WG��K�֜澯/(��L� )'F>i�>��u�'�3�*�tٹ��.!�K'�B'!���`m&?=l���0�!6т(�_� +�=?{H=.M\?�d����?��I�_�&�')A�R��d�>�{K��s#��Ք�6( $��վ9�Z����Jfb<��>��!�߷3K��S���� ��T��E�!�����?/�$�D�� 1�m(�*Ѡ��K����t?�53�4���&=+>Oi��_Šo뢾|�2�kA���?l�
��#�$v�n?�q�?uw0����<�T\�}�!u�3��>�(���!�\�@�/!���ӳ5>3�g�2r"��.(m��*a��
=FZ�>LF��a?\?j^?�!?ڌ�C� >�R�JN�=?�p�CM�$��
�/뺾���ꪼ5�9?�	��e�3iP���)�Q%0 +��VS�!��� Q��>u���{��!�-�)�8!���?�T��X���d"��?S�R��R[�ה��+�Q�> 	�
qb?��H��%���7[��r��_ �{���Rᰟ��3�uٹ���Y� ��F��4" s&!��>��ҾĽU ;�)�+��;�� M��	�:����.����>'�Ƽ0���25�<\>��G��,?��'���?3���8	�7�R�oQ����ƣ3v�>�+��!mH =��(��!>3�!
o�=D���&"R�)���I���Җ��{��`ܳ������=B?4hq?UA�!���n�ž~׀�O�?0�^�������.?�A٣j����`�?��G���3��C=�i;�,�!>��j�!h{� jC�������!��V)	~� �G
>�x'�.dD<j�"�몿����$žRD���e�q+𾼲��rg����a� ������V?k�!Ri�>iI>�V� �3�RB�]p���oX!�;�(��!]w!�.l���Շ�N����Y)b�V��{��
�<���Š�!s@�W�;/�3�Uג���'?n7ᾙ��� %�����>(���H���te?�bF���`/q�3��=�*��}=�!��2!�%�!'o^��+��HO�!�jH)�{�С��`�����!p!(y��"�>�k�>�!"|�9�l�q���ѽ�c�=7/������羿�>�}��P|>��>�QC�UJ�3�Д��;1L��z�=�l
7!�mB!1��=�@�����! �'���!��(�Xǚ��<	?l<��y�l����iҾf�V�i�=>�?\�Y>�&���I0!�ȼ%�jݽoM?\d_�<俼N�>P i!�3+'�=�L�=B{̠��o��~�!o�A ��=�xɽ��C! rq&�T���Ⱦ$ٿ=��?]���T?U �f�缪ỡl��=���?���>�Mk��v"�����?�>��׾2���#��=�
�8�W ���3dd<�$c�.�s�_!�	�% �|�!��,=��	��."/�_�����+�=��Ҽ!��>C�m��Ҿ5��>y��>���!�6(>�2h>Y��=;���RQs�n���沾��>��-��A�Q��=Ud�AJ�3�Ө<��g���m!� %��-�!��!����<�y�!�����C�<?�5r<��C��dS"�,뾱���	�i!��
��>��=�("?�mB?�ރ 5��,i��<�!>iW�� �	������v!o!�3٦�0.�<6�!��R��T
"56k!�q�M!R�;b� ^��<����t:�=6���裡�� � ��>��A=�?��>���>m=o?���>5p��X��v�?����h�n[�� �1�� .��3�=C�c�.=O/!��9��!(�!Y)��C���+"E��8��_E�<?�
>>4����B� ?�?�d(?Ü!�(�>�2a>ζ�>
�?���B��%�ؾ�������
\<Om�>���m�3f|��H[=��!�<�+B�!�(� Z����zE��� G/èF��m����=7.>)[� �0?����u��o��҄�=33[>)�>�:���q�!I�p$0�2��#ᾠ�V#r�q>�Ɏ>Q�t!9��3�d?��yA=!w�!��I���!��=`<<���ÁS�����¡����S�a=�m�=��3�~�U��ߎ�<�T����=M�ƾ��!?��o� �!Ū$�(>�]5?��W���u>3�Ǿ#�!��3�3�;9�[� W�!R�G�s!P(�!���<F�B����!���75�����>��.�dқ=�<M���>h>^U,>�K�!?�>o�->�">$h��YS��i�$Sv��ЧR�g$v��e$<����؉şG�3,���
�
2FeatureExtractor/MobilenetV1/Conv2d_0/weights/readIdentity-FeatureExtractor/MobilenetV1/Conv2d_0/weights*@
_class6
42loc:@FeatureExtractor/MobilenetV1/Conv2d_0/weights*
T0
�
=FeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/convolutionConv2DPreprocessor/sub2FeatureExtractor/MobilenetV1/Conv2d_0/weights/read^FeatureExtractor/Assert/Assert*
use_cudnn_on_gpu(*
strides
*
T0*
paddingSAME*
data_formatNHWC
�
4FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/betaConst*
dtype0*�
value�B� "���?�Q��_�;:ͧ�8!��%�.@��P@���g��}
B�k]�?�*I@.��?�\(� �@��@�a�>AU̿$�@�@��@ l.@~ĳ��v����?[�@��h�]@���?3"��E�=?
�
9FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/beta/readIdentity4FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/beta*
T0*G
_class=
;9loc:@FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/beta
�
5FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/gammaConst*
dtype0*�
value�B� "�@c�>��?��?��>���>9Ś?��?\�w?Ջ=z�s?�0$?j�?C�>��W?�u�>A�?p��?z�R�ř�>��?Ų�?ٴ�?'�
?��1@�N?��
*|?2ֱ>g�?�u~?���?�N�>
�
:FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/gamma/readIdentity5FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/gamma*
T0*H
_class>
<:loc:@FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/gamma
�
;FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/moving_meanConst*
dtype0*�
value�B� "��[):�9�D�2�
j��SE��簾n�(?�_����@�F~�"> O�>ٝ���p#r�E��J��3�����-�<�5<`7w<�e�:z�"Ǜ 'uB�=��ʻ��$#,f���྅�G�M��u@��
�
@FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/moving_mean/readIdentity;FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/moving_mean*
T0*N
_classD
B@loc:@FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/moving_mean
�
?FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/moving_varianceConst*�
value�B� "��q1>�RP44�&tKPRP�7@uh�@�IPc�OP�?�~%@i��>KHP�T=-{>@��k@MP=r�=*�> cr>�݋>�VP�[9�?
��=�
v�/>���?�UP� �+�X@*
dtype0
�
DFeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/moving_variance/readIdentity?FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/moving_variance*R
_classH
FDloc:@FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/moving_variance*
T0
�
KFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/add/yConst^FeatureExtractor/Assert/Assert*
dtype0*
valueB
 *o�:
�
IFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/addAddDFeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/moving_variance/readKFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/add/y*
T0
�
KFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/RsqrtRsqrtIFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/add*
T0
�
IFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/mulMulKFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/Rsqrt:FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/gamma/read*
T0
�
KFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/mul_1Mul=FeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/convolutionIFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/mul*
T0
�
KFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/mul_2Mul@FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/moving_mean/readIFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/mul*
T0
�
IFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/subSub9FeatureExtractor/MobilenetV1/Conv2d_0/BatchNorm/beta/readKFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/mul_2*
T0
�
KFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/add_1AddKFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/mul_1IFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/sub*
T0
�
7FeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/Relu6Relu6KFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/BatchNorm/batchnorm/add_1*
T0
�	
AFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/depthwise_weightsConst*�	
value�	B�	 "�	�x�n���o1۷^W�6����U�K�V@P���6���,|D���qN>s���ؙ��i��N�l>l'�=�|7!�I��@�=veJ=�Y"��9�7�l<6�J.�����B�.�=r�)��;|���6==@�=�>��s�sk���Ͷ,B�7N]@̢�>3�6�`���O�6�J+��<P��?8x��-�[>�ꝽbY=���?��1�ƿ�ì�r�7Gh���?f���ֽ6*N8}��=s A>�S�����`>���c������H7C7�>@��S��굗T�����.�	�|��q�=?���v��Nw9>f�N��	<7#H<��ּ�!�=:@�=��D7���6�H���=T�7x�<@ =����6��R�2�2A���*����E�6LS6����=��=�S7	!7�mI7��þ�˕@�==�_��A�^=B��=v!�x�2��=,ʫ��I�<�V>7��7r�'���Ks;���dj���ҡ> �,��6��3>Q
�?��6�Qk�lz3�s�w7,Г�K�@��O6�8��Ϲ�B`@T3>����͕��Y��?�࿋��?�,7�兿<�ȿ.Ġ?���?�1�7%��=#@Ӕտ�04���?Ӭ�� S�� ����߿�Є�n���ۀ����7d7t�>ﻧ�HQ�6��X�O�A��FѾ����N�e�D!&�쿸4>ޮ�6�n7)E��?0�P��P�7c�X�A���R�?��67o�<�Ʃ>1���Wq��*�>���;�ݓ�
��y��6�	7
�=f��NZ�7��7"5�٣��.&?�Ŵ< ����4���Z=��ܽ�Ί7�k�<�˝=[� <�v:��7��O7.��<�{��a<5SȨ����<���M�ӷpo��J��X���7����r�5�}�6,�i��پ�s�6?|7�
7� ��(��<���������=>L�>TW��
��ۗ����\#>�a�=-u5�5.7���{v�<"�4���=5��>���u&6� ~�=�z=B�޷l�6	��6�1��N;�e��h��6xb����\:��i=��F���	��v�=��"Ԇ7V<�<x�=�^������%�7�6#�=<�L<�Aն�Iy;ko^= f��һ�e���*
dtype0
�
FFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/depthwise_weights/readIdentityAFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/depthwise_weights*
T0*T
_classJ
HFloc:@FeatureExtractor/MobilenetV1/Conv2d_1_depthwise/depthwise_weights
�
EFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/depthwiseDepthwiseConv2dNative7FeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_0/Relu6FFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/depthwise_weights/read*
strides
*
T0*
paddingSAME*
data_formatNHWC
�
>FeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/betaConst*
dtype0*�
value�B� "����@V*���H��yc��X����j?�8A@/F>���@~����n@H��?��@G�?�'�@`H?�o�>Y���o�z�ŭ�?N�@ D�?��q�Ro�@L]@7�?�$�E� @P*`@����9ɾt�ڿ
�
CFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/beta/readIdentity>FeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/beta*Q
_classG
ECloc:@FeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/beta*
T0
�
?FeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/gammaConst*�
value�B� "���@9�>WP?n�`?�Z8?��D@&�W?���=��5?b�$�l�0?Bl.@�+�?a�?���?c�>?%�??=K�?���?j��?� -@���?k�U?��? ,/?��@��?a@=@y3,?w10?��>��?*
dtype0
�
DFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/gamma/readIdentity?FeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/gamma*
T0*R
_classH
FDloc:@FeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/gamma
�
EFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/moving_meanConst*�
value�B� "��|�=ϋ����z��@������#�%��@p����d���#�U?�O���z;ő����<�9Z�@��>�z�Y�3CW=�	�=��߻(v�#j��tt�?����H���=G���_������ӿ*
dtype0
�
JFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/moving_mean/readIdentityEFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/moving_mean*X
_classN
LJloc:@FeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/moving_mean*
T0
�
IFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/moving_varianceConst*
dtype0*�
value�B� "�r�?$���CO'�f��7��BA�&<@Os�H��Cf����>ky|A��>�4���?|G?�V>L��K>�<?v�5@_@�0������?�v??U���&$?��?W���4�*���>
�
NFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/moving_variance/readIdentityIFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/moving_variance*
T0*\
_classR
PNloc:@FeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/moving_variance
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/add/yConst^FeatureExtractor/Assert/Assert*
valueB
 *o�:*
dtype0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/addAddNFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/moving_variance/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/add/y*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/RsqrtRsqrtSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/add*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/mulMulUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/RsqrtDFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/gamma/read*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/mul_1MulEFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/depthwiseSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/mul*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/mul_2MulJFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/moving_mean/readSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/mul*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/subSubCFeatureExtractor/MobilenetV1/Conv2d_1_depthwise/BatchNorm/beta/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/mul_2*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/add_1AddUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/mul_1SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/sub*
T0
�
AFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/Relu6Relu6UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/BatchNorm/batchnorm/add_1*
T0
�@
7FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/weightsConst*
dtype0*�@
value�@B�@ @"�@��T�ƅ�5�=��
>�O��6l��
�Z<a�ϻ�3a;q˝����=�ކ�����]���h�!?� �<�` =;]���ļC�B<�LI>W�ގ�<�ž�6�?�2>O!�g�3��h�=sH�=���=:lI<؃y�4#�=�{*�տ��Ʌ=�.=�U����=9�|�H�;���7;�i���;�:�,/=*�=1@Q=\R<�=��x\)=��C���<M�Z=
+�>!��=>��/�+�C�
��
6�
�����?��&����e��!��� ��M�=��(r�^�u!��h!n2���L!H�-&9j�1��˯���
��bq�OK��ao�ƉT!2#���{�Wp���!O�� �� �C~ �F��X[����!�~蠝�!
n���C�#�o
��A�!{V���a�}j� ݔŞT�_!�Ӫ����!�!�A	�#)��C����! ��ҡ�}���ڞ宠�� ��� �� ���UE���2��p�!����z�!:Թ!&#�A��x��0 ��o�I�ޔ��2��j�/~�5��Ym/�I�0�o�
�N/�^0�l���HB.b.�?�.5O�0.5@���/@%=0+8�0�0
��� 1��0�˫�"_ٯ�R%�ZZ�������-6�n0�*�1\ڃ��GS���1��\��uh�W쬯��"1�и���$�*����ĵ��	y/��I�/�!�@/52 �0��8<�/-�Z�߉��u!��11�.9
/�,.�}��.k�/ƕs0��!0,1֧6/��:0"�"_i3!�("����$��y�9�t">�4!�N"���fo"�m"!�M
!���!D)."�� ��B"��"�^T"�.�����!{>����� ��o�qk3"q�!��/!���!@�Z!�7!FRp��B�"fE�!��!�i�!�F"3�V���! ��j�!,��!�~�!G�' k�"龍�
�ɟ:���
�"��!s�;!�W"��!��U"�{h!����֧O ɣ M��fP"�a����!�!l!�𸡚����-Q!��}���	 j6"\e[���������� |$m��!T��&Ҡ	빠�l�����:(�!c��)��7"3!+;���#1�7��!��T��,"p� �!�=!�4!��!B) !C��U�!��S�&�� ��ߡ�[�5p� W�m!8~!%kX!�W_!y� A!�3C ��!�{�F������� -�!r|7�7�!�ʛ�#0֠jI0"�?���탡'Q�qȰ�_W��/"�!�AԠ.�����4�ɳ�!}Qֿ.X=鵏�
<Ô�=�6i�ȹ��X;�<���<�j����>
��<?���\׽:ݼ��r0����,c;���<_ɠ�m?=Ar�]N��J9��_��<9]ۻ��������]��>g<�#"��Y�<��(?�e��*k2=.�-=&-<ŝ��6��0>��Ἱ�!?CS=a>�Š:6^��L,�*�
�?.>��"�����@��!"�4�7�;L+���*��Dj��jy>��:b����Q�4��=�𫺴��=`G?W�D?�ܩ=�����c�q�_>��;L�=-F>�"��Q>����d¼�c��0,Z?A�=n�	��?>1��$���σ=S��r�>0�����S�bt<�B��I5
>�G�<h�Ҽw����ҿ��Q=���?_h��r\�vS�=��H?�ü�D�=�U�?��K?��ʽe�:zu�;�ż�a����Z��G�=v�=�G+���S�<VC>	`>q5�=�]#�ϓw>�� ��H�$����S��>��Ŏ�N"�NC!�� k����gq!@�h ���ɱ���;����-!$߂��!�8��vL� *�!JO� ����L����5#t!~/��H�!'s�*�.!P�� ���!||��#kX���
O�!�r� ޝ
_���K�r���^�Fϝ!�1�!w��H!%nh�1G2!n�!�n�L!zkm! �� :Z�!��� �`���� \o��?��՘� I�B��9J�:�� '�!r�l!��3�0�i!�[ߠPq!G��!�����E�8�5AP8��E����9n�5��(�`ٹ=�94gr�7K���W��K<��O;Ff�6���<�g;��������)~��3)��Dֺ��;6j�h9L�:M
��U�:�P2�-9�u�<#�Y�\�39�7(�Z���q��e(��6�ڹq���U���39�˶;NT�6{�78�0��76�������<�ZX���ж5$�&<�eҠj��<k���Z:W*�]�d:�6g3��%���
�;������Ƶ�E�� �5��Fʿ��~��W"!�Z!j���})��4�!�ei�J�r ��q!�V��W� ^�@!�Π3�D!{�ՠD7C!� V��,b����}!!�s��:D!pS�!��� =�� 1N1������� �;!_Dߠ� ��6C�S� X��ݔ;��	ՠbg`���f�J� ��!�pZ!�no���� Kk)�"���xp��jsv����!�b�m8"��
�:S��^ `!g���E!��	��dm!�H���;?u�����S��X�׃�����8���k�H>3Xn?�|�=Iˁ�W� >�F�;9!�=�@��t/>�������R">�Ee=2��=)F�����YhH<5�˾o�= g	��(־	�(>��*<�C�m���^b>69�=M�Y>�2��em����i>�Ķ�K�*��`�=��پ�Ҷ>�����9l-?�uڼ�cf�~ud��0O�qA�=D�ՠﭽ��?C߬=�;�>�i�&�>=Ү2�⛾������=�>�����<7�`=��B=��;��?�<�֘<�D��x�<u�>�`8<�Ǎ<�(Q��0�����=�~�?��=f)���^�� 瀽�����W����h=����w�Ȋ�;�z�<�Y?�0??�q�q$��De@<U` �P�ռ�#=�%>�L*>�����Fg=fc�<�zT=�=(��=UU.��x�:h?;�Q��~�<L,E=*Z=����o�Zɮ�U�M��H���*���ƼB�̾��V�Tyj�i�T���ϖ<�Z4>�VD�*Ȫ�1����"��i�ż,��<��	=��=���<�ɽ���;��p��k�>���>=�=%�<>ட� 5��,:g�
�=o�=N��=-��>���0P;bĜ��lG�g�=(���f#>�HC;3녽�%_�^X��� ���O���P?���R��P�?�J��/J�����X��9S�y����>��=#}
<:T��az=�n�"Ϳ���	��h�����?�k�=?js=��%�A	m��~�?d�
?��T<fǁ���ݵE�5�Y�6&@��؜8�6��wZ��Ÿ���W(ҵp����U��� ;:HC:�e�5�눺P�l:1��4��a�s�R���n���͹>	���A�8���9��
�u9��
��?N8�ĝ;��o�Qb:8�>16��U��㻹@n��Be����~�r!��ݞ8���:���j�7G�T�3�[��R��*�;��6���5txԷ�;��ǡ�&�;M�Ҹ��]9|I[���9���4����Ȧ���;P������z>ŽL�ȱ��
��
�A��;���E��;ބ>��;�н(�H��l8e��>�$z>�^=�LX��3���E:t3<��il=�lB=#��<��5����e8��H�<vf?�>�5���[��XH?߲-=� �=&�A�� ���9�ɻ�>ի=L����]
�
O�>M"�=��"��E�=Q��:��
<[@qþ�_C=����>��âǘ$�v�Z�L�>N�ͽ������[>{0>�؎<�h�='��<��=u�7>�	?���SM����=q�=_sY�Ȝd��,?��?�n�tf��}$�>�E��P���Ȕ=n�罐��=6�Y??�=G���s�=��=F�!=�X����j>o������=���>q!ӽCǼ%-:gm�R�F>�롽�->�<C�B�'>F*�O�߽�

��?����������4M=I�9�&��?��q��^=b��>(Y�L&����r�S|,<�,$?7絽�Y��{�=@�t>�񔽲T羏�Q>��=����2�<6���s��|�H?b*,�2%��i?R�c?�q]������`>�9w?(�;]�q�~�����*=�|=)�%�Ky�0���5���->^	>��=��U�ս1ڍ>#����+����"=�+|���:74y?))�&xZ=��ZΡ��6�E1�=�
Y�3=Ѥ��<_<�G�>b%<dM/:�I=�`|����t��=A�9>zz��F%V������ؾi� �Q�<��ʽQ�0��ʰ��������c�F>Rؓ�]P��
�/�[����!��̡�A� u�q��q� Y�� �ԟv�l�o�����"`��㕡��M����!mf!�|�!s� �΄�uW���)!y�"
t��ݍ!�U<����jo��h���]��_�V!?��S��!�\�G�!m5� V*�B���[B!�_šs£��7'��K�!Xf���r!oe-!Ki!%�u�3�M!)z��g�!=`�!� Лh!����3F
"� J ��!B�9"�.V�,:�5� �G�v,�G�>���<υQ���=��:<���;}�ݼ�[&�[v�u�t80I@<3|�>#y��$O�z:���?���<���<�{���ν�i�;���|�?A(����<�9��5���󱾻<y���o���u=�T=UU�=M�3>:����ҽMr�<j��>�*�>Ϳ����x=�sj>2��>���7����p�W۾F�H=ڇu��$D���<�nlN��<�>
�`�})�]v�=-@�>!���ᆺ1�>tP�������l<@��<j�c=�"\>�(��������K�l�ٶ���J��3y;S�=h�?gc�?��<����=Q�O�/�;	b�;)��db���J�f�=�
��c���.ּ��>y� �F�3�S˪>zĐ�Xh˼�gB��^����=G��=�1>1OY?���<"H=>�Q�<U�o�
�>"39�&2���2�<
8��}/>
�<�٢=��={O ����<9�>������">�A�33����:�$�>���G\]�ah�]��ks�=U3�=4�>����ݼ���<�[>�V��<,�<�H����%Nѽk�T?��ܼ#*�G�>DM����3Q�?���=>[�<��>�<������=<aA
�fS<Z�9�9�P>�o�P>�`y�=��c��l-<�I��r͔�'˾$�;=�'����'=^v����"� �9��=
Q;kv@?@���<�K<el߼�?����"/=k��%ӽ�B$?�D=d���hv�߮����?K�V=��|�Z;���<.�5=&B`��y=ݕ%<;�p;��켐1��4"������2=��,>r�
��T��í�.��f�;���5�K<?��<Q�<[������q࿤�<Mo�x��>oTؽ
8������غ<�j�<p}+?)�==���:��ĻB��L�=�4�<��=���p�c=��˼�S��%}<� ��vmy<�6�<�ʷ=�+�E��2L?�n`<�vM?
��?�=���e��=��<�,e��ƌ���p;7iܠF��q;!	��K��H ��`��!�=� ��X���"{o�͞��O�I������!�o�!w=!e��m�!�DB�%�硵^J!�B��>蠼T�sv��F�3���_��F_�9, U�� `t��ܖ�����c;!YD�!5���9�ڠ�^�����#=�!��� ���"���pi��Z!�UAa��J���F��!k�Ҡ"d�!+d� 13�!���!rh[����!���(՘!�S."�b�����Q��e�3�2�Ǵ��L��>�B�X��7�Y6xY����b�5�Yr���C�;���;��6�C)9@0���M5�F���a�$�
�V�U���7�B����:i�v��;�^�;H�.�'-�"f���Q �8I��Q�;+u:�ַ��͹�;�睶s����y%�"�28A:�ۺZL�Y�9e�;��)9��γ1d8�
�9k9 Ҳ��4��9��û:�)�̌���:
��t���z^9��t<����Ğ��[7�%s���z�� �?�%n��#=���?��>�kn?�>b�;�>w
�>ʌýH���Ș;�@�=یW�|���� l?k��V��>�y�>��2��c.>m��sj��Hױ<U�Ǿ2>nD�<a�g�E�(?�~!>�仼P������ �q�>����0ཀྵ��=��LO~�͏��:�8�kE>!��
Tѽ���!�?��0>�.#
Z���U���^>�w>����.C>��|���?a���p���ϣM�(��K���gp����=��)=\��%�������!�!�_<1q4�;�;jǐ=��W���=�?�9�?��3>�L~<]-U��ͧ=�Q=���:v��<]�>0�T�8��<n�?�:?�'��j��9��?bA�.�M=�6��)=E%��0?Gq#�$��<�-�=8��>#��p�=�Qż��w�4KY=����~%�,C=#�<�4�>�o����=�b=���z�򽽨ܻ|�>J0��
�T��fy>��
��Ad==(���F"�H #�b���̝#�b��T"�y#��#iL#Co��)�����"nAg#��!�I"o�#>q"f2��&�_#E��"�b�5J�#�a"���"�, #
/#�#Y�<#�/h"'0=���;�ar�"'�#g��,�$�&��/"! I"���#5�"JD�"l��!�RT!�n�d���ׄ �l�#
j�u����5#��!�Q[���?�"z4s"2p�$3"���"�3��8��Mб#jw2�VãA�=�
��-6����=��2=1�>gǈ�q��dh���U=N�=�*ʻr�(=f�D�Yl�=��Ӽ�����o<�м�?����F;�<5
;�b���o����2>t�A=��,��v?�߷<"[>U�?���5p='pZ�Uzb=bL�>`A�=�}��)�8�,C�=jY��JԽT<m=/�2=�y�:{�	=wRV:����2>�+�<���]5s!m��2q>=���r�<����۽h����=�M�P�?�ql��M=x�=��/>��=>0�?,[>�
�<��%�c?�)�>�D�<Z���[1���=��>��x>��^�A��=���>
��?�]L>z�U�B,7=�T�=�J@��
���9��]�̽�[>gw����~[<&��>Ž��=UI�>c�>��P�9k�'�I>��>L�w���K<b�/�Fz]�.���><>0�=�!=��*>6΢>nN�`JT��F=n'м-G�7�X�Hq�>���Μ�=τj?>�Z>���D��׺F�]�c�llĠ�m� G��!\�����S4F���נ����^V�A�� ��Π�#!B���!�=.��m�:��O �k��m�����Z��=�!G)����}����y�@ �頤b�?�L�!S�� ����Fq! ���*�!u4ݟnc�˓�F+n��Tq�`]� �b]��5� _!0չ�S!'8ʶY�t�!�U��MK!��m�u2o���� �;� �!}*��fo��J�v� ��!3�ū1��0��h01��N�O:��m19	�1�M2x�7�5�D��9�8[�1pn1I7���N�B!>0d���+{����C1��1*�1t ��)߲um��cZ��U1g�����R��92�`�1��4��W̲t!���C�S/O�W�
2� f��U��Ӳ�����`2�R�"2R����DT�0�]�2¥��Zݲ��� ���@2�A����������� 2.~4���ɥ'���`�B����u>���>� F?�U�>'e��E��@����̽I¾��|=!~�</B�<NYp>��w���g=}� >N�> �
=r?��+8�=d<��G�?��.�:�!D(�t��>Q�;�[�=j> ��̨�Ұ3=�>�"�g�����>���=�{5>m���9�)?������5=`9�>i��>k�<�H:x�L?E���^����6>�EϽD$=

��f�Vy��󴽒��;
8�;[��jk�=�⮾;�=i��<��
�
<FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/weights/readIdentity7FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/weights*
T0*J
_class@
><loc:@FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/weights
�
GFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/convolutionConv2DAFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_depthwise/Relu6<FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/weights/read*
use_cudnn_on_gpu(*
strides
*
T0*
paddingSAME*
data_formatNHWC
�
>FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/betaConst*�
value�B�@"��h�=0$�?^�a@Q@&@S6}@�
�?�7@�J9@��?��@J�Y@�A@�O�._�=����h�@�ͩ?n�=��U@���>P�k=N|8@/�����T@�-<ř�U�=�t���@�m�@&䅽L�>��e?��'@~�����z�R@���=
r��e(@U�@)�
�Ј@%3����#?:
�?$�=?��羵Et@#�$@��>8�����]���Ik?T�a=
2���p=��$@�?L��@fE��OR>M�`@*
dtype0
�
CFeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/beta/readIdentity>FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/beta*Q
_classG
ECloc:@FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/beta*
T0
�
?FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/gammaConst*
dtype0*�
value�B�@"�&��@%UB?��!?9Ô?R��?��@&R?���>̯?�)?s{�?�t?X*@
"g?0 �?�mg?#`�@�o?Hw�>Ӊ�?B�?lz�?�M#@���?<5�?���?%��?��b?�f�?-�?�r�?@�.Ab�?�Ŕ?:ʹ?�`@��>��?���@z~S?B� @��?q?ˊ�?���@U=�i?�P�?e�}?��*?ڗE?e}�@j��>>��@�y@��R?�z�?a/�?y�?Y�s?f6�@@��?��A
jh?
�
DFeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/gamma/readIdentity?FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/gamma*
T0*R
_classH
FDloc:@FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/gamma
�
EFeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/moving_meanConst*�
value�B�@"���Ɂg@%s�?��@���Il��{/��&gj� K�@;��@�s0?Q�W��^�f/���A@%<@��?����Ę.@��@[*>p"U��c�?�A:�7�#@����x��f��yUd�8�?�]���A�Ш?��S�4�����@<Uʿԗ[?D?<D=?0]����@8'@Avq�����7�<��|@p��@P��>��$��$@#s���A�1���bٝ?��1�Ǻ.A !�l��?ΖF�C#t@ x�@�Ar֦�*
dtype0
�
JFeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/moving_mean/readIdentityEFeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/moving_mean*
T0*X
_classN
LJloc:@FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/moving_mean
�
IFeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/moving_varianceConst*�
value�B�@"��M�@�Y]@�}�?z��?�
@[i�@];@*�0@�o@6qr@Yz?(�[@l��?��@An�@e�?n�@i�@�@|�?��@A�/@;�>7?�@���@�g�?J�@��@]��?D�@G�@�@�@E@�!�@�g@6�?�?�ҙ@���?$��?���@�L@�U�?^��@�<�7�x�?]5�@U��?��"?3Ҵ?jA~IP��@>;�?p@4�@&c�?Z�W?�[�?�@b�@��@�� @*
dtype0
�
NFeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/moving_variance/readIdentityIFeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/moving_variance*\
_classR
PNloc:@FeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/moving_variance*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/add/yConst^FeatureExtractor/Assert/Assert*
valueB
 *o�:*
dtype0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/addAddNFeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/moving_variance/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/add/y*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/RsqrtRsqrtSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/add*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/mulMulUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/RsqrtDFeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/gamma/read*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/mul_1MulGFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/convolutionSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/mul*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/mul_2MulJFeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/moving_mean/readSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/mul*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/subSubCFeatureExtractor/MobilenetV1/Conv2d_1_pointwise/BatchNorm/beta/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/mul_2*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/add_1AddUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/mul_1SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/sub*
T0
�
AFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/Relu6Relu6UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/BatchNorm/batchnorm/add_1*
T0
�
AFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/depthwise_weightsConst*�
value�B�@"�0K�=�?��%�=?
�7禾��!����!pM>R,�=�����@<?b�����>�Z���J�>I�9�_��>�D4>qG�;ĸ>�?Კ����=g�y>s4����
>�ȁ>��I>��s>��>�.;�R�>i,�:�k>j�4>�.=�'-�����ѹ�,D�;C�o�~Y��*>�8���4�]�)>�].>�e
>F��<>�5>3��Cr�5T�5�VM.�5c[>��>���hj�>->��N>ӈ;��v�:>_��?��Ƙ���o���R�aW?*d���>b�:=��>��?Z�?����>��Ӿq�/?攱�|h�>/D���F�Zu�>l�׾��꽁�>���>#x��M�}>}��>���>�0$���>l^��>r����^�>wdh>�ս�n�W"d�}/�M}�=�|Ҿ���y�@>��n���7e]{>���>�M>�tV>��c>�]��夵��n|�3qU���H�>̊�>�?>���>��x>�s�>�@}����<E��=��?4N���'�͟��MH=�E��=ŝ$?8:�=��?�@=+��>�A%��0/> #����>�k#��`�>2~�>�j�T�=N�B�P���=��>�｟_�=F G>�pD>��7�
>"�4����=�b)�_�G>��=q�{>�$B>��!�oi��F�<I���m���=�d�+�＝��=�8>\S�=&~��[��=��l���B�B
)�,�������Z�*>rL!>3<�={3�>s<�=���>�����h�>���>�8�����L^g��X?=� z�����A��>��n>�n~���־������]����>����)�1蘾��>#�z>w\�>=�>��?��l��->L�>�&��o�}>ƻ>̥�>���>�0�>�x��[>�����.�>8w>��B�'sϾ,5����?)���̜��$���GH>�5��9"��#b>��>+����p=�r>��z��7*7թ����^�s����>f�2�����̎��,�h>e��>)���sY��!?�bƾ+y���־,v�=)����8f?c���LL�>���=�W>��?g����*?�(�	�b���*4?�-s���e-?�p/��6���di>c�?�	�J:�>[3?�P%?�E�>!?��о�n�>C��wp(?�o�>JHw���=�F���g@?�����
����hT�>����p�׾�>_�> ���s�>�0�>t��P�%7���GȨ�
l �^��>T�\����>[����>O�?�#̾���=��><(���rY�qjj�>��=�z����J>��x?8�Q>՟w?ϕ�>쮊�:,�D�>�ᦾl	��d��LԳ>�o2??:����>�����u>���>1n��*>gl�>�k�>�.���D>D����x>�<)�[��>+h2>�M�>g�>��D�W�>�f��Hv���\��R+>-yp��T���0>y�i>�'ž�W�a#>p���[E6Ա;�:"�Ҁƾځ�>��Vc=�w���">��>]����B?*hV>�ƅ�t?����(=1�ݽ�'Ǿ��)>�c�=y��Vړ�f���{=����=����,���p#(���,>��=�"���>*��>oB5��ѣ�C�0>Y��{=h�N>��<>0�3�dY>�Ͻ�7�=m9C��>A��=8B�@�Ͻ�,H��ռ�J�=��3��|�=��A��	��G�=
��=r)=��=�>N79�N��q��,���U����/>�2���{t��V��v
>��a>J#���Ҿና>��:��dj?D���hM<*'�͢�>?v�>Y �<�����'�gp"��j>���Z�cbp���@>�i��)���>�z׾f&m��g��mw>sn]�
��=��>��>>ސ>M�>��S�)��=�	6����>Ng>���J>�F�%�t�T��= .���Dz�j�_>�D��F���k:�=�y,>of�=�Ê>d�+>H
��=�7��[�����x��~��>�}���^>�?��DW>�j�>S���ڗ�=�B>Ab��a�>6|��϶�<h+ҽ�D���1�>0�=�1Q>s�=w,X��ҽ�*4>s���I�����f&�="�>L2�,��>����5�b��d�>'�
�$�=Ù>?݉>Y1>�X>�׽�v�=�풽}\>j%�=��H>��^>�G���N�;��=f6��DƽfC�=JF��{�	e(=���=Уy=�i��'J�=��_�x�7(�ƽ0l�$����=��z��<+X���=�->��V��T�>*
dtype0
�
FFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/depthwise_weights/readIdentityAFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/depthwise_weights*
T0*T
_classJ
HFloc:@FeatureExtractor/MobilenetV1/Conv2d_2_depthwise/depthwise_weights
�
EFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/depthwiseDepthwiseConv2dNativeAFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_1_pointwise/Relu6FFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/depthwise_weights/read*
strides
*
T0*
paddingSAME*
data_formatNHWC
�
>FeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/betaConst*
dtype0*�
value�B�@"��H-@�@v>����l�b?�ۗ���$<�񼅏����?���>�_b=á>���@�}\?�ƣ@�"�>��]@}p?θ-����>�m?6�1>.�@qI�=�d?k�@e��>��O?2gg?0">5'?��>`NT>�WW@��|?�Æ?z	Խpe@��N�ߪ�:�"����@l#<@�K
?�@?LU���0>6,�?��&<�d�<��?��@�wE��Xw��-g?$��@`�z?i�c@����^>�?�e?�:?���
�
CFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/beta/readIdentity>FeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/beta*
T0*Q
_classG
ECloc:@FeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/beta
�
?FeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/gammaConst*
dtype0*�
value�B�@"���L?c��?�>�?S�t?ی?Q�?�:�?��@ۀw?���?d	K?˅p?�+?��u?{qj?_�i?��Y?x�v?�0�?֟�?�l?�.i?J�?���?�p?�~??��l?�kP?�l?T]G?G�v?���?��?�?z n?��A?[��?�?�?�
b?X��?��g?���?�,?N�w?�.�?.5y?��?�K�?��{?|VQ?d�h?Yn�?&�?0Ԇ?@Ye?5�u?� ?$�s?p3]?�DY?Lbm?�sj?�o�?
�
DFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/gamma/readIdentity?FeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/gamma*
T0*R
_classH
FDloc:@FeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/gamma
�
EFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/moving_meanConst*�
value�B�@"��m@YF<3b�>6E���T�q�a�/N�<���vS@�s=7��>F��J]h��Pw?F���%n�j]�˲v?T:^�Ȧh�� �?B$��|�?��~k�@J?�D���~?��&?�Jn?��@
d�?ۓT�c��?o���N��?!�M?��?��+=eؿ�'=�+9�Ԕ�_����:?��i��|���?��>�3���2�i�,?hX4��x��5
��{濬�H�ʇ9?V���7���~w�>���@ˇ�?�Ve�*
Ǿ*
dtype0
�
JFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/moving_mean/readIdentityEFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/moving_mean*
T0*X
_classN
LJloc:@FeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/moving_mean
�
IFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/moving_varianceConst*
dtype0*�
value�B�@"����@m@�>0
k?q/@���?eZ�@��X>82?�&u@�W?��?�&?�E�>]i�?��?M`p?�4A���?�z�>�u�?u�?�\9?֖�>�!�?�^&?��>��?\G?�k�?�_�>�|�?T-�@�`�?�գ@���?p�?<�>��>�@g`�>��@���?P�q@�A?���@�*�:G�?Kd�>� �?.�?�?��@���b�X@b(�@��??�� ?�?��>�[?"�Ah��?�7�@��D?
�
NFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/moving_variance/readIdentityIFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/moving_variance*
T0*\
_classR
PNloc:@FeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/moving_variance
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/add/yConst^FeatureExtractor/Assert/Assert*
valueB
 *o�:*
dtype0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/addAddNFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/moving_variance/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/add/y*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/RsqrtRsqrtSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/add*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/mulMulUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/RsqrtDFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/gamma/read*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/mul_1MulEFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/depthwiseSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/mul*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/mul_2MulJFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/moving_mean/readSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/mul*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/subSubCFeatureExtractor/MobilenetV1/Conv2d_2_depthwise/BatchNorm/beta/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/mul_2*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/add_1AddUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/mul_1SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/sub*
T0
�
AFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/Relu6Relu6UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/BatchNorm/batchnorm/add_1*
T0
��
7FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/weightsConst*��
value��B��@�"��y�P>��p>=��5=Ħ>��w�0��>%G=�����Ҽٵ���I����7��3�<+D����<���=;<:n�#UBG;\��<�|��Ю��J����<6���`�	�*=��=?Y4����6>7"k�Z"�>�SQ�����
*M��;��^�=�3�<�����=�7�Z+���a=$?�j=|��<���C�;��>
&��r�
�\54���ͽ�S廜��=��佪Oj�?��8fM��Z/��d�<au7�ފ����D�$\��;�=4�=4(�VO�=w(A�C��.�:?�$�;�ν�;�}!�'Ao�a �<�fW>���=���>
��<H�$[�>�>k��۱�ٹA>ӝ�>�>fZ'��cg=Ps�=U��=��=��x�.��<�[Q>�x�YZ��>ý�w��j�=�K>W��<��b>�k3��KA=i��O���pý����?���
W=l<r/>Q^����b���~����փ��?!Z�3>�:��r�<Pq=>z G=�Ξ��9=�����<S=�<MF��R�=$w��;3�<Ɠ'���Ļ��=?��T�=��"1�=��)#;����xB=�J'>|QM=��=�q����=�u꽊Q�=��=�Po=���>(��=��>V�j>\�<���R
��ʝM>k��犀=��I�� �<��������<H~���j��K}f>�>��Ƚ�ʾ�V.½�����޽�8��)o=5
)=PA�d���_�/�zp�=Y;<4�$<N@M�G8C�$�F��Һ�����|#Ծg��>���=L���^=(
�<l2~�H�=����o��#
��"k�<
�E��O/>EI�=~G�=!Z�=�I =?ʔ=�V����X����>���� ]=E҃�[q��Q>���1= /�����M�=�	J����tT�cRH�����D9�=��{=�9����Ƽ^�?m�'>,��xC ��-��0>���6�=;�/>c�\=�A��w+>����f�m�!?q�ş�-�=�� <p���
� }	=Ol+�m�>=y�o=��^�#ӼB⠽��g����=�J����C�:�L�<�:=ŷ�,E
�Vn=�~��c��p��fD<=�oZ�̌�;���b�]<ܒ>Pz���׾��W�`ۊ>j��(˰>Y�>�CX;�/߻*=�P>�㷼 Q=��
=}���u��9㽫�3���I>���<Hw=AY�=<�����=����X9������@|"��	c=/�7<O;=���V<�K�<=ρ����eC@=�k�=�yh$�x �U+
�<=� ���<��21=�h	>�<�G�iD?J�t<u:̺lI=)�>��C>�a��н����Δ���>�uM�+��#b�G>�;۾�^>
�6�B��=cL>�dG=�Ǌ=C�m�\E�;�jg>�7
��N*<�S	�˸��Z;=�9�=2yN=��ν�ڰ�J��ߧ�<5䙽�+�<!���Bܪ�l�>�}�>������M>��
<�;m>I��p򟻓R��2��L�>/t�� 
��OSx<��f=�W��og*=�Q���������׌�O5=ieļ�E�:��j<`��>����8 �<3��"���@��a6�8?�\N=
�=���o��>�g����>{:/��8?��=��9>���<�)�5u�<��j=��?��1<��<��=�-A�hn����8� ��G>��`>�F��m���{=����E�;��)=4m����������"+>�ި�Q/C���J<��۽nl̽����v>2g+?җ>J����`>Mx>�J9�:-(��m=�� ���ZCi�|函h��yc�����>��"�<���&���{
�=������$N<��|� �T?�qH<<�=�e�<q����=� ���KX=Z���S�;�O)/>�@I:Me����C�I�D���q��_=����Ug�}/�<�i��yH��i��|���:Ѹ=d��>�߽E���ʃ���%<��=����gU�K���as�<!ޘ��c$�1 �L�(���[<��7��iG���漢C޻�!$�tnù�O�X�
�*��;VE�<�e_���F��&4��I?��EN�T��=3!ľ����e��]Å>���<� �:��)<���=d=������A=:Ʃ�渪=,�I=Ȁ�������=l��<����%P?OC�>�I�zi=R����5
���=��M��|�I� �h�$=�-���s�<�e��SW<��;̺7�[��<K��S�T<f9<siY��㎽�R�|����:E�������!�c\0��i\=Gu��iJ< ��&^s>Ms4�	�<�u��:H��ٹ������=�뉻Iĩ=J��:�I��ka���Du��$�<����9b��z	=eI$���=.�a��a<��N=�K�=��/=�cq=K��<Te(��Q���Ah=/<־�
�<ď�3 ���!=��)=�w�=���D���<��;%�<[ح>f�`�he=>�=���=H��>�*�<HS<�>�=���N4���,(=�<!7��>R]�o���W؞�?�U<JQ�=Cc�=����u>���p)ʽ}0<�:>��	>V�<�%�X� �Q�= H�gdY>hˁ��&���>�<��Ǽ���;��!<v(=�b6�w���⬽����=|T�=r
�=���<�Φ��ȼh3=*=l�i=�x�>[�M����=Z�5Ƚ��Q<z'�YT!=����_H��'�L/��"黰����;e�|��=27��i=��>���=�3�l��<��	��=��4�|�&���Y� ��b�=.�0�Js
�&-==�=,=���r> '���U�r���_+�$����$�2yd=ƞ_<fc>��<=����׮�<'R�=Jh)�5�q>(�D�,�&<oN����T>n"��P�=�N���s����Ѽ؈ >�{=4�<����<�$>��<�i�n$��x������Ɍ=63��KD��k�c<6�=k"����s�T0F��=>�{�<��k>��������=��k��RҼrA<�^��9SC���� ��?����O�=�,3�}�=��w��Y<�ҽ���<ʛ<�oý���(ꂾ����3=�u����Ͻ�J��#N>�eV��)�=@g"[���Ξ=��t=\�<��=���<r�	>n?����=��G���>$⇽��6>r���M��Q<�5�=��>��=4e���r��I�Ž��̼^IV=�
��='͊���>��=4���%��]6ս$��=����tt�v�!<�ھ=yq��G�=��콭h=�xF=�y��� =��=��1���4>u
h>]ꚾ  ���a�=ɶ���Q0��)<�5:�E>����u�=e$�9h��2���#�������H�c�=�:;w�>B!�=�C֢�1�{9[=�7���ǹ=
�R>nk�=jW���)��Q�A�o�����<��i<�&�=��~>��<��l=f��>�J=�6<fo����>@�;>Qr=�b
��-��#&�<kW�~��Us|�w�;��V���7>�X�=����@� Q�'=�7
>���:p���5��|���&<���=vd�:�|;�S�@�ڼ��̽Q��<|�*<�'��?<� ���5>��`�G��=�݊#�9����=⡝=�v<��r=���;}�=B�?�a�n<!�,�)�=�{ʽQB�=��������h�̼�?q=�`�>j�>y)��ӟ=��%�]�ո��#=Q��%�T<P(������N#>
�=~�o�QX=�x��3;�>�2����5>�H5���B=���R>tdU>מ<6��;3�༆���0H=��$��>+J�>�*��D$>8������>�0�_��<��Q>/xʼrҤ>�p����!�����uN��(����&5:��=m�N�弡>.�d:���#��%���8=bN@�7��=Mu>�0=͜���cW���p��A���K������<�Z4<��`>�N����=��??�=��>�:���W=l�<=�.4>�l�j�t�
��U
�YD��^"��#�K�μ��>>\��=D���
!��_<�S>��������q��Z�=�B%�<R���/t���!�<��>yp��
����;f�=`����"�iҥ���LR������(�2��
�h��<��>��=b�?��X=�,>p'�< 2�>�'=e�>t�_�,�ٴ����B���>Sy����)��a�=t�
<5�Y=�?��A�E��<��S>lU=H����$=���J� ��{%=[e���q>�z���KU>���_@<ޙ�>�ֱ�S���Ӌ�1N����'?�۰�s�ӽqY����#�����<3LH��x#��!=�2��n=�Ƚ�d�?���	
�~߽��?���=��Ⱦ{�Ӽ���E]�Ԫ�>�	�=٧�<��=�J�xS�=�=o8>��==g >^㕾���=��=s[����=]k��6��K�;3�����m�79�	�=���;8��<)��<�F&�F���m��=C����=��><<�=
g�=bzG=9��>��/�d">�
����m�E�>��\1<�O�@���������B=E��{⻇Z��W$Y��d;8���C��=ީ�>҇V���=џ������Vս 	>����*�=��#�<��쐻��-=��<��!<R6�<>|r:���<�s��$���
>!�A�GS>�W������w���A�3�M=c<���fp=9�1����a�s;=x���R@ͺ��O�<#0>�d�=��.=<�->�E���~�jt�=�}��VV�{���W�<�u�<

�=.�����L��x�(��Ͱμ{%=�Z�#��=t�3>U��?���>�>:Ҷ���n?.��˝<I�>��j<��&=�y��z���j�Ƹ���1 ������<䤇����=e>��̣D\�E���Z��ļ+��=�#=}� �����&&�z��<���;��<�:*=&3�=<r"��޺=�Ȅ=8~���h�Ƅ�?Ub�=��(>��G=;G�<�K�;C%����T�d=K$^��<�r=�]�=X�=_���1
�E��<3�>��ξ�'6�u1b�V�{����ZX>sv�Te�>ސL<J��=9�	;��>"νl�_<d��;�uB<�J�<��r�&M'>\��dW<q��=r <�0 �iȄ<P�	�	���}=Oq1�l���{?��c�'�> �=�=�o=LK�=mV�V�7���>���t9=�U =�]�������{���
�=�c��8����O����<�=��T֙=�Ƃ=��k���=�Jw�K!C<���=6��2,������S��[�)�=��0$�4�=�/���<�<��>] ��y��;������fF�=�}	�	
��F���t=�S���5<H����;l��k�=�S >����}��o�$z��
�����;?����s<�c�����<��i��k��L�<t���=8d=���=J)ܽ��b=���o�V=�᡽��z<-$�<M/�#��>ϯ�<��m��pK=_�;��i�k�<׻�;��)>�۔����a?��Y̟��
>�u��_R=C�=�!�=P�6�<��<���5�n�*�{���yY=���>`�ϽT���[߲<�b#=!K��5�=$m=G�=��B#�μD�<B\C>G>A�
=��ܽp�=o7��G�=�
�=�">묽>�h�<�r>7��=Iֽ��<���_Ǝ=�Vf���^=H��
���5`ݻmS!��`�b���̿Ҽ��>�n>q/ >�/&���佔��C��������|=��=��=<k ˽��8�K�o<�,�;< 񼉿=����<��$�Ϳ���=��S?1�6���$>��V����=B��YЖ��>N��]+��*��z,�,���As/��b�>W:�=��=[�v={D��k5�=�ϾT7���?J�4a�=�h��Ō=[o>�p��Uj�f�S������Ĕ=w\��0]���
���f�mᕽo��=�s��u�����������=�dg�=��좟���m=�!ݽ�v6>��
>:-�=.~��/X��
z�V�j=箁�c<��&U�>HY����T��ʼ,Wr�v��=jf���0�#�[=�Sܼ��1>E�<4n#=B,�;;��=1X$�Z�h�t�������:�\�4�H�"�����K�=%k˾���&&����=�����d�ˬ��� ����]����ȽL� Y"���=C���P�>"��=�K�=�>�v��)K>���*��=��U=Y>���<QF~����lx4��,�������� ?�b�=����g1����>M9��T)�<���=�/�<H$�M��TF3����0ĵ=��=�%N�NՓ=
J�==��=Al�w�>�כ�=���<�%֮<�iν ����𾨩�;���=�H>=$t��N���9�=J�r�M�����<�P*>A3�A�s���@�!��Ȣ>�˾��f=��>�4��a=L�b>�>8��є<�O=����*��jE�Ԡ<�T����۾�8�0=���>���;����7T��t >�7���U|>�d���H�=��D��9�=��/!y��9%��]�m�P]>���4p���ڻ��o���UO?m�<J�?���<�Ɖ?X�����;���=4��=�JX>v��<{�$?�g"�D=I�8�t5�<~X�<7*��e�+��`-��5c��
�=ͱn��*�#�>���>��>��(>(�<�O���m�;a��>�n�>"ڂ;}@�=_Ѹ=��Li��g�=��>�)=��r=�=crr����;$p�<��ֽGЅ�&���+�*<��7��)�����g�ܽ��ݻ�[��<�黉��ԛξ���/Yg��ZY;t��<L=8N����j;�x��^�>�wk<��Lk>S�z�q)S<pө�,��=�Oy�Y�p>�˾��.�ؔM>?�n>� ���A>�W������m�=�Ӛ�G@�<&��>Z$����=��o���4�5Q�=_$3<�=|�u�=�'��>H�=oi��%�t��x<>Ɂ��cEo>>��ӳ3���	>�'�Ǡ�<-��>ݎ�x=8��Gʻ}	ʽ=��>�ԾI�f=��!0%�=?>���f6�-c#<],�04���(����
�(o?���>� ���T?���>z�&%�M��>��
�/B���mt?��h�B�̻����=>l>y�E=�����L=�go��E߼%�5B>8���Ir>4�\7�Z�<��v�O(�>q�#?�?҃�p�c�0!q�3C=ƐZ>�>)|w��<�T,��V�U;嘵<E�=؟��Q�|=��!>��>��;��6��v��^��=9��={yT��.�<6�=0{m���2>P%2b��%�=?ǁ<G<����E�;���=tS��Ե4=M�>�ކ<�+m�qP�?-�.��Q�=q�>��=heB;�����=Ծ?�ߠ#�ޛ<#��=�y*���<�{��
���Z=���K߅>�b�l�P����=I��:������=������|ܱ>���=Ħ
�H�$=�V���x=�?���c���%,=���u,<��;�g�Քýpt5=,�$2�<f_����=��F�լ�=���>�>��f=�~�=�ө��9>>|0�s:�<f���u�v�����ו<�|��ӊ=<�'=K�D<�	=z1"�8J�"l=��=U�����>�N�ؽ���q>s��a���m��3�>}��=���>�zC��d�>��>+Q�������>�=qȕ��|�<Nz>�X����=F�����= PB�fH5<?H2;F��='�>�'|��@�=��Ƚ`>�]<��s=�|ڽ{���Q½q(缘6�QD���g=C���ꄾ���#���4�=���H:�<�M=�_�ˋ]��i�=[��;,�S�*�>�ܓ=��-=�1��p�k>g%>�6�>I��݄��r�>#�=n�Ǿ
�>$%�S>Ⱦ����!>r?m����=�K�=��/��M>�;���lQ;hB<�_�O������N�I���N��b�=��n=�T�=��*=	�<���=Y�˺r��[����>]����=�2���&��S�������]�����<�Y���_>:5���=8�=I7������m=>������>k�}��j�>�lݽ�4>qW=I�"��e�=��>�ꈼ��:�_~�=�Պ<%��#��,=�꼸Tu=�p�=rz�>�f���yRѾ�1�r��>g料���=�]�	:�=�Dr>%?=\�o><`?��\����f��=�û=`X ���=W9�<ex����-��k㾎�\�Q=�ɛ��Ƹ��]�;=��X]>�G�����0s;<ʀ;"0��5f]���6��G<)8�<֊
���<`�倗�M�>3��:�<89ּ�k>���ǥ�ڮ"�� ��Ϗ�5:ݼ��k��K>OE��6�=�=������$�*:l>�����c��5����?q~�ɪ�>N�#=V��>�F��^�>��);�����Z<��]=iL_���<����t����c�=pF��B>=��u;��0p����b
ľlN�>-ƾ�q<�%�>�^����t��%��Y$n=������>!Zý4�V�yI�!+ђ��ve�Y�"?*�>ws�>� >2=Lio��p�=�v-��I/<�	ܾ>1���B�M��#=1<[��=��H���>o��*�
Σ�Q(?q�=$-ʽ���<ĳI�,��<�L��s:�	�=�X���?$�n��x>��>R���\0=��k=����?ξێ'=hSA<h�f=[½؈[�Dmz��B�={{a��H�=Ù�;E��=ט�<9=g���n���t你������<~��L��a@/=��;�U�<r��u���������v�j�D9�<5U������`e>��+=�^�=�F=�V�Q�纍�1=�[�;%�X�H�
��/�������S�Tu<����F��z��>���ܣ=�9���(,>��뾹��=��=�ϼM>�>{�k=���>��>+��=A���ލ@�����#S=������)���<��=��>m��������`x=C��=��.� �?������<�k}��J*�}`l��B���V�Y�E!�Ī=8�=5��B��뗂����\"�=[�>=���=��<�L�=p�(�)N�=*염��=\7=p��=a�Q>��0>͛�9J�<u�=��H����=MG�y�z��>�~%�l�A�� &�Pϛ=#��9!�����:f#>�J��R��3F�<�=��>>�g>*:M�o>b��=E�<C����?��`=��;�{<�����'=��t�B_������>�{�<MT�>U<�=�Y���2<"[�>b��>3�d<H9�?i;q����e�YK�w�='�>��=W�h�Y���}��Ľ�����5%�x�l>�Uн�$�=*Y���w�<+�=
w��g`��N=Ⱥ���E<?��>�´�̫ǣ�
Ծ�>��L<o�>J��>�߰=`�'�a���h�Q�8�W=�ޞ<�{�;����\�>�C�[�>�!�=Z`�=;��>"�=UC�=h!1�Ң>^��ԣb<�༷b(������.=�% =Lf��->S�$=�o>��u���f,>})B>�S��|��<�.&���"�BB=�Ȧ������޾ý//���v
��} ���>"����A=pP�<=�9�'��~�!�Z?���<Q����;�_ν ~=x����c�=?���=�G˽W��b�	�!>���nM�O{��A(#>ݺ\=�}=�E�;�hѻ�-��K�:�o�>swŽ&�����R<�ܰ>�TC>AS�=@�!<s@��J�����=C�	�@z�E@�t����eݽ�����?F����>ڦ�Zu�=�	%Okp<`[=M=�U�;���=#}�ųY�����Q���%�1bw���^�C �G�g�g�=����_=ԏ(<#g;�R�cb�<r !:�	��Q���.=l>�W$�t
�<D�n�^"��G��=�{T�i���%�=}KP<򵢾M�3�� >6��<c\��I�MAL��\��Z�5=�g@�{Y�=��;݃�=�
�<n"&<�:�=����#{��� >K���Qf�;b'=?A�Pj"��=$����b�Bl�����wMþ��Q�
��<{�>�2?��ļ��>�i4<"�h?��žӚt�"�> ��<��=�y�= �?�4�^��<�Oi�\����%�=�3
�II�<������C,=�h6���D��ad>p�U>�D�>��>��-���=,D��\�%?�g�>a��=�B=uz;�e$=�2��V�>:��<���<_)�=MҊ��r1�c�m=���g�r�%�.����===���ɼ ��<��v�Q��<�@*={i�<M�G�fx�2���A�" v��v"m�p���{:��>�
��*�[L�<k<�V�l�nJ`�ţN��8i=�J����=%����c> +�>�m����=��>��߾A]��"��<ω�;a)
>ѶL=��I=�f�>?J�<�v�x��=�k=�6>�p�>nV�<">�<���0�/���:"?��l�����I>�b��΋>u���w.=�j�=����ˬ�>��6>�d�<-#=<��<?>�O����={:!ju4=K�����Q��S��9��Ie�=�w��cO=�Du>���=���=K�Y;}�(> bֽ�9�=!�1��j=1.ݹ �~=�'>F���/: ��:�����;�uI=���=�4l�4+��C�-�n g=�i=��h��=ֽnx�= 0��B� ���=�*�=�
=Xю;7G�=�Z��p��=v�=�������k�p�ے�=(˽�af�ES�=A'��>�B��ϳ=#A�=�v<q��>�%����y�
�B=G��u�׃8��i�,3��k\����%����(�>@I>~O2<���<��̾��=y)��&ȼ:
z>p���J��=���[yd�a�>>�tT<iT���P�=:�޻_��>�K>Y5>:�N�����=���iѤ=S�E>�P>�^J�U��=�b�2�t��5����<!�r��钼��>^3V>�<�>Y�!W5>�б��M8>�+�=7�'�P�p>��1��.-=�4Q>b�R�J*>�4R��" ��jȽ�=�/�=�0=���!�#�=��q>�ī<�eE>��%�f��=��=L' �scy=����M=��h<�#��@����8>�ol�`GU<"����]P�E	���<�t��۪�<��<F˨�-�s>��߽��6=��>�:��">8=N��䊅�-7���x&���1�3�km>=)�;�Μ:ߪ�=v�V=���=w����W��;�>{<?@�<��ɾ�w����{�mH��+ʽ�l���`n�Y0޽�׌>��<)�7�̺>���8X���=,t�=��=��l�����gB>�T�$"^��}\i�)�=��=E >��0=jn�<�>��
�>=�ͽy<�M�<�@>mQ�>v���I�m�=�n=��u=K��& #=���=e���=0��=�X2>�4:���
�G�+�1Pf>�B>#9<↜��f����<�^������_��&ĽD���ET�R��qZ�<ˣ��������<ż��^��=��w=��9����<��)>��=(�Z��X����>/��<������%�0�<�aĽ�~[���J>�����E���=#���M!z;{��4���)��ϼ��6�
ظ=�(=`F����ڥὃυ;OA��FB��0����>��+;VG5���<DHʾP%e;��<�-���_v��G[��"�=,��ŏ�>3�I>ɂ��Q)ǼK�Y?z�!>'Ƶ��
����!�I�T_[�o�c=��ü�ۍ�^P5��	n�凹��;&��=x���^\��Q(�\�3��强��<��>ҽ�E��eb�\��}-�;�H�=���e�I��'��3��m<�,�;�����=5�?:��>ᱲ��qλ�ŏ>,+�=�?��xR=Kp"��I���,��]w�����;�y1=n�<��
>�S�o3:P6^���ʻ$�K��E��|�S<-V��:�<���=Z�/��d�<��=�
*=N�ٽ�	�����\O����h>�2�UN���!;���E ޻��>=�R�iU�=�F�<F�">3CW>0���	����"��;���]��x挼07ԟ���>aM�<:�Q#ټ17T�6D$��z��[1��G4�#k%>�;=�v�=�IL<8�>����"3����<c���[/>�7��'�=���"nZ�<�_����<� =K���N��6��;ZO�����M�[B,�y)�>�
;<��L>UG�>Z+�R�=���=e��=�Y=���<*J�<sK�=ԎC�����9��<k�=�g��l>���<��<!L�<i�=���8��TNi��9��Hw;N�i������Hf��BM=�=���}��슾����Ɛ���	�yr-��^<=�6���">>Y����/��֢�fYd�Y�9�9�����<V*���<J�>�~=~�3�2�<���=|��ц?/�����~ �*�S>�`T�6i*>��+>�1��N�M=�r?���<KJ�>1yA�G�l=UI�5l.���=�6����1��׷;D]'=�?�>$ n���1���D=���;]�¼� ?�ҽ����{�����v��e����쫠{�=2t���z>Y���֚=�U=>�?={0�<�H=Z4��3z�i���R� <��޾j{�=��-;�b;=O0Q<�� �T��e����"8�Լ�H>/RG<0���70�������]��tS�<��E�|�5=�<�:�9f+��12�N�⼼�����	+J>
~�>j0�/�{��b�=87`�����mR,>' �;�;ʼ�ܑ=�Q���<UJ��;�=��
=[� �j�=q�<;\;���?}<���m,<�D��yT<p����
L<��Ͻ�����P1>�q�=��;=���م<�H�6�|�<ĉ�<�+��㊽�텽�1�:L:��.>�L
>���>�C�#�M���;����N��m�>R��#�Xb��,=8�=.&�>�=n0��|=ֵR<tS�>��_�Z�=�[>���<f�C�Y!L�V#��>"7=�2:=�)��#�>1��=w{5��u�=�5;?z������v਽	���X�>���>=
�!�|��=�?�]]�;�yn��3�y?� >�<5��oS��_!��j�~޳=	���|<m<��:��4��Z	=r(;���=+A�>�Hn��%�==	=.����l��`���?`X�j�x>��>bN_?'���������< �@���<M}�=�"�;�D��M�B��Bj����>�B�<J�轔��=O5��d3�<��\��?���(>*��<��м����X¼�l���%?�Ӹ�'%�<-�쾦U���`=�r�3��=�K#?�h��rѼ�.�<��?6����R>��=���U{�������;�U�=���<�?/=�n���f=p0��L��ņ����h���3����>��f�u	��
=I̼$�Խt���O���j;��A5��(�<���=B���U^>����t���l���ۼ�!{�t �o�<�L�
�7�n]%��=�S�> �N<��=�P����=�
���C�3��yF>It��v8<��ѽ5��=y"�	(i>|�弜)��zا��&���<��Z�=����T���0�6��=T��>w��:%�=�o*=��UR���U���# =�p����$>�����b>�Fw���>�l���������$�B�;�I��S�;?*=�u��մ<n'p�Y��=�2=?>�Ҋ��1�7t�=B���WV�|�ؽ�0�>�>�M�>�0���p�Nir���;����j��������=(�b��]	<��Y<������=$;�=2H>')��*�=��Z<<���J:�g�=6Ȉ���:�-=�<7�����Տ�=MQ�#<E���
�XV:>f��>�8�l@	>��F=v��:�Y��fp>{���@�?&[�<a<�=x�<��>�h������:�/�j�D�%f�1%Q��>� >�d�*R><x>O���w�}��<l�˽�T$��"�6w=)� �f�>K:>��=p�<�vd?6�>�O)�p��<^�=�=�mF>���l�����<׏��� =�m�=���:��<�.�>�D?�$<UH!!	��R�>n8 �| }���� 3�T'�Y���К���>���C�>晼�3-?�q�>��ټ�a�>�ǔ���=�U6�s��>��$_Yj�B�~?uW󼷁e<g*��:��=�ۼ�0����<r썽sF�	�<���>7��<9�J�;KνF�=TE�C���LE�>����,�<�c�=���� xz�n�V8,=A��EX�ֿ	�����;�<�\Ż7-�<�cV�d�9)�= N=qGw�n&w>�������˂���>�;��w�<q5/�\�>w�>� �=X�=@�[>��B�<��2�<�E+���>�|��Ͼ0>�>M���<���=ż�<Q�>���=dW/��J>,��<�g�<���$��ƽ���=�������=4���>R�b�Q�1=��2�؝�<2�����<�A_=�Z>���>����0>=F+��H$>Ш̾II.�Bx>F5>�7�>D��W�`�Nf)��L���#=��=m�C���K�9�<<Ld��6 =�n� n9=*�<bJ�����=���}⇾�)>�������A�>0��1�K>�5":��i>mx��p��;��=-�=�7�;i�E>	B��<�n���
�<�3�=[�6���;,!q�U��>�-;= ү�g�=�<X���>�>M�~<ɔ�<C .��`U�B�";@�=�#=�=���D<8C4��O�<}I8;X2=�9=���=J�нWp#��}=�?����7 7=���<C/�Ȩ
��-�<�y��/n�<����$�h�=���>'�n%/��=Uv���2�;�ⅻ�k�>�"��h�<�~ؽ�l��|��=�c�='�h�1u���;���=5=�=쇐>?�>��;�X@�b��>� ��w��!�kj���P=0#ν�3=o�=�tn=�,��!�=7׼(P/�@�����=k��;Q�\�o�X=�a;@إ=BY���+�=K6l=�}>`�
��=��>�u�R
�9�_�u^X�&T=�A>0b��9�>6̨���H��<Z
W��-�>Y���3����^�޾�����!8>���<����{�>���}�
=k*ۺ�4�>DM�>Rp�;�~>��=�]0>�(|��m8>��a!�8�+�?��1=/%��Ün�'�=�ݒ<�3�;��^=�ٽxi=�,���>ȼ3��o� �
�}u彧�!>�8>=@�>�;\<��=�v��M�<�Ɠ�+p��Z=�S�=�1���z<#�<�p;���<� >մ���.R>�L>=@��<�g%=�u�>�>m�s�M��<�����2��>��<��!E��=���>O��<=�<�S ��=��=Z����e���>"�� M|>��"�Wzs=�k�=�Wj���4��� <�E<��A=ǽj>C�����Y>#>g�����A>���<�H>�����|b<cH�=���<D<,<��=�ü�sA>���>8�~<Ԇ�<�$�>�ɠ=����C�=�> j:>j'0?a���B]�Ey�%�ɾ��轏}�=m�0�N�V�He�=��0�XT���a4!��>_K<>5r7>և��f�=��5=�_B>�cc�\优�+=<�>L�q=�S���W�Hզ���Q��k�<��>����XP�>�KE=���O�-<C�)���=�k#�vc�=�R�;w��9~>�F=d۩=ڤ�>�B��c�XgR=��N>p_�<e�Q�c�8>�(����=0K<�|=|�>�K�5Y@�ؽ�=�(��E�<�E+�T�=)z�=0-k��C=� ���c_>���<��=�iX=$�=�s���=&�c�Lq?�:Ӫ<�t=/
\�ց)$���J��3��=�D�4s����;>m]=fy�=�?��un���P}<8����-7��;�>�">M��>GL�=�&>L�_<� 
��Z�>H*��^�������Ss>V8��zT�;�7׽˸�>8,L�'���-=���=�G9�����3����~��qO���S=�n��	�mU񼴏+=8�s�)�>B�X9O�y슽���=7�D�>��ν
vN��:�일�ΟN������4>P��	X��M��UM���U�L��=�޷�-��;D��˴�Ǘr�P��=]�I�jQi<��q
���i5> {r�r5 ������$�;0�/%�<���>d��=���<�E�������:�$����=���<��=԰��㜼T���^�.��Pt�1�:��=IL��,��D�־�ɇ�o[Z>{$�=�;��
��E���S	?��g?��>��;n"��e�in�=I����ݻ�J>Nx���)�;��;�e>qx��&�A��<^����#Gr�<D:����3=�\����^K =f�<Ӱ��r���1*�Z{D��吽	���]���
���@ܽaĺ�e���%����;T#���4���c/#g~>&å<�B=�f���M�;�K��1>��o�]�:l��=�;��MY�����=�`�U�;�a�:t�X>�(=�Ľ�8�=�n��e����]!��w7�ԕ�=�|B��;�<�YA�Q���u=[/)?@ɟ<-�K������j��� k3��h< ��Sd���ڽ��Ẏ��ܮ�>)c\=�ۉ>�d<>�A>KWo<XiĽ���=s� >�*������;ŰȾR�p����<��p�=D�@
��;o��	н���>��=��-�&���¥=�?�H�� ����h:�~�N�=�؎<?�>k��<����)RW�3��;W���2-?�׽0a>%��>��>C��=��>1���3?ժ&��3>=z��=��>r�U<��J?�f�=�[�?�3>���=1]=AI���(t�N洽�̔�1��$��>�����Tʼ��=���=(��=d��<XnZ�6ѻ��B=@�7� !�=/�T>�
�d,�P{ý}(?���=���}�z>4�?>�N>
*A#�#��=��>�D���7:�
�f�{���,��=F䓿R�3��+�=��>D =�8>zfB=��=��Y�F��{}=<���ԉ=5����h۽G�=r���Q��F��<.��mޚ��<��h$=�V�>)����=bf=�X���S�x�=��{.��'>�ŕ����>Ϸ�>��4���=&f���I��F����ݾ�ƨ��1?�
=�x"=��+=R��<�U�=��X;�����$A2�nYX��=�燽l����<X��m�1�7v<�t>"�f>�5�|81;zP��.��ڷ_<;=~b��o�?���k 1;~
O<��<�G��Bg
���=Z=�cO�������'1���mU�ߟ��C�>cF=��l>��<<@�<T�<])�=�2>�Pa�#�ͼ(��2H��w��C���(>�{> �=���� ����;�;�
=e�=�WE<���>�3s=,8��|��*(��g�=���A$]�ap9>p:[噽6?�K�=a�,#q��;9�=����.�t�����<�Խ.�@<���Y
Q��Ř�V���(8�<�p=5,c>��O5=�9�e7ʼ���h�=in�=t��=},m>/��{����q��#���vy����Mڿ�nY-�@�)<�<5?V��Mg�+�9�t�>�.^<ow����<��=c\]��z�=f�伱td=���;>!�=���b����I=5@2�	&�Z��<΀ɽE���F=P�F"��
��<�O?NhF����>�a=��?=�=���=���<{a�>��=���=Lx�=��Z�����m�������=�D�=
�1<cO>�
?�5��JY���d�R�=��Q=l��j7+�{w|=�{�=��)?��=aBI�u�Ǽ�&?+u�>�V>l��<�B�m�n�`�?5�6��i���s�=���#4��=.%;�$>9 �k�3�
O��М�"O�=	�>?�Q��P�==(�<|f�>i=6������E��7=�r�=��>WJn=�~��	���
�6zӽ����I�A=��!�|�=��H��:о����l!=Z�̼|RX>@ٳ�(]�n��:�w=�*�<5,�=������;`pz;��;(��=bT��&{��g~=j�a;AF.>~�=@o����<?�.�7�S���u<f�������9�Y(>�@=,�)йQ����*�e̎�\��>3�C<X-�;�_��D�y�ͤ�=E��=t	q��6=V	�=ޡ�=�?V=D���/Yڽqƣ>5���_�>h���g/��E�8����c�"nм��<щ���S��==�)*=2� �Nk-��j
�6v�=�t'>���;}��>�v�;��:�HM%��ȭ��vG=��.��Y�<��;_����>��U����>Uڱ����>��XS��pؼ<a�>lc?��-<Ͼ�;#�=b��d6�<��Ѥ>�>o\�<ށ�<�mm����=�[��{�=(���P��<d�Q=\7�3�}=c�<F�=��;���;Ah)<�sz<^</I<)�=e�P��k�!�WI�/��<��>���<^���N<�[!��)l�jc<����'	=%8�����ti�=
�=44=��B�>4=(=�%�=U��<
~��!��(\~>���-��;�|$=�ް��)��'�P=�A*=<�<�V�;U�5���C���#��gW<i}=��c=+��_��=NǊ=v��ڧ�>��!�)�:�ު���S<���=]w�;g�k�rm�</`�.�>J���
?#M�=��#ڮ�<�Z+�ǎ@��f9=A�=�_{>�<-��x��pt<>}��z%�=��C�J<C��=�i(=�sH�c��<(2�Zi�:���>��=�T����o=�L�=ǃ̽,�������/y=�I�^́��.|=�Μ��>���<*C�>����W��l
�w�8>u�>��< Ш�o���q����	<|-g�F�^��Dν.ƽ�)<�����p˼�S<����!�<�%L�&��=�����h=��*=
�7<����1=�����;xꓽ�F��_���#r ��L����i�>����_���v���Z>`ν�Oo��W�u��<-�L:�;i=}i��O�M-s�&e�c#�<�5ǽ�J���s<,p��R���"G�E)D=�E)<�o>;,g=�ݽ�����r=�f�9���)S�<����됡�"��rݽu	�>��Nj=��R>�Ш�e=�2Q�7D�r�B����<�]��Hھ-:N<vj�;
�R=ꍽC"J��9C��L,�3Ӛ��ʝ���&=�&�0�,��A�< E�e�<ś�߀>N ���sD�h�9�?^/��W5��/���=���>�W���Ͻ��uJm=N�üΪǽ3�1>{S=U��yg<8�
��=�<�r=:�|=��@��7��V��>�57��P��
�'�[f�<��߼�^߽�»߄���f���<t�o�ʮ�$?G���i<��< B�<>��=�`=F�J<|�D<\5ϻ
$ｉ�<�Nc�<N ����>s�X=�PS>	��:,�>��
�J9�<��?�^�>�i�����=3�<PS2>�">c����">n���6�c>�T��ÿ���ld=E��:����`���h��EZ=q��=E�Q>�n=�'g�s_�
�����p>�u�g�ȼ״=H���.�O�2�{=�>(�x��=?�t���>h��<1� �Y_=w}�=���=��+>��༌Aw�]���4N<S;�ƻ�;���e.�F
�<'��t`��,r�;�m>��s���9���=�a0�h��#u�ż$��<�b�=Y��=F%�=���:�=z�=$	���ݥ��֝>��?��u༏Ť=d}c<|���~�=%�z=L}��|=NE{=��<�G,�B(=�U�o��w5>��>��h=���=�HC�b�#<+:ļ}���Q�Tz�~+>�//���,���*���ϻ!Q��#[�<��;~T�<�R=mR��'܏��Ҭ�b�!=
}L��O�<���M=�嗢c?�:�Ó������$; C=<�4��E�=���;Y�e�ċ~�%��;���� �>�D;��[�?�i>K�,|	>����E>'e=&�=u��=���e��1.�>�l��LI�<����p�ׁ>/�>{>��(�z�;׼B<�*>]Z����}���(�<�="��>����>�6<�Wl>�u
���,����Q!L�>{�ɽ��>������͐�yL���o�=�-<�RH��>��]�;W��w���`c<�~<�F;�ߔ������m�!<�-w��ۭ�n�1��na>H*λoM���v��`��[�<ɄR�B�<D�սg,=��=�䊽_4o>��>ݑ]<[�0���R?-��>�H�3.;7��1o�I���&��=R+�t����Y<��Ӑ���<-e�;㎌=�h)<~5E�e��@'�<BqT��׌��X�QA��V<���8�(v?<%�K��}(=l|/������ɼ�U�:�)�G�#����=��=B��5>>9�����$�E>:T�=��[;*8�=��ʼ��74i��=Ê㻜��={侥˰=�-E���;N�	�2id;���]:�<�D�<Ah(�|0�����S$���Ѽh�Ծ�3ͻ�ｌ{D�~�d�7#q�/l�=�y���e��T��t�O:�<W�c>^gW��:�c's=}��=�T�>|r�<�ٰ;m�ļ��W�� B��y�!"J��
�>�浼3�5>b��=���>�/\>y�J�1[�=�NJ�DE%���=f��:J�<;C��pj&��T������d��>9��|C? f=ʟ�#U�w<
�B<c�B�=�1Y��b��q�X�em=`	���E7=hy���
>l{��D�=���>6.=��=�)�> 轿���8 =I[�<�#�;��<�V�>=9ʛ�)I�;�T�=�eŻͧ�=��=� �`K�3kr=iY�.�}1G����:�_��qP�sv<`��!:=��>\
��&�%��ݾvKξ@���E�h?5��;�_;Y+�������־jq�=��S?Bw/=���=�ㆽ��~>4��k���hb�@ü@2��m����"�+����[?;>x����ټ�u���J>�ּ�*>�b�<�G�<%ԣ�}
��	Z���ھXJ�<�\-�bx���3�=�-Q���s��K�M����3ﾜ�p>T/�<���=��>�R;>L	=+��;��_=BX��6�>�z4=�F�!��ӽοi���i�z�0�c��;ܻ(<**�=L1}=��w>�J�<��� >��ͻ}|g:��>rf>><�=�v�>7���6�=h��"�
>ي1=�=���RG>���_>Z��<�k��p��)'?7`-?w7���8�=�����#��x�9>\��W��J⻔��=�T����=�V�0�3��ڗ>E�yR�=�r���Q&>��<?%p��~��=7��=��>�`�=�5������6n��OL�>j�=�<��I<I��>�ٽ��x�G%v3=��:r�g�D攼�;=��">6��<�����Yj=Z�>��7���=N������>�^��B麼�[.?���=���=Hv>:�S<���=��
$�!��/G�>�)��� ���5?s[�I��=0D�?��=Ý��C6��i�<�9�A��;ģU>���=P�/?����a�$d=D��Q��=���=�A��0? s$���Ⱦ�UѾ�O�i�d����?+�!wV��ix=ubD=�l�` �r�!<;��;�W�<PȐ�aK�=R�9��Y�=lE�;��/<p%��fsA<^�\=l�y:g;\��>(vJ>�EF���>J��<���=��#�?f�9=��B?��d���
?
P�<vt�=,�>Y� >�e&�����A�=lfa>bc,>�*�<(�>=�.>GP�>��=�O�=�^�ǚ��t�>���,���P�0=�9T>���=ӻ>l�>B�=B[= `�3�>�m��K�'==��>���>^��<L��=?�t�l�J>�-=���>;
������	��������<B�ѽ�!�YY���5��o�=-��DR�=�<tc6�z�׾w
��U�>�n=����5D�=Ǩ�=��'<lTս�m=�4#�!���+d=�-L���I>T,�=�� >M���M�>��l=�q���ߪ>6
Z��J�3�>������ʷ�>(�׼�W/=���FH�;�>E\�=�5&�P^,=#Đ<w�=���ɸK�!K�>N��<�	�<b��I	>yrϽ}���-[�p*>8�X�_���1��/���K���-�</����x��׍>�_�J��<=0>�=mD
����u嗾�98�>:Q��c=>�&U�}/	=+wy��v=�<c�R0=:4h>�X*�QM����潜�<ݦ�h5�����=����e�о�Oq�q�N>\�C��MO=H+]=�}z�_�]<��*�%��8>J��>�G�������w=(N�=�F�=Io�����=Wn�>]�=UH��z���p>=��>J}�=l�o���6=u��<jON<5�*��QY�1C>�w�=�Ve�7:%��*�>Qm!�*	;�e���*��b=7����k��#�t�u^�>�M�=��=�L���`>$�9��Q�?�5��@�#hx��ckk>Wmݼ��>ڒ.=%�M�`�n ���q(>w�]<���0z�=%h_��׿�7 �=�<
>{Ž��f��C"?�P��c/�<����b1�=� �>��>��νJ�P�da���0#�䆽m�9<"3�=��>��F>��d=�j!8M���>��9>߾����>�C�=L߽���<cw齤�߽E+�Og�>�R�=��?��>%��=G�н�j=M��>k�>�^�"^�j��oݞ=�0�=CW��L�>q^ɽ;>��@=n	�mA'>e�<[vԽ�O_�����i[���U1>����X�E>T�p>&u͸�#�=@I�R8��'�Q�>�ĺ���@a�=d>��. -��K�;Ǆ�<�$�=�
���v����F�u��� EX�B�=� �uIU��M\=��(� ��>Fn�>+4r$l�>R$��Ҕ̽'>�=E�ɾ:ܧ>|F6���{>@�>ˡ>��_&��;PG=���C��X8��T�l=li>!��<��T�����*ߍ�i猣�������<�B,>H�q=;��hþ�&@>k>õ�>y)>i�<��5����=@��=�}�>���<��Ľ�Ւ�By�=�{��I��"��E�6��죽�i��v&�9zC>�벽����p��<[�!3�_��>��=�Q��n�T!����c(�@�軼z�=q���T�6�)�=�L;����=0<�$f��1�d�5��= ��<:�=��Z>5�">�ͪ=���<`
=(���g�l!�V>_�=�0m?��_�'��>a����G4?Ռ�<�Tx>�K�;Y��=0p��S���Ϯ�ϽʽS�m�K&�<�s�=z�=�<�<���u��>OV�=��F>�q�=�-n;�&������Ί��3�==�=��	>�S�>$rc=M���hy�%}?>�L
?Q�ټ�ܫ�s��<����P_�?ur>��u=���=�}��M=��]�rm���
�=Ca ��=`D�;�/�=�>�=�=s`��<]-�>S�O>��H���-�."<��?ԫ�rU�/r=���j�w�+�����R���Bi��/�c��=�]==�;;U����I=�9n=�҄�^8u���a=i��=�&u>��*<�3Q�AD��L�f����"��F�����>؋�=y@��1���6�Y��Ud�J?��?�<t�	=���;��_���h�����R��=j�d�=<�=Kӻ
{��<�����<2� =�*�=��̻"*_<�DD=��<;�X=֮��$�=��>3
|=�3$��K<�}@�qnM=/�c�؜C=�h�<�ٞ<�.:�p���=�lG=��=w���{+�<WP=���>�
=�����
���<T<���u�+�<f�W<��3�-�S;�E=�]<VuD<�g�;���<o,<��]�[�<5Ž�8h�ֻŋ=ɱG������<O3�<��;	��9�h���v\�6%� ��L,G�$��<��3<\>|>te[������
�F�~���s�q�=7����ȼF��!��?�H=��&��q����u�=�\8>��$�#������&Tl;5�ͼ�6�=4]i=�ac�y2���c@��:l=Ji�=cp�<�:)=,�b=&.��o� C�=�����<�3>�/˼A#>�(Q>��<$�=>�o>3u=FE <Ē�;w�;�����*;�౼jI��Ǟ��)����V>�K�]�?��E=�6ļk�	<ˏͽ�b��7d��\�Dr��X�*�3�<�٫<�h�<}W�j�=���g>����>�՛<_|=$=<��:w��9nߵ���*=��ݽEs�=4Q�=n���$1=ooA=�F9<�����?��^>�_��o�;��>�/��m�F�/�Ļ�
*<�<���߼F3��y�k�[���=9�<A��3b7�{������;��<v5x��⽼���f�q�4K�_��<r@��H��#���=}�Խ�'��a!"��|���;�s�<�d��)��_b��vm=�=I��6+��	r��S�.�NG��E�"{�]
�<�O#>Q��=Άp��=���ƟJ=�[#��\^�wZ=[��:�I=�=ۼ;�o��=�7/�nt�=8��-��ѯ�9��<���>nI�����s�<�'����<��>]��(��=�����a�=�
�>?��<4x4���?=Z����~����<�1�3=?�x~<��ͼX����Խ
?���z�>�YǼU���FB�<�O㽼����r���6=j�J=��Q>�m��l��=Փ���������( ;�\S>���<�����=ۘ��m���a�����<O��*�J�	���#�>\��<�ڽ�Wq�g����W�=}��>�{��I�>�D��\�;¢���M/��0}<�I]=T�<
<C�4=��=�{>�7<>���K%^>��~���;�ފ���>�M.?8Q9<v�4<[Jk;J�żeֿ;ۃ�$��>�>U�v=��<�(�	�=$	>�͢�<�	�ɽ>bh]�)"->�|<$*�=��[���R=���-<A
�y �ޓ�=pĪ����#�����>O�3>i�>��	>Y��=� ��c1���<^����={"M<(|��<�<`�3>s�1ޒ<��u>&>pι>��f=�a�:XŻ��_�>�q�����G�9��c-�oCڽ�T:=W(=��=��<2�x�;�lh�۴�=���=��=�7"��Ӗ��GT��:����ƽ��=g����>ⷦ�x�~��} =C�>ۗȾ�JY>4���3>�#�=���<���!W���<=V�>�,�~��?
��<g!��rK�<�I/���x=,��=���ê>�f����X�=�R>v�x��	�<��>�!�1 =.�Ȩ�6�=vO`=`�5=���>��=��>F�?s+==��������_�i(��O��;t�/=��R?y�`�F�z�ֻ��
Ǌ��{>�����	=�%�
�;_I�:�=����Έh<٘����D�U`=�G�>�Q< ��<[���w��>�s<��f�%"K����;��=�m�=ߤ�=���=�
<����9���ý�))>��n<(��='���_0�p��<gD����?�����l4���?�L��@���-����>y�j��i�=�!��3�.=�Ul=zE����=O��>��_=����w�	>�'B��~6> ��=���T�[�U=�Wʽ׈U ,����/�<YrU<L?�=���_-ڽ��K�<��=�B�T���6y>��(�[;'�->��-�=n	�>��k��_����>����n7#���=��F��L�<�b����> 6��ca��PZ�>1��Qb��X��k�=��f�'o�=��P>�=�lI�
�>8=���4x=<��E�O;�:=�)�<�\�'�>�7=[��>���g�<��;>�;->��(<.嫾E>t���~����g<�1��8߾��ƾk���
=ʳ,�*2V>�=>$�%b��>�瀿��i<n���2��=~G�>+��:[�=��y��膾�,�g=�0�<�z>К;�`>W�X>�����6<�,ҽ�l��w����;V$&I?sr���ڠ>~���>g<�?J�>c�;��
��Mp���=}���A	;�ab�6���=A+���R=y-��ؽ��\=������<QR˾�������5��nĨ�`�u�}�U��SQ<�\3��)�>_�>��zq�R�1�@')��$r�� ����w"�I!�V�����ܶ� U�!_�k��P�!lє��q�;�����a"R�/"v����>"�Ij 1p�O�!�e� �נ7"C&M��9���9"i�|��R�!jZq!�V"��B���=!�k J�h��r!�5�]�c��+gp"�+���! ̺�Fy��r#��A���s�!�� ��.!�ܓ���!�k,!)9!`�0!
����� �.B��!4�!V�Š��� ��� t�3��o�"6>��n��K��!SU5�G8 �C���Bm��	_�!.Ձ!Π	�}�އ�$�L!��� 5�D?�#`h"zD^ 9΀��̯���p��q!�m�y�|�07$!�AA�?��䶠!|���!��� ���ĳ":��fඟ��������¡�`ǡm����
7!�"�A��PD!9b"V^��q�"�$,"�6�Aw. �d$!�7�9�"�i�  /k���ԡ���.z���i"�I"ݥ�"��"��"���<?/`�>O�б��)�1>�1P��>5�/�K<������u=�)%>��=��0=��%��x�s���T��C0;��֍��{j���9> uD=`=�
�B9C�R�*=G�=k��o���WA/��j(�R��H�</���ɑ���?w>�4����=���=�;:�P�e��=g|��[��⣘;"󨼕Ԙ=��E=Ѽ�<(�='^��ء>��?�^����P'�z�� "�M����ʼ��ʻ� u<89�=
~��Mh#_��Fo׽sZ�M���j��Ap#>�a���
�<=<������H��T1ǽ��A�㈒>��>��P>'�8��>��u"|�p6�<��k>T����Y�Z���M!�=�`2<u��<d���<>Y=�����=X��<Žj<_s���C�9Ջ��F ��U�>'�<dP.=�EW=D��;?����r�u�<��?���1��7�μ�������<�)�<o�X�0�������$���f�s�>D��5���=c�Q��ן�_a= =F=v��<{+#<y�����<<���.���r ��*��]�=�)ֽ{�����h��K�#�:��j� =����8��@�>�I�=W�k��]
�:!��>��<[�V>���<�G�O��
��=a�?�}�ݼ�"��j�O=ӛ��)p��ƭ�Z抽˞��}�>��u:�=;�j�&=��<(y%?��������K�>8�⼙�;<?y=����y̽�H�=��R�ga��&%>�}p����u7���Ō=�ȤZ�;����# =�]���r=u��=D􎼵��=�r�>�7�GI-����sD��o��b� ><�X<��N=v,z=}�޾[��;gq��y�y�7#��=[ޟ��3�=.�=l�*=�<�^a�-�=���<�:�>�U�ն��T?Te��A�=��F�
>���zѽ "�cR�<�(����E=^��=UG>��=��:��;m�:�@RԾ��>��<�Ն<\A�<ç�������2<��q���Z�	=�]
��̾-<q훻�{��!,?�#/=�{�>-<��.?ƣj>?�I8� @�	&>:3f������>��u��S����J��H�<x^V=�o�;��޼e�;�K�����J�����`�%�	>]����
��	Q�8H����>�a?��>`@O<iϗ�F]*��L4��X�>F��=����W��:�%��lg=5��<�n=�G�<ޝg�Z~�>����,(`�؛�<ĸ,;.�,���ټ*�S�2e���Q���@�&y�=Á#�7=a�=-�<tW(���="H�oa<�����;b{<$۽6>�`(���(=?�����ǻ,{�=��g�㞞�4�=Ĕ�=*Yp>���}�==kѫ=�*�%�=#�1=��o��R�=la�~�>���	�>y?��0���U���->+Y�>F���	QC?"���gL��z�=�e��R�=��U?��q�E{K��b^=hW���>ۮ�:2(<�p�=3Ҿ!����@�h�� x��>G4k�LS�,�����r� ��'F=ƌ,�	��<8���{8���d=Hy2<��>��o�=j��9I">�j��s{>0 
���=_���
=4��=+��3�;�At=$h�<�t<&�o=%
�B�s=">MU�l�=�������޾?�l���?�����z=�閼7W4=Ԅ+=KN)=������ �c�9=@���=��X�)%�;e��<�F��R�=�H��N=mt!<�H���<��>P1a�h��<8l6�g�d;T>-=��'=��R�򂐾����E1��go<�wS=�>��)<�<�WT<H��=�*���Kr�^+�<fK�:�A��#
�>߉h=0'2=/��< S<kTؽ��'�Y\�#dAc>|<g{�<��=qWм�>ٞ�>����=���=�v�<�^���U<�Ĵ>�ŕ=Ы�=�dA�Ӧ�?��?s�>�=��qH>�/��?���bT=,���b9=/�h�>��~=�]�;.2,;���?��U��(�<v*v!NH� ��=w���?�=h����9=��_9�AS=r�����=b���u�>w㌺�4�=��`� B��Y�=O��<{ =p�P��V
>;p/# �<,b#����<�}�>M��=��?��B<�ᓽ�:�=q��>#`���c����<�c�������<?4�;K�^��8��H=ƺ=����*�|"�>g�~�Գ��T}�=�Aj<��L���=𾎽\�|��Mm=�U8���k=�2�;�>��к��9�J1F=�<K8����1;�&k=�Y��4>=S�$� .=S���%$L=�C�s>k����$�� ��
�R=�������.���h=������s=e]�=R>�o�J>�H<<t�����>�� =u�.��j�=�Ė>@��Ko�>
@�=؏;���=��|=��V=�~�<�>p=zӨ�Ɉ߼f<ٿ���<q��;�3��>�:W<npL��>$�e�>�h�=��1>fɼ��$�(殽�%��e��<���=$�=Z~N=ϻ��������G�������X&��W<
]�=���R%<a��$�=e���r">Q��|=��
<&R�=�{2>idK=H55�� 8����Jм
`��	0=�I{�g�l=l,׽�W����-���<a�y?
�lY�A��=��� y�<EԼ��><sr=g^�=<�����J6	=q�8<IXh���I}t=C�a�wk�=��1�P��=�'E����7�p<�Rv�<�.<����=X���ףg=��;�3�Ծ�Y������|8:]�(���R=
:�$L�;�<u>�=D=�舽��;:H�VHe������9���~>!G��PY=s

�
�9���<��>[���m�< ̗��=�>;^8=�(��la����=d̫�x��=�B>�^N=~1޽lS�=ԯ�=<�����<��\<�<���P�20>��o���=�͋��I_=��=c7<���=���>'�>�nd�>ȝ<�y|=T ҽ���=t����_����=���.�ܼnb�<�v   ʳ=�+�=_R�=�I�Y�b��8"���:%=��@�=�H_�=	��4$�Da�=o���������<!+>�d�=�}H���	>���Uה��C�<Y�>��%=Ja>���<�>:9�<2^�"��=5,d=P�=���=շ�������=f�,���۽�2?��>bO���:=*P<�ȼ<^|>�o�m�J;,�K�m�q=�Ó�-%\=tIP�ƾ$�
E~=�/��߼$HϽ�
>4�D��0���ؽ��Q��a��1ȼ��i<{���X<��
�줕��=Vj<@l��6��D>粼��h8=�tϾ
��<��O��|��\��<~V�<�f��~I=�<���ɽgeԾ�D�n�L��ow>Ob�6r����z>�	>�w�=C��8T�<R@=/Y=^
�=��|��!�����=�*S=oM�<
����ƽ��<e��=��>Ȼ׽>O�������>}����G�>uA�����&�()Q=�P>[f�US�:��w>Š��U�� S�<nA� �]�>��h��>����<��;���
��܀=T�!��d�<�a�($?ds	�0P<��׻w�켋��WY��c��*���k���c�<@�K�ݶ�;��=��I���1�D��>j�;���C� ���e�j탽b>�B��WŽ�v�������Z�g��=�8V<���=��p6 =��Ͼ�==cT=�K����r�8�>�o���p����>��Ѽ4��;,?�4�ڵ传��<ޠu���>*�>e�a�-��<����^U�1k1����<�6�<�}���^=�~<ܸ�=��0��.�Yv|=@cM��|<=V��=M�Ͻ&a�=��^�{Q3>�.�> �>�U3�n�<�m�+��#�=���<�^$���e���+r=�#��3���Ş�ī�=��潺R�<��9?s��urc<Dp?M#$����`ʽG�:ec-=B������񳟽@"���:��u��F>��;@F��m��Q����	<��[>�i��I�*[4=� ������<�j��bu��gC�� >�\�>� =�?=[V<y����N��1��<?����B>>�!��s<>r>��u��=ժ���zT���࣠�����9��"O�>(�;���͵T=����ރԼ��=L�=�`���%>�T)�&�U�ͽZ=��6>f�\?�l���G��d��F��B�>=���v_@��+��r~<`B����SY����=���<�D�>����>
��=a��;;�P����\����gƟ<[�E�����M:<�D���X>�ά=���:�!�ų{=3����K<�����:���>�ܽ�!��야���<dl�=��S��2����=�+��hC������y�>C,�0sw=X"m>�՜�M)�=ݻϼzB=��=���<�͝���1=c-�^�=U�< �>緦>�F�=+Q�<��G��P�=�I���J�=��>�%>M�?�^޽c̻��=@��b>���=�4	��Y���>�A?z
=)�s!��=p�>	#���>
Q��b�<���=�K=��!>�M3�q��x������
c>��>�O=/Q=?�>��L�:�"��̛=8]2#}�-�Ic��Z�H=��>�m�<�w�>��'=I���Ss��,sM=�V>����k==]��PA���O=*%���k=��R�n�=\#��1=��P=�O>Z�=P@�=�z�=�����C=�A�=*��;�]$�n=
�i=�ѯ>n��h>߀=T��=@(=�ߢ�锳�O�E�"�=7��;+�+>��%=��>i3F>	`=0c�2&��彉�	��߱�`��<��
<��K=Ka���x
��� =43�<
��<d\H>�h�>��y�<H?��;<�za#���<�>�L޼�"'�t�=����L�=�ǡ�뤬=\yd���m�e�=�Z�5]�;�r=���p�=��[a?�צ�w��<񎆽=���(��>R0@��bq>4���ݾ��G���<�K��� �:ɖ=24�<��<�n� � �鬥<����4��M=j'\=(�	�M�>;�&���B��� =  <��M�ݼ�\�>t༶��<��S���'> \�=�
�<:[գ��G��Vz��F��q^�g">�2<���Z�=�hǼ�K��o�۽z�8�"�4>E���^����=��_�W�F=�e6��[q=�[�]�=��=�����U�>�1>|���0�>̔���=��1>�>s�Խs�t=	�W���ʽ��G>ji����<�(>*�^�yG&<��Һ턀;j�>т��>���Ѫ>�ap�O�۽fCý���=�J۾]D�Mr �k���xd>�����]'����={�>��c����=GN@<�N������U>z8>�$���ز=^�K�mu�;RwT>�'�<�꽔.�=���4�Ż\B�y��<ݜ�<�U��jN~>�暽���>�G��x��=I�����k�ؖ�>:mb=���=ňw�J���=6վ�%���N
>#��"��<F72<��>���=���=��B����=�>*
dtype0
�
<FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/weights/readIdentity7FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/weights*
T0*J
_class@
><loc:@FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/weights
�
GFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/convolutionConv2DAFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_depthwise/Relu6<FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/weights/read*
use_cudnn_on_gpu(*
strides
*
T0*
paddingSAME*
data_formatNHWC
�
>FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/betaConst*
dtype0*�
value�B��"��+@�f�;@R��?c��>;;�?%��?���?M�x?" @�S@�s@a�?��?�@���VF�?�
@�䀿�����'��[�@��?r��?��T@�x�?N�?��?��|?�P?��?^@[�Jk�?���?19�?��@`@�Q��E�?���?�A�>�@nT?�b@��@?��@���?i�@/@����I2@�c�?��!?���?��?�i�@nj
@Zd@o�=?��@S��?y��?]_)@A�@d@%��?�p��=�㿷�@��@�!h@)�'@Q-�O�e@pq@�k@sQ&@�G�?N�@�&I��J2@c�?���>
-; ��wH>s@eQ�?�Z>"/�=�@���i>`�A?���?�<	�g�?��?
�d@N3B@{;D@��@vG@�vY��7@a�@u�
@�H�?!�@��@�ے=�z|�}��@I��?dLz@ώ@�� @�@��o?�r�?1��94ƾ�$%@G���
@.�?��?���W��?��?
�
CFeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/beta/readIdentity>FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/beta*Q
_classG
ECloc:@FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/beta*
T0
�
?FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/gammaConst*
dtype0*�
value�B��"��:@���?q
�?7w�?̠�?zS ?�H�?���@�^*?#��?�Aa?�Py?#C�?�OR?f�?� ?9�?�]U@4�@�TH>`}O?�S�?��J?�d:?}��?�)?��t?^�@�v�?���?1��?2z�?�}?f͔?�o�?�?v?�_�?]�,?)�U?���?f$�?R�?�e�?Y�M?³�? ��?��?��?L��?9-?)�@�ڛ?��?�VQ?I�~?�a*?���?WM?�#w?hXK?/�@��@?C�:?�̀?s1�?�E@aq�>�r9?Es?���?f�?��?j��?.�@ �?~bo?Y��?�]S?*<�?6�<?�8?�"�?�jq?+��?�t@]OX?$��?�[�?�)�?E�>���?�u�?]i�?���?&ª?�^�?{6�?�}J?z_@�-i?���? =�?hS�?��S?��O?;��?�!g?�I-@��#@��?�\�?;�?�Q�?q��?� X?]�{?O�@]sz?��@�m�?76?M]�?�N?�˾?<��?�oR>�4�?vV?
�
DFeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/gamma/readIdentity?FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/gamma*R
_classH
FDloc:@FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/gamma*
T0
�
EFeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/moving_meanConst*
dtype0*�
value�B��"��`�����?�K��@0��� �M���8@cb�@O@��@aW<?M��@41@V�ƿƣ���@x����iC@��@�ۢ�G�οt��m���$��?���@9�@����k���v���W�@B�?�Hɏ�!�W��x:��ԥ>^����4�uVA�;AL��@)�*@
��XCq��}O?4�@�0�@�ba����>�ux�;J�?�<s@�6)==`�=3���Al��y ��϶�?�A���J�gI��I� �}�?�H*��d���m����y�r?�+p��=?l�f>@�n�?��?>p�R��?�F���M��x?�?���?�}�@q��gg�@�*A�ʆ>�L�?`�@�m?Y�@:�%��@7��@9�@E���6@�A����@A���7�@���?�)W��|@Un�?��I�a�s�c�U�e�S�@3_��������?#����a��T�@Ƭ���?&o������G������(�>̳��*�u�pڿh)��b^�cɁ@FJ��
�
JFeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/moving_mean/readIdentityEFeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/moving_mean*X
_classN
LJloc:@FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/moving_mean*
T0
�
IFeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/moving_varianceConst*�
value�B��"�͈9@�Qo?~&�?8f�?��?�?��`?!�X@W�?I�?�G?>Bp@�j�?�6?@�@u͒?X��@FO�@O]�@Ȭ���@�7�?/�-@��!?�
@�v?V߀@��?p@V @v�
@g�@��6@a@�X@(Z�?�ʫ?&/@*��?�g�?ۿ�>e�C@�}�@wY�?�TA�̗?h7@#P�?"�?�g�@[��?�?�f�?�^@;u�@	ӯ?���@��?��@��?�T2?�s�@Q��@��+@z}?D_@�jT
��@��:@eF�?^�?�!@ض�?5�1?�l?X|�@~d@ݯ\?��?�ߜ@r�%@}_�?N�?�E@nÌ@��@ZSZ?��?J��? e&���?H:�?���?��@��:@tsn@��t@��@bM�@.�P@.]y@g�?�;q@��=@Q�z@ �S?<5@��q@5�@�V�?���?8U�@��2?l��@�c@/?�q�?u��@)@�K�?b�@�n�?
�@8�@�NI?AJP�7�?(�@*
dtype0
�
NFeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/moving_variance/readIdentityIFeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/moving_variance*
T0*\
_classR
PNloc:@FeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/moving_variance
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/add/yConst^FeatureExtractor/Assert/Assert*
valueB
 *o�:*
dtype0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/addAddNFeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/moving_variance/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/add/y*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/RsqrtRsqrtSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/add*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/mulMulUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/RsqrtDFeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/gamma/read*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/mul_1MulGFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/convolutionSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/mul*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/mul_2MulJFeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/moving_mean/readSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/mul*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/subSubCFeatureExtractor/MobilenetV1/Conv2d_2_pointwise/BatchNorm/beta/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/mul_2*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/add_1AddUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/mul_1SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/sub*
T0
�
AFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/Relu6Relu6UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/BatchNorm/batchnorm/add_1*
T0
�$
AFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/depthwise_weightsConst*
dtype0*�$
value�$B�$�"�$O�=�޽$*?;֢�F��>�0t>�
��n��=\��=߼���>��>�>>=�>?k�b��^�<��?a9>B�[<j^j6o|���'=��F>{�?u���i�>ȕ��O�=�佁�ڻ�\�<n�+>%w�>-�?n+�>��=46>�nG�>�`���������Q>GmC�����~>�����Z`���~<R�H��0���BV���վ��=
fj��I&�A�,>'<?���8�-4?.-j?ф|��>�>�H?|>�#'��������5v���x<���=4ʈ>'Ɨ��Z���Cڽ�W6>���>_B��&}>ٍ��e<t�Qdo=	z��9�T=��(>=Np>5W��a^Ѽ��=�*�;t}�ƞ<�
rA>Y�O>Z��=_"����c>O�S>�㼾�^a����vK���S�����>,� �N.��b�	;�(��r	�i����>�Ϗ�x_@>WҒ���<�e>o�Ӿ��j�:̗��lҽb�}���`���M6��sA>��6�A�����>lg �>��o{
>�b>e5����=ٔ�~(_=8vs��dT>����L�EyK?��?&8>
0�>���?p�e���A>�U7�@��>憾�Rf=oO/�R/=z�"?^֤�n�m=y�M>��=�z��
Og��^�>Ȟ���(T?�ɽ�*�=e���>�ͽb�?��ܽ��̿��?dӻ>�	?ے>�5Q?H?#>>�R=Rj�����>x7�=��4?�9,>�hx�vH@PFf� �I��Q5�8�>��m����?.�N�=�`ǐ�@��5C��<y�Z���>����/Y���1-���>>v|Y?>f>�J��31?����п�v�����g=ʀ�o�H> �)��b��Z��=�>G�(��5�d齿|.?������>�=Hp��>�?xz�)�ܽRcR�nZ�$��$n>6<>�&��>�>B���)�x���֡>��=��@�傥��N��[BN�/��>�Nz�"��>;aO���=Hο�d���[>��>�3@>�47]�Ռ�W��=�U�������>��F>���Z_a>� -�DQ<>cC�>��M>�٫��Et=y�z=�Ὄ���|,>#��=D.ٽ�;7F-�����=�sw�Jʾ�ݖX���4>>�S�S>�OC��)����=W�?Ʀ����6��g>(+/=i��̽a�<�_�>�;�C>4}I��:�9T9>�����(�^�
>�`{�$7�>_�-����_U��Y��>i�?jý�h�>���o����A���ǘ�B���]�>�n>�	����ܣ)���(=d����F���+�݀��\t��F���N�k~��Wak�-�=lS	���&��&�=am��K�=ʼ<�1(>�D�>��oN=@:�=�C��-<�c>�d#>�->�o�/!�>H�=`R�>�x�=����M�>LW=�K��΁>� G���n��%��O�[��F�=�!�=ݗ�=g�L>�g{>�m�=@�=_�>��l��R̾�槽ey��L�3ˑ�A�!��y/=�"	=�e7�Q��k�����>��=Q��=$j">��=�g? �?w͇=�����[�>�Օ��a��V�>�_
=���>��E��c>J)�=�Y6�K�=���֝?e�1�v�#�r�Ӿ��L=7k9>��(�fɼ8�
�[s|?��m����6�~��}���l�>�rW��t�>���=5�C;�e��3��<H���u:>�>?O���C�=�\�=6������">���=�S�����FPM?)�6���r�
l�?R.������y�?w*��y�o?~4�>�燼�977�%O��ܾ�H�=֛f��&���.���ӡ�m:A�V��?W��>��ǽ9o۽�7==�'��-��ژ>P����y=�����y��= ��;�d��'�B��I�&
?-�W=�
�=
u��L4���=�˾3�<?ZC^�"֫=;�?��o���>��>���=���.�ۼ@�i=y5�<�|�d�@>��¼Ԡo�O1?K�ӽ�K=�o���t|>�0�=u��(>҂	>?f����68����?��b��F?��1���.���>oM�����(�e?F�޾ղP��_?����ǀ�0&j���F?M�Q��=�M���>�V?�
�6�ː=jqS�K1k��j�>�ɬ?x���?�
��8U�?��a?���IH��7?�j,�4���OY��R��>>���:?%�?�d�������<�!0�$�l꿻���?C�j�'.?����f �?l}�=^s��
����>�4��=���2�?��&���I=�,?�/�<T/漚j;�3V�>�1r?�8.A�Q�0��4_��6?M+����?*?2"Y�{������?�f��彁��>��*�qP?�,�>��(�>��O�>Gxi?�?�3�0��7�w
� yL���u��$�>wh�?�-�?:���oc��Ē�J�>z��J
?�A���~�=���?��=���0>�2�>KIG���>~�D��O�?��$��~V�ㆿ<پz
�?"�?@��4�>4�=@�ɽh��?� !?��B��Y�6a�3?n� ��n�<�q=DD�>,�J�珓�H��<E��dټ1��^��>f�нH�=v�a�o�Ҽǿ?I�B=�C�>d>S=��Y7�Y�=���<댘�LZ�>��V<�=w�B+ӽ��={������<�(��>�>��	�3Q*?����/�	E��M����� O=���=�e2�M�s�/��� ��>Cy���?�4_���>�3�?4���R�Q<�n�=]�H���}?��/=��ӽ�)o���߿6��gw���?���t�����@�Z�ӽ��4�����ٞ��M�=>�]�N��Iơ�B�\�3�:�Av��7�\>9��
-��~7���=�м�ķ�H?�;a&G>�?.�e��?�=�+>N��7�O8��^@>Q
?��=�\>7+C��:�����?�f�������z�?�kٻd7w�;TZ?S��>���>�� >י�>/=�k�=��=�'$�Ȁ?�v=��;j���&��`��ɂ=��D>�xX=KI�"[9�ݢ�<JS=<7S�����@?S�>��𼢢l��(?/���5(�>�ʑ�R����=+��>�/=o���=��F�WD�� �95(�ڭ=���l�\4}j�>O��=��=S���.�m`=K��;�B>j<��8)���=��K>w�r�I3�AJ�Fm>5'>�(�M��^'�@\�>���>���>{�*?��U�·>�}=���MֽLx]��h�ab���5�>Gj>�;S?Q�q�g|k>
U5�C���?Μ`�aWU�-6/>����h^I>τǽ�-�%l7%�s=�O�=n�Z������y�����祿�����3_>C�����?<�G#��oZ>�(=���慺=Oٽ�F>s�Ծ1������=��E=��ն}<�N���B>�bg��Vþ,
>�ƽ1���	��=��>�&콌������=.;W�F����a��:L>ſ%��5<!�=�I�=~�m>����=�=�(]>
Jh�t�?��r�cU�P�
���D>gx������Ȍ<'<(�
6M)A��⟾���<��⽖��>k>�P�>��c�}��>(	��3�<��x>́=gܺ�2�>3��i ~���~>���,҈���;®�6@��?��򙹼�)=	����&>KB�=�V=��:�� �Jѭ=~�����>�T���k��W��;[/���<�^���Ӑ�dM����=S��?"Zl=".?����{S޾C��σ>�x�=��N����t�>W��V쵻#{��r��u�����c?�	N>�.(=!y�=�(>��	?X�;ľ��Cd<C�="�R=��˽Y�=��i>�2��=W>e��7!¾��]>+nB��Ұ?YS
>�O��~=�����s�>K�5=����~>^���b�6Qkv=˳����0�!�u�g>u[����H����<���(��>�ǐ�,$1�)�!�iڗ=U��u�R>'��?͟㽭G�<��^=�\����	�,����S�>��>f���>��������k>4�?����r�=
�0=`�0>�uT6��Ľo#��E�>	�<�>>�9m��+==�,�+@콣{Z�*�n=�ʑ�wk�3?>d#=v�(>*�4,�������>�2p��ص6A�4>"��=M>'����<����=l� =S��=�Y��*�y|r="x�=�Մ>=�> 6��t��=}�����F�o��\g��r�>�/^>��,?5:����=p�i>N�O���1�c����P>H��MP����=ݷ��v�i>��������F��]���=���[���fȾ��w=mg�<�5���tS���=�/�<v�;=o|�=f�g�@�U�m&��� r�ߏ��s�!�O�ֽw�0>����*����=3�Y>�5�=���>������<�R�<�!�5o�=^$�r=>8�ýE��AUc>YO=�"�>�[!>m��Q1>�����e�}��=�ꊾ��<�=�=@8�l�=aoc=�D=��{>�g�=�=§+>0�=.�K��b0�r�=���齗$>/ח�C;�8�&��X-=U�,�l���Z>
�
FFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/depthwise_weights/readIdentityAFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/depthwise_weights*
T0*T
_classJ
HFloc:@FeatureExtractor/MobilenetV1/Conv2d_3_depthwise/depthwise_weights
�
EFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/depthwiseDepthwiseConv2dNativeAFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_2_pointwise/Relu6FFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/depthwise_weights/read*
strides
*
T0*
paddingSAME*
data_formatNHWC
�
>FeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/betaConst*�
value�B��"��~�@z�����J@�4@��t@Q�����?�O?
y����9@�׽���?U~��!��M���2
>�%�?��/@��7��m���C�=/�@C�6�x��ra@���9K�=��@���>��&?Φ�@��'@F�q@W@�?��ʾ��¿^�i�P�@���?XR@p�,?��c@��>��?h�f@�@�{�>��̼�#�??����0?T'�@�0�>�ڏ>5�!@�sI����>+pھ�u�>�/�>��O�����i@s���'�>@g?��ѿ������徇�8��E�=ْ#@�+@�K�=�a��3
�?fW�@z�.K@����D��54G>xY�>|k@�彾�T@f��>Z?s��@������@ (�?��n�?��@��Q�r㔾M!�@��ܽx���b��>w��%�!J�z`�>�T�=�d½gо�p@0��>U��<�![@�d����?}'8@����Ǆ?�d*@�F�?�x�Yb��,݅��E-@����X��?Qk��u/@+�@*
dtype0
�
CFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/beta/readIdentity>FeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/beta*
T0*Q
_classG
ECloc:@FeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/beta
�
?FeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/gammaConst*�
value�B��"��H?�O�?8W[?�0f?yۢ?)��?Q�?f��?���?.
^?h��?	3�?��?m�?*��?
��?��@�>�?�U�?pE?��@�\?}��?�Y�?Lg?�3�?T� @AĻ?��P?ƣ?��%?��w?�c�?�g�?�}�?�"@�w+?��h?IP\?��R?_
�?��-?��?%�?�X�?��?!�?Z�?_ #?A�/@��?��?eL`?���?�n:@��?�@"@�#^?�I@�l�?���?q�0@am�@^7�?vW�?X�S?�a?���?���?ݱ�?��?x�?�s?�?�?�ra@�8�?Hx�?��?ӛ[@6�?c�J?�y?amO?�	�?�\@T��?̘/?%�O?^z�?�.O?���?��?���?5�N?t�?��@�9@9�?_��?�ľ?o؈?��?��@(��?5��?�[�?;��?
�[?b�
?��?	K�?`W�?L�?� M?��?�(�?/��?}�?,LR?�]a@%	@�f{?���?��?��Q??�S?ѫ�?*
dtype0
�
DFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/gamma/readIdentity?FeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/gamma*
T0*R
_classH
FDloc:@FeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/gamma
�
EFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/moving_meanConst*�
value�B��"�q�|���B>��j?�^>�%ɽK�c���&�h��?�����g?0n=ɻ��+��=��@���M>y�?�1�=�Q辏&?�w��Q=���5�܎=��L?��
?3m�e�d�c�
?_�?�\��_�>�\g=�N��Ɖ��ֲ��X�=�x&�sd�?�xR��2�<�������=WK>R۪��/�Ɉ�>�r�!�;>m������>鐛=*B�/.޾���=?���:��d<ټ����&��`c���2=�܁=�"����=Zv�>5Q��T���� ���޿=
�=+����Z�Ե+?	��u5�<��>+�]��W��\��=N�p�=��>:�>6����?�U�<���3T�>*Ȳ����#t�`a;�`���7�=��{?]#�(��=�ݙ<P:�=![=���=���:�!�<)@Y�a�G�─>#�;���;�e�h<>K���-_�B�9�9ߩ�]����2���>�+�?��6��~�>*Ty=����@?`G?_����\�p\�y.<*
dtype0
�
JFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/moving_mean/readIdentityEFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/moving_mean*
T0*X
_classN
LJloc:@FeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/moving_mean
�
IFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/moving_varianceConst*�
value�B��"�0�>r�@Ża?�q�>%3?��7?a\\?m@6rC>��5?�ې>ÆO?b?�'�>nNq>O1>�� @�W-?��?�=��H�?��P?�&?Ս�>�� ?<{�>��>\:�?��T?��A?�I�>k)?��!?|(?�?�?\6�>DK>�m	?��?��>�|?.8�>�k@�~4?��?�tt?�+?g��>T4s>ߍ�?�@�4�>Ä�>"}�>>`@@��?�ݙ@�=�.b@bĜ>��@�;�?G9@)�>S?�g*?���,��>}3:?soW?:�?9O<>>��?O��?���>�2�?M�o?y�]?募<LB�?
>��r>X� >Igf>z	�>
�?t#�?���>�>���=�>Ҷ_?�d?P�>gu?�>�g�?��G@(�@>7Y??��?��=���?�Gq?Y��>S�*?�қ?��@��?���=��G?߂1?b��?=�@�T?��?���?�S�?:?���>�݌?���>��?y�?�z�?Y`�L�?y��>*
dtype0
�
NFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/moving_variance/readIdentityIFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/moving_variance*
T0*\
_classR
PNloc:@FeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/moving_variance
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/add/yConst^FeatureExtractor/Assert/Assert*
valueB
 *o�:*
dtype0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/addAddNFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/moving_variance/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/add/y*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/RsqrtRsqrtSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/add*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/mulMulUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/RsqrtDFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/gamma/read*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/mul_1MulEFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/depthwiseSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/mul*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/mul_2MulJFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/moving_mean/readSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/mul*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/subSubCFeatureExtractor/MobilenetV1/Conv2d_3_depthwise/BatchNorm/beta/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/mul_2*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/add_1AddUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/mul_1SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/sub*
T0
�
AFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/Relu6Relu6UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/BatchNorm/batchnorm/add_1*
T0
��
7FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/weightsConst*��
value��B����"��]:>.��=�Rq>�Z�>��=Z{��Z	�=�'g��|>�6���}<�������<#�>�>`�=^F�=��a>$W���輰��>4�r)ؾ@=O�Z��Φ��=��}��;>�[�=��D���T>
@#�m>������<��>;�=���)]>���:!�~=�Z�
�< ���Y���������H�.�>��Ǽgҥ>WꝾWiy�<�3>�6L=���[ڵ>qN�=��=��\��{��N��=�#s=��咻�j��>╘�M1=C�5=����𐾃Y���<E�=�p��y	��3�>�(��n�:��'>�3�KPϽ"�=�[>�p����<Jh�>F컻��z>�Bj>Ӵw=GB�=@\>�e}���=H)����<��۾5�=��ս�
�����=C�<Ɋ>Q��=G�9=���̥=�?�W=v~��� `>��=�r�=�-J>��+����<cq����̾�4����>�>�>�u&>B�_=��-<��I���A>��)�[3��K	>
���G��oo;A��%�@>T�ν�$^���w�q�X
�=8����/�<#�=,RG�P�Q=�`���a>�T}�7���"IO��&���}M=��C=�Eh>��=Y#<H=�	_=�X�n��<��<�ȼ�����[����<c�w�\5*�.�J>*�>IP��ooʽl�=�k=���=  ��������Ž	�?����=��h�Y��=��ӽ���=�v���Z<��=�	=2��;.�S=�=��ԽX�ڽJ��r�u=��5�#(ɽ�m>���v�m��;�0����
�qNӽ�>���ߥ�Y��>�=\<l?D��<Ҥ��̹<Q�� �z��=jSj>T�r��0��_��<�׼��=3*��X>�L���`�=Jɖ�$%
�?ݽw���=`n�;��f�#Z�=�rH���<�̦<Z��r=�
<߽�p���+��|�<��<��=.��,����>���~�=�ߑ����<1�ϻ/��=��K=��_=qȩ<�sн$�I���p8>/L��tZ=g@>�	S>�0�<C�m��ȍ�UK�N]=�ڶ>v�ƽW}��~�۽��ڢ򾉲�>�~�< I3>V�=����?ҽ���j�<!�>$�l�&��d?�>�v?���</e�=N:�;fw�0D��@>>Q=��>�{9=��/=8S=�I=�|��6������%B=͂=4���9X���F��<M���6�<�QR�,�=v*��� �=z�>;�1i�o娼ؐ�{T<V��x���gk�=�3ν6����F��5����:��G����޽T�<���=�P�<U�[�r�F>0!*>�*��r�<KB����K���;D��=1��X3 <������D��%=���֝�=_�H<O��;���:f��=@C}��?�������(?��#<�v��$u��^9j�^�ͼkL�>�ҽ3f<��>]��=�X	>`��>�BD�
8>FN�;�Z�>9��{z��o>�#B�<�B<��W=s��Ma�;���=f� ;��@c}����>V�;=�N��F�<�/��þ=��ҽ��"=��.=9?������}=�^�=N�O=�dJ=FDN>/���4�@t1��FJ>K7-=���;
���(�>⨁� ֖=�9��Z2���?�!u��̑&>[ީ<~����B+���%<T�X� ��1�O�D>� ;ά��o��|w=��=�@?|��<�%(������=���q"�֭ >�p��ϫ�]�E=�ن=�ӓսl��<W� ���쐽P{��_\�_|�;trd=��>?�=!b���z��"Q<�Z�?��=��
>��=��?�6��Ŋ%��졽��];di��?ZM<��>�ɼ=�@5���T�_�='cx=��X�I-*=�@���C>�T�=81��a���
��z��h� ��8�_<���c>��ˉ=��漥�ڼ��1=��)=��&=�.�҇���潪,p����<{	<�#�=1�=�J>�����N>
9>��3�jC�<�$�=�n�j0=}
�y�[<�͆��DY���{?��t��">"�~�)��������;D�R��x=�$��h�m.�-�<h\_�2��=%�r=2���w#ݼ�9���|<6<�=�絽��l=�&]��˻̿B<@ �;��F>R�1��>�=��H=1�j=i󙽊|�<G�$>���[�J�7����<���I���M��*�<�ض��F����Y<�U��j��2<�i�<+�.<Q��<�s
��� ���4�KM<g9��#�>��<�3=L"j�\�>��~<� �")���h<�ŧ=�\�<&��<cu^�Q�Ļ6y���Ϗ<�'���7׽�/�=F�����缝W����F�F�_=�}m<9�>���=�G)�~E伛:�L�-�;?	�۠�<�KP��=F=��<`.���h���5�
Y�=���<:��;���x�a��>�=��8�=44���K-�� ��[�`���M�|�I�!_4�Ж=-���j��<�\S��=Fn�<���;$+>�I���v���� >g*��\=.bu�\�=z��<嵽L����D��[ļ'�:=D�=A$&>�v��-e�;��<ƥ&���H>�<���=y�ؽ2�������!y���̾�H
�ͫ�=?�c��rR=�6>eҡ��*�݊<=1
.=押h"j�Å���^�=��K�}���/�:>ӛQ��7>�<���=|��z�`�,��vD>�U�*��<\"E=�����ܼ=���O�ټ����:�>�TQ>//�%�&=��=dg���,=aC����NR��T�����w�=L������q����z�d�����Ҽ�=���R�o<��&���"��<�^�J�ǽ_Q�Q�@> %�A�	=�"�?kE�>)Z�S<��w=��˧���{�=T�<�ݦ�<��9�?&���E��_�+=�ao�r���ݐ>�>q��� Gq���=�o=�H�;3\ټ���<�K�<���=��7�M�>ܯ���X����K��8r>8���f�����@�7�,��[�B��<�� ��ǁ=�5#>gK�>|�Ӽ�p��&�<V_�=��4=nNU=��<��1���-�� Z=���=$~@��nK�R5�<5�<�~�d�$=J*C?{n��᜛>g�h= �v<r۵��(�ʴ� !F����r32<�^$���9�ζ� ׉�z"΢��"=EF�<Ta�����L��Bg��1�	=�b����n��%=ύ�����'�����:)�V=���>2}^=��]=5ܼk"H=��I��&=��	=�sn<��ۼL�=$3I>�'伏X��ń=n ����,<�Ľ_#���>�l&>3�ϼX0��ż3DP�֛��ٻ< Y=��@\$>򵄽�;�3�=p��<E�@>��V=-X�=� .=��
�����e��j>�X>D�����<6N>^̢<�B=���:��9=���=mǈ���S>M����G=� �>]Q���W��ʆ
<�󈼕^�J���>'޼C���x�=�J|���;my������G0���7=�-=M�R<��=�0<^�*=UG=l���˨�y�ٽ�tP<��3>��6>}
��>;gܽN�=�.>�U�=.&�=+�5�"�<�:����>��ټ� L=,1�=�K8�Fn��`>����<F*� 9?�R�������M�6_<�!�\9����>�\
���=��;=Ϲ<��	�g%N=�D��Ox8��f�<}�p�&Ui=��<��u��s�E8���=��> @9�Y|u���ܾh�D>�<ϼ�~�����<�I��s<��~=8U@=u���#�����b=���=>�X�Րk>M����<�lT;a=�T��.��;f�j�-4���ǽ�Q=�}�`�$�C �=e.1>e6}����<(�=c��_I0���<���=�%=� ٽi�����#�:ݼx���ݓU�J��<ҭ;Qe�a�F��.�����;��\b�=�r~�Dq9���<
�6>b�=�.����z?w�g�y+�<�(v���彋8��4�*����I��/�=�������>�Xνv����K�5$@�/R�� �ù��ѯ�g�i�f��h�������<~y�;\ڨ�W*=r�=��Ƽʽ��}G�=��q=jD� ~�|~����K=�x�4�"��#Q=�!z�����V8�ͪ�	��:��2>\!������8?
g�=�#׽3��#�,���>�X<��L>�V��.F)��%�Jׂ>�M�����<D�@��s<��-=�_�;`��Z]ٽz�i=��O	\<��<f����_�6�PL�a5c�#�T��/�=DB>cB8��=#5�����=ǡ��d2���3=m�-=&�l:�L'�<���Y�4����/=��l=�2=���𕊽���p�\>���Ǵ����=C
�![�������t�Pe'=���=1��=!�#��l�zT<\�W=%�ǽlX˽�)_<%���-���R���M>�(Ӽz�>>{u��]�⽆Gm=��=��ʽ*؃=�[ὄ8�=J��=��{=y�C���ʽ����$�����؂G<�F>�Ľ� >U� �Z�����ھ��¼�݈��7���>y����1���&�[V<P?�>�p�<$=�u���C�s��� �́ʼ��=��o>١�:��=샾�&Ͻs=>nx�<�����?3˽dO&=��=�Tl���<�],��!&�,>��<�t�=��=��]�"��~�z=�>����,�<�m<ix�=���>��� �5�̾:�)�4o/��,B?���<߻�;���md=����8{=#��ܛ��J�߼3Wѽj^��m��<6�?=��ξ�[���>8>/
T���0�Es���>^}������( >�)��;k=�t̾]�=�ȧ;ŋ>�X�?��>_����_��`��;,3���L�R��8R"���=��
��Wg��	�<�4�>ֹ
>s��=>��t;fT?�䢾eM�;ϴ ;��W;x	H�&N�<OA�.Y;<;�>u�<�kf<��?�~(�A��>�ؿ�"��</ ^��\�>��U>a�<#K�XQ�=�=WA�<	w��~��<B5��^a�9��2=�L�=;�=�-���i=�`E�E��<��[���.r�<e�
���b=Șh=�=t�6�Q�->���=�/�;&�;�x>��=�u���=Q�M���:ʶ�w��=d�<	���9�"��=�{��S=�;>;�a���=a	�=�%9>ɑ���tM�6����B����=r�߽� m<�#5>�[S=�_�<pS<��3>�A�>a��<��6=���=��=�J:�rD��Is=�hS=e����X��]L��%�=���=��=�B>���e����=��������4���$�=R�>�	=d�������̆��v��=�U�=�`<���J>紳��T�����j=�����Щ>��a�	R���n=��*=�<�W�<��7>���</�=�z�;On��:�(��|���D��`��� P<3��>\=��ӽ�?�=on�����=�Ğ=">u��<Jۋ���=z�>-�=��+=�(j>�C�<e�;=����;�T��pY��=ະ|��y`�z��=�ɘ�,�;���=����Yw �<�4��A⽼"`����<��/:償>j}�>��u�=��s[��0�>!�(��js>��=�
�Tz輌2�<�A�d����<�]7e:w�Z�d��=��S�]&��:W�<�s2������0���� ��=���>U�v=s���%�=�p���)�;k���>�->d#s��=�=[���f��9��=�G/��90������|9����<|	��z�˾?�2���<<�˽��n�e�>ܼ
ӊ=���;'���.<� Z=��
�U�:Lm���t<�G=HJ�=��"�A��>�V=t˥��m�=.��� <W��4�!:��c�f$8>b�0=�M�=@�y<���? ��B��x6>
�ٵY�,���h�<mH�=�W�= ��0MX������3<�
�$^�=��<����V�̼o��<�r=�V�>IGx='e	�1|ڼ���>7�w=�}i<�?=�A���յ=(�ɽA�>�<@|��s��<�����2�*�=�����U��[ۅ=i�{<gCS���0�=���<�>��:�=��Q>�}�=��|��4�+ᨾ��<둴=LY;�í=W�����<�e�-�_=g�k=�+
�C����=TR��g�~���鼛Mn=M�ֽ�Cʽ��;>��>��O=�k޽�K�=�T�=ڄ�=��&>	����� T��2A=@+M�M�����=�:���RѼ�����DQ�U�u=m��m��T=�=)z0=�z��ߘ��$;���@���M��u+�D�=X����<�{�<���;�	Ž%[�0N�=)}�=�b+=�5�>����R�<�h�=�^ɼ��񽾠Z=�"��f
��P4=?na����"*�;�Ja�K>���(ͺ<�]��o=Ơ��
=L���"�����|c>�gE=���^��"h<ԭ
<�o(�Tiv��_��=��=�&�=����1��|J
�|>�B-��7�>ϝ��#�
=�Ik�Ss|=��k�&� =�>�=�|�;��m�C�"��<�&�y���Ru=�'��BA�@?��z>�e&�"������[�о�c1=P��ľ>x>�bɼ�HY=�����|c>����b�<*��;�s�L>� -<<̓=J�������PM�=�C/��$A=j�˼��4�7Z,;�JL����<���=�=<�'/�+�<�4������ȼ�x���%�>]a1<9��\%��8!>sf#=瀁�,ޑ</iB���$>�2�=o�1�ЮT���I�x�u=>�̽�O�*�$=:���E��=��RB�>������=)X[�H�g��	>�̟��潨5��U�i��a <�弐.>Ԭ%>��!<�H���2��o`:�ʂ=pg���&�<�S{>ax��,�.;>�n�4pe����
;�\\>&�j�P6�=m����u|��y��;�=�2U�W��=A��Qrý�z�\���bG��X��#�8�<����=M�'>�D>F��~��<�&u�	�>J�Ѿ�L�� m;����8>��l��꯻���=�ѕ=�>!���F>7�s�=�^<#Ӗ��א�L�վ�>ν��&=�>��B=N���s5��w�>�λ�s>�.>pQ��1T>��>�o$>����cԽ�q���&�=r�s���:;�_ >z'I>c��<���=��>��W>��׼���<H��|�ż6J2�u�=�>^>4>�H�=&��?�!0>�Z��e�=�vx�c, >I;��v=�6�=>�����=d����BI=Fa���=���=��q=od>���=���g��ߒ<�c�=C��IY�=�4<z>�O�T>��E�y���i�(>x뉾�䭽�B�z�Q=�B>�\�<�01>��=
;#r�<�[�=���=?�H�YT=��B�����i�F>�G>�뚽`��=�y =�>�Q�E=��>0��=J&�=*�.�i�W>�)����?=�Q�<��(�\�=����c]�<���=ߧ缠>'���>���=̐M>eص����<`쭽����
=	=ut,��I�I�ټ�{���w+<�.�(�]�f}����=6�]��������3��������<̓�=��]>v;�=��۽?Gi������-�>�ь=?P�%�2�Z�'���d<lLF��ol�ʽ��W��<D�C"��)=���`~��Ю=����<��>p#�s�>������6<Pm��[0�=-Me��!�I�;��(=��y=?p=���=���d@�MR���=a��vɾ�+m�;i���ј�%=��f���=�)������^J�WY�sH�=�ך�~��=��*���=L0�<������jF� {�>=��<^�9�Ό�����=�>��Ž�n>27�=J�)�~���:=#䀼�Q�=kN�<���=�̯�]l_�^������:��S���'D;��g�������6�d�@=x�<�ý�O������:Qm�;��ƽ�E�<Ž~ k�5
�=�	����>��<>�����$�=n�<�Q=B�$�\�<�GW��,>=�����Pk���w�GC=2R+<���
r?���X����Ҽ+���Y�����"<ܵ=�y >e)N=1W?��^�=��p��ۺy�?������gN=��� |=���;���S.+8/�<�y>jPY�����C��<����J��Y����O���P7������M<����O��҉�<�ɘ�|쏽�A��@�˻ސ�=<٭�d�7=�X�90v��o�"�C���>?ma�� Y>X��U�l���Ӽމܽ����\���ˇ�Ѕ>1�6=Z���g޼�~0>2y�>�9�&���
�����|�<����0.l=n�f�Y�h�N~�=fn�H�4=��1�G�
=�:�<Q���,�/=�7n<�=A�}=-��=�~<�:�Z�~�9�����ɾ9�,>Lq`=�a�<�z���=�yi��)�<5è=83�=��O����}==�s���n)=�8
<�8�<r.����B=�?�<�~=2�<�a��F�=m;=~2�=��=��<�������*����ɽ�qg��{�s˼�T�<��e=�	�>��;��ޔ�s����.>a:ܽ�ũ:H���Ҽ�Y��g�D2��ꧽ=�ʌ=j������}|��VN�>�j��m ��>4�?�Y�=�,=�3���
>��㖑�$�/=x!���n>R�d��n�<F��=V�>�
���>k�+=Fi���m��_�<�EP���(���>��=77q�\�ϼ��Y>]�}�h���6���X�=ݵK����;f+�=��=���>��?��C�/���%��
TR��ϒ<H������<,�{;ʵ�.�6���=�\�>Ho�|H��ü���1?&�q��JǼӀl������P�}>Y���;�=�l^��/�>*,�>�eH=���^���u�<>A� ��=Z�S��q�=Fg<&Մ<�����ս���>I��<�|���H�֥���=^ߓ��؛<�E7�ή<ȏ��u�B>%v��T�Խ�<=50�����>��=,Z۽��Ͻ���$̵>ᱱ>]��L$�>hm��*���=�4�v
o���>���<���=�{�=؅���^>�;�=u½d�ٺS)=��2=���>�.�����v�`h�����OB�>��=�_
?{����1�=ć�����|=�������>Fn�vS�#g�㽵-�=:�<�\ʾ���=V
�<�k�r廁���\�">�ĕ9ۯ��<;�����=H��PC=���=$[¾���}u>�`�=j�<�n�>��̾*B�=?�<=#�=ᚍ>U[.�?���P<��d4>/	?���>I����¼	_>C���u�=�y���.`<��>=�@�=R������>Z
�<��4=\C�>��R>z<�� �=��*���W<��X=��H����ŵ_:&ü����r����ܺ�+����<Ee�ǭ<M�ۻv$��&K=t6�=��=
�$�-b��[I'<c��@2�>��-���:�@���9�SG�9j4�ѩ�=Z��&S'�e\t�`���K�?���˾��=^b2=�X�8��p�>M�m6�"'>�#���#�7�# `s�N�$��[���Z��#�H��|�x��#����}��F��"���"�u#�b_��BB!u��#\!.�K9�"���#��#�[#��X�pL>�}򵣝aY��bu#_S����!������J$�I��i��׷U�.��-Y�#h�!z׮�
o��\:3��R.��E�w�$�V��\l�#��"L�%��J�"�Q������Ξ#��s"�ֲ#m3��Q���~΢�0e���A�p]#�1M#�n" �;#Y�#B�?$� E#픅"@x8#��u�[�Σ��{��{�"�d�!n�#XN��A/c#�V��"�������8��C#��=u��%���o#�l����$=`��.$����Qa�#v"N^�"u�����#�#P"7.; ���"j8�#U!�����e����I4#��#�t󣲨0�vK�#�<���U"�K�"�f�"�s#Aa;#W,�����#��"d�
#�γ#4�&�������:"h� ���#t����!^ژ��7<P��]�==��:;����7�:��y�%�+=�ݥ���<e�4��>������=\�>�e�=�샽t�=�W>Z�9�%#>ԇm��@ѼAF�=���d2�<�����?�>�%�K�v=/Ȣ��%�b��<�
�<�@y=����9y4�Q\U>>��>�O;��w�=Ì��n�=x��<�0q��ۭ=l���;�<퍒<^c�f����;#-]<�1�<<�>��=$�� ��;9��=R�����>�,>��1��*�=�W<Rn$�2�~=;�{��c���n軷^A��c����<����2W<=��<P����½L���dI>jG�=G<�<ɉ�8�F>���;C�*��<�g
�Qo4>��+�Eu����d>n���۹<�>(g��ɩ,<�r�MѼ2DL=�gü;N
�0���|����-}��C�� >�(�����S�����͏=SƉ�~�=��l>?u���y;���=�Ǩ��AB?�
m<�#U�f��� E=$)
��m�������6L���x=۔&>L�>��(�>�p�=[ψ<iWr�ܶ�> +(>~Ӎ=�Ђ:��"<�X/�G���â���g>�Z�=��5>*t�>��>���8�ҽ��=	��C�M=���=.��"b��<c�	=�6�z7 ��ʪ����<�!>���>�ܻ����|ۋ=yO�>ҕ��/=Yo�ƌ?L�#�ad�<fk�=b)���<ZT�=�d<�%��t=�R����F����9!)=�τ<
�)>>�齧f�~1彆��=2�<��,>�
N>IZ�<��>�e#<�H^�Dn�<[E-��ny>����o�>֖�����=&�ϼ��۽��>�z=�P��ޚ��i�=�>z��=��{A<�0�4�\�=�)�<�i�=]��=�D�[�>��D;������Iʀ=���=j�ƽ��,{���78=���=Z+Žl1>�:��B�ݏ=��=�	��d�
���l=wH >�9�=$q[?x{R=vF	����=�I�=:��=#���'=o�t>�m1��V̼�E��:H�قļ�-{<C�=N�=E�I;Kfk�Y���R߽,;����>V��Pp�=��=䆼<q霾�=��d=���7���� ��0Z�=ݡ���a >{"��>L�#��P:'8>��'��c���$>�72��=lf��;�&;����p�\=b�<=�����½~��=��=eD	�g��=�\Q�p��=�_�=7�"=��>#O�j�*����F���� ���a������=b�޾�C�=�ɼ�T�}d��19Ƚ�=g��=�r=��h�c���к콲+�L�=bۆ��I�=<y��\�f��g;i%>��=�K6<���=��= ��<貦�U�=��M�Q^1��)<=joG=m1�:��
�e�6#;�eμ��='>8��X�-��2d����<"'��=}�,�e>S�R?>xl:em��yA�<�����>�{����<x;�<���H�:=lk�<�F=�Kü/N��T�B�}��=~�
>�"b<}.�����=�<�=���<�>e鼣�ؽ�y�F�ɽ�pD>V��
�0<P%
=]�<�='��=#%�P>E>/�=��ǽ`>>�˵>���\)�dB=:�W��Ͱ<ǂ�~+���=ɰ�ۏ���DS��	�����ޱ=�y&�62j>>=F�?K�*�C<rqԽ"9>*���%:=K��=�b9=]��=��V>p;����<L��<���=��q=��ͽ��ʼ�����>�*��-�0<�f�=@�=�⵽��=q<
d��K�; M=�NY=�	�=���~�<���Z�+=�[n=��=�3�<
>-�0�C�>k)�<�ĵ�s8>��U�V6E=�I�<���⦼�(2=5?�=�<��J>l=��
=A
9=7xa�����\���9�=���=wUI�5�L=Ҫ�<�+S>2S<�:(*=l�I=5�C�k�l���B��ƽ�7�
;�<��٬=DJ)=ݘ�=׆�=X#B=������Q��=��0���<==ȼ�YW=���<�*�ApK����<�K;���=O�ɽkGļ��<T�T=�Ik�����@뽆��<܎��=>)�e
��l���?H���=Q`B=�ʌ�/kj=�����3>��ս*�l��&�=�E����;�ֱ#� �=��a=�d�������ӽ2P��+�=L�=�U�3���t^�i�ļ�#�;)j�=�D��J��F�<�B���B�ha
���[� �6=�yۻ��C>�/f�
9�� g�=,��0�o�)�E�
����a��|<��� �;��ἏY㺴��=�`��|p:���<��<L
�V�:�^�9�J��1>Ž|[R���=��.�?RW�u:u���1�<�w��Q>"�L���d=�?x�<�E��y��d�ݽ���< �ɽLr�=���<�o>��$��/$�����+=�{�E����J5<�얽C⛽;P����Ȉ�bE��A�=�&�=M{��2ֻ\F��Y*u�_�n�9j���k��:u=
O���>DL��^x:7�O>�q��3A=sA�����Q����b=����Sk=��l��9��[{=Z>�hս��(��3`��D����<�����`�>x�����ٝD<n�>P���H>u���R)>�Q�;��i�iH���������Y(>�䡼�ܬ�m�7=����{�q�����Ct�=�m?x�><�]=X����c>�Aս��=���� ��f�=<s���i۽Z8��m��=�漾|��=3����O����=��������t{7>�s7<�
��#>S7g�[�.<R�ɽ︽��#=��>�Ѽ��b��_ʼ/L���Nž'">=W����f>�)>�Hp�5@={oJ��7u��y��q%�<5���YIi��$>�t5>�
�*�<=��Y�k��;�4<���=����	O<o�(�W��#5�=ڵ���~��7ވ>�I(<�"�K|�=�ns<u-L=^+>@��=D٪=�B���<7���Z��:����*�8�!���3�";LT�<���<�ɰ��Ұ<0��~f<=xC�>��&�6�	����=�X��,)<g�T�u}�&ƼM;ػ�+c�^/�����=$������<���<�&�<�W>$~�=�z���=�R�񣢼m�8�o�=�����'�J��>�(>UM�<��A<����@;��"2�sI�=�3e��Žx�=����q��1ʰ>��j<�.���X=s���w<��@�HI�=�'W�{�7>�H8��T���<��`�^
<bd3=�:@>�G�=��"<�h�=W�ɽ܉� �)>�>�
1�^Ҟ�H4R<X�r
�N�<g�
�*+����z����1>H��<�_�8['!=��
>m�
>s�=-J8�tR�=� ���=�|��V��=�B��+p>��M�_1>!�V���l�����b>���=��D��B�i<:�<+t��g{�=����=�j�4!�>E'X>k3��\=t��=y�=-m)=y�?�;ϙ���
=j�2>{]=Ԋ�>������@\�=b�=8I�>oѽ��#=��2�_��/(�;J�w��%`��c@?�<�%?
;g���>9�����=�����<�}�>%���s��=/%���5��I�;�QZ>S5#�E�b=�C>f�=��>�0=w0�]<����<^j���U�<g�t�z]
#ٯ�=�q��E���C=扏�tq ��[=��'�Թ+����3D����Ѿ��=��@=4�ƻ^sۺ�A=��=��>��<�Zb�0?�<��=ս�=jD=J�<�U�=<J���<��=�i�R�м��[�x��ƽ(+&:�6�=��>��=�_h>e�6=�a�<0Xb:���
��=�o�� �c�/�Ӂ���K��?���1>����b��b��R;~=E�Y��->s��3Lz�A%'>�r�=M1��Ǫ);����$Z�=�ܝ=���=ӾּR����p*���罊��=)�=}O?1@¼ޛ��i00>]&%; *?X�u�!)=k��=�W=�:)�hl>�o�<�ŵ�M��HX=�+�&��<�'(?�g= ����*�>�9��ߵ=��0�[���P=�Z=I'�<��=�v�=�F���G�7�=�=�}�횺�[\=(BI=���@���7�<�
	�b=j>t2�=fgY���߾9��������>E�<\*Q���}����;�?��<�<[u	>WM�<I|�=)�|=�t�=��x��T���`=�! >���=���g=��>�V����+t�=�@=���<���f�=��)����=L/�<&'=�������;͂�t�:Ï"�Y�������	��Ⱦ��S�=,�#<&�#=����\ =������!�=�0L���0������b��lK>���|�<�	d=�dT>��9=;(>�t&��ͳ����C!=�w�=
�����=-�J���G��I�=9-=<�>���>v���+?ے>���ɽ�5��^�:ؤ5����= ,���s�:�	>ݨ�=�=&?~���e>L<r,`��7= j�x���@=oI<_�A=-���5��<���<W�]=J>�<>�<�ֽ.��>���\���
*��@.���p���@��ں��A)>�[��
\M��h���<�����Z�:5��=[�輙����i;=B%�o��=�LA�E�=�Lo=�Yg���'>e����o
<�.W�n�m<0伜�<��<=�g����T���?.=U.4�
�m�(�q��H=u��r? =OQ3� ~��^��X�:���ԟv<26ý��=��V�;oB��	=G��<���z�޼�Wp=m��4W>���=�vG>&#�=���]����n�
���eB=�!�a�G�75�bP����
���>�Z�=�x�`N��
*�(|9��=�$�=��P=��J��v=�8E<p5�E��=��������=�����&>⇳�a�";t��!�Zg�!�'>a�/�>ɨ�em=�~�E>z��	]����6=3�7����>��<�u��[=G�D� >�q�3��=�I�=
��=��Խ�ϼw��>�\=�0>��b�=|Z�=��FpI���=�����Y�}9���=���;.=��F������U���=��`=>��aMݼ��=��p=��Y>�L#>��T<��=�Q;=�&��<l�=�
�<Qȏ��ٽ�
�=�@!m�>��1>�������Jy=~�6�����uE��k�=�6�;
d��ܽ�C��!���FB�<95��׾�"/鼇��=ɝ���\�<'ʺ<�3>��X�j� >�ݯ=<�ս�t�����=�HT=��{=(�x�ʦY=�0>�k���y�=�T��Bn=�y�=���<M�;j��;et����=
�F����=�d<�c��ߍ=1��=|�8<T�=;���0=�6E>��<+GѻG�>%�#=�Y�>ՑE��~F�O۞=���=��½� �>���|�$=���<��=2 1>|
��#ƽ��4����<���X�ܨ�=w�=
���W=���\`�=�_�;Y,�>�k<_G�<�^4�F�O�,׋�j�>���<� >��>��c>)�b��8>iiF�A�r>>���^��t~��ޫ����Ѝ���.�>���=�`���]>�
�����<��>�����>��d>(�j�K�����D=�\�X��=��H����=�ͽ�Ȕ�����=|ȼ�����i��4w=%�����н��u>�� ���Y>��>Іa�S��_T��Uk��M�M�������j�T=wZ^�
(l�;�F>`�E�z�@=���<�Z��򬽏�L=J7�>�a��\D�<�Y���:>2S�d�M>ߋ�>ʐ�=W��ư>ަ_<�<�?-s�<WH2��qc<_�>R�=��/��︽�q=Ac>�+)�R���I�<a�����J��L�>� ,�^~=��C���>:ƼfF2=F��O�
��:��t��<�5�E�Ƚ	�ɽ��>ǟu��o���t�> �L=o��=��=s�<��D��Ѽ�7�����>�`���	����Q��'���Fоv^�=�Є�+>�����=
	�P�>�p,=�#���.=B[�PG�>(��=D�=�Q���p�>��>s�m>���r�+�����,��uw�}!�<5�=��t�i��a|�="��6>m��=�+>��
����>��/�=�g��s��W��=@T,���߽�"=5�H�ب?C��"Ef�>x>�-��b��o��<D0�<�S>*�+>
F=q����Å=�������T����=)=r�C7�=���y�,<����=}v+��!�=9&<�cy=k� >O�ڽ0X!>�
�=��j=>">4_����?�>��>V�T>��>9���H�;>uv
=�&�=D'=�$�>������=p�<��~=���9o��>͔9=N9(��	>���>��Ի�˛=�������n�<=s(?�Fb��=/ᅼ���
o��sN=ؾ�<�5'��-����=�O5�g���V����J=���<,�=02�=���=��;=M���!d��u=���>X6=�9�t�=�OB<�c���T>8%�
��;]�D����<0A��=�Q<rQX=����,Y,<^���i]9=r�����=���;͏}>�<�Ѭ;[��=ݽ��^^�<uW=�@�>T1��C߈�/ ?����j�>�$<�݅=.�=�4����+=����:X
�J����#>��V#��/�%Z>���t����q�=r"���=
+��Ϝ��V�����`���N>��=�:E��>=���<�
��G>A���_=�R���j=�����½�s�<��<��W��|��T,"=� ż��콣!ƾ!S�<A@�I;<>3��<H ?��>��
�
�N<���<�閼��=
B;=��<=���>�����=V�|�"*���SG�����X�~�>��ܼ�`8;N�>ZQ�<zl�n�	��)� u(��9`�S���Sd��H��#��>;�;<��-�3$��'���>ZC���Ä<��@�@=/5E=㋺=v�&�9�}=*e����м{�<�tNm=ǉ�=���<Y嶼��<*��=Ɠ�<X�6;v��=��)=��=����;o>�s�����x���1)>R��=CR=e��=�i< ��=R�7�F�=|�
��?��䲼x\ݽe7ӽ�l>���<��>?������7d_��Z�=�0>�(�=.�>v�K>�J�l�=j%=��>"VǬ���F>B9?�t�)��7s���(��
��/f�r�%>���>_&�=��>lս_c>�O��W!>I���1����� ���>aK.�镏<w�>4�ƾ̰Ƽb�c=���l��>�X��8�ʽW�T>��>��<�+9�fzp�ě�=L�s�����\p۽o�>��,;�۽�<�
w�p��4:�=zh =���>��?��R�=�U9=)�<��<�����FܼG�F���缉�,=�W��u��Aʾ�v�>$@=�dm>�#� ��<=��J�T���;��,=y51���'��!����� ^�>>\<�\����J>� 0=���<��Ƚs%=�\�<�S�=[�ü{Ɉ>�F�p��=]Ȩ��ɇ<l�i=x7<^*L�����ع���2>�fӽ�ʼ�	�Zp��<:>�4N=p�=\ӻ=¼���ȶ��J��'9O�Z~ =oǽk����;̋!��稽���=q�]��Ne=�~���u�=>� =��y>u�|�PXV��x>BS�=X!�t)���z�
��= M�=�� >��v�f�k=Ђ+�l�>M+^��]�F���'�`�YBg�YQ�o&	� �`�ɏ��dӾ�(�=���AK >��=)Z?�}[=�]A<,p�J*>��M>_c��8�=�ٌ;S�>��н��v=B�A��d�����̽� �i��=1bx���e>!�)�vX�����zɫ��Da�̫d> $<�9����R	?�YD��� =�2'��~u�As�<�����ҽ�SB��é<��<q�3�J ��yD
�6����״*>��;��y���>G<9<Y1r��������wɽia���ǻH�
����0x�=�1�<#�"�[+�����t�v�2ᚻ]���DX�h��<�_��4�E�����ų<BQc�R�U�����ݛ�_�սg�S>��=�>\�t����I=�>F�	<�(�r�ݽ5g=V���qC�)"�p�d�˾i=)8�=���;K��=le���;<��=|��;�-2={>��l��<�=;'�(=��f��=����On1>t��>&���_`=&��=w�=��߻�>���=���RT��;��x<���<��a�l=i
�-�#�v��7�����2,���=�8��ƽ�,u=VO��s��<=���}��/)�d+p=jEO�Rކ���/>�4��xft>Lb�`՜��3>�
�=3��E�=\��=�,�=�+ӽ͜��
d</���EA=�^=	j
=��	�3�<�j=u�����>\��<ߣo=�Zھ j��д����G�Mu�<y��=�Ҁ>P���n�؜u<7�b����މ�ȃ<���<�ŭ��H�{k'=RP��ծ�=�H��1
>Dp�<���>]�\=aO-��ֽM��а�>V�>��㽅�*;�#�
j��@���,r�=j\���@>:�
�4g;�t0�@0:=�|�9�~,��L�>�?�&�����=��-�!�\�n=!��>�����">�=܊w>�}8��A?��>����z�
���>��W=����J� ���=s4q�Π�"�Q�#6>���<���>2�;�%����>�ٌ=5���\6۾̦2=[����� �v8��q6
>��
=@�=vF�<���^�!���2=B�E=dߕ���|�2�A���>��������*{��iQ����*���8>g�v=S:=��=��+�<��~=\r�=�0��ۂ;N��=�$?+�
>඙�U2�=��0�w�X�b��o�[����q=
�?�&���v�;d*=��<��
>H�[�t�����N�����9<���=���<d�p��@T>�����=D�v>H��=���=�=	�!4�g�*�üƚ�d$���J-�ܵ�� ���x�0=v���Iz>�@��Y�q>j��<��d�瓢:	i�<������Ж������ 3>��ܽo��h�r��ؽ�d��V=&>#9����ߍ.�Hl����6���پa�ۼ�p����0��Y��7��P̾΋I��e��rۃ��)^>D�۽|����.>��>���-���>�⦾�~�"IvT�������=���>ς�=�?�<���"�u>v��8��TR�����N�m�P�|Q�=�d=���jS�<n&�:j@j<n�/=Z�o�d�1���'�;�ڨ=�(�=[֞>9�����ּ�_�а>w���5�=٪���bA��+Q�8Tb���N*�=��<7��>���=|*�>I���T&��h�>(8B>���!n��r�>P�+�Vh�#1t�~�?ɀ�~	-�v�)��!���ٽ�D1�p�<�����0�*�:���T�o=MX���M=�J.>�!����@�ٟ�o;�=	�#=S >Q'�94s��R�#>W�R������=�G
�:[�F�'>�]��F��;��@=�0b=�"ܻoK|��8��O�4��։����=Mz'�7>�/�'�@>nq�<8>}q�=��>�F�=�<�=�3�~�<$�>>"�4>����Y�$���/<�%�j⹾ܘ?[�>u8��Q>��:W'���Z���=��^e�;0�=1�?XT��N�ɼX�$�����Y�>dmʽ!���="� >]��=�a��A���λXc�=D��9X�c��[ �ehr�C5�=�/��,�@�ûTi��]�q�R�>E)�6y���p�/r�=�:�<]R�=�}����=�]��Q.>�>� �Y8M;d��=�j����4=\�#= ̗=4,<�齰J�+�;���=���=g��gGV�:5���/���ɼ���<Ԗ��F�=�,=��y�~"�=`u��0�S<�i/��D��7] =��=���=g���"�����?�.k���=�8!�{���r9�#��>d��;F����zV>(�=���<G$Z>�t=@E�jH�}�=/����e)�<ff�.����W８Jٽ�㯼Ygi=+:=�W����~7:=��i��Ͼ$�c��X��~����5F�1�<�K�<��ؼ�;x��+=�	���ڼ�I=����*��
ǜ�Q�'>iE>�&6>�F��=_�������/y�����:�Zq;t�X�ýF	����=P�E�c�_=����:��_V�>g@=N<� �<� x<�	x=O|�=��t>��<<��νpS�<99��0)>:;T->�֝�mt@=�c=�;�ύ��:/w=j&��ļp�=�y��&?Z=���<���>Z��=oe^�� :=D<��
@�<�S�2�̼��μV�s;�0����C8� ��
>1q��5H�����=���=��V>Jk�=3���P�톕�wj\��v����8���L���>F'��p�=��2�����x��=��4����>�G<�te��ş>h=0��<l�A�x��z
f�5{j=8a=c��Ԭ1�bai���� �=<�x�!��Y[<�]k=��9=q��=��>C?������I���5>(�(=^��>�4= Z=�e�=)����$ҽ��=��=���<�]��^����E�<��Խt�ƽ�i�(�*��<Y#Y=M�ȼ�/F<��{=��v�k��;M,
�@'u�ܠ��w"�>S�<�v��Dz?����:��A<�}?���do����=*ml�4vW=���=�}A���Nu���=���Cm=zͶ�eXI=��=X�=,z�<R�|�Q���NA�Һ�<YM\=.M�;�%E>{I";&*�J�=C�ļ����eܽ�.�=�`���&X=`��)��贽T��=���;,hL���<c�#���L<�`f=$-?=;��<l�<U=o<ϽOo�=7��=��V��l��@��:��=�7�;�&�ԃ�=|�=׻���?ϐx=��=�k�=�>"=vϤ=�}`?���<4���\�:#�*=Zp�<yD�%=�=��$>$�-�=N�=�����Xܽ�	�=�ؽ�z^���>~s����Z=!l�nr���=١\�nZ�=��N=��\� ?�����<<}T����I6;��<��������]���Ӿ`)���=�=E�鼂�3=��>B�=��~���x��w��;#����!�(�=��R=K���k�:u�<��j=0��ak�>�ķ=j�>b���/>	>��ͼA���nD�7-C>Ŧ�x.�jQd��O7���4�#��=v^ >o�;[#>gIa>��<�<-����%���K����=�Q��=>��h���3���W,���"���Ӽ�$�<�>��>�=S��=�΍=��<Ǒ=��7�a�׾�����=opн�=�=��i���>T�=@��<��>�Dr�!��=��
��
�����j^O=���:���TE>�XO>��2��'=ȓ��&���=�t����=��T=�=l�S=�j>�'��iq�� r�y�<�k,�:_��S��\Ew�Y�=P����<;�G��]���|����e1�=0�
=esB�<�p<�U=�ү;����)O�4���@>so�"��Js9>��L�8�&=�~�<d�=�J3�0=.=���|���M?�F���=
��<IA~�����1,=m���ӢY��x>S((>e*:�*��a����^=���;l	��M�<2=��`�>���=�w����=��G=�2
#ҝ>�vM�J~�=y��=��U���+=�哽F�s��=օ=�@�=��?\vj�۟��;�=��B>�\"=���9t�=��S�7ԗ=�h˼���b��70�=U�<r<=O�f<��h��[�V�a=�~<�^w�!�=C�T>�� ���=�i�;��7�v� ���z<dA��7��`y��lϚ=��<�f�{��ı;
�>��ȼ^;����=�\/�/��=[��>�J��Y=>[��	��>
"X>] ���<͋�=�C�<�I�=R�>:�(�a(
>���;ٲμ�>��==ڢ>;N<N���w���<��
�����!��0��"_�F�e�<	�W�<��m�Bb�=����q=�o,<h��<Q�E�|������8>�>>E��s�<C��S�C����.���e>DN������t�D�<��Y���p�M�'�s�=����<��>�uƽ��Z���L�)#�Ż�>��=��>�w=���>���hzg�<���!7��-X>�K3��D�>�ڻ	_��q=Ͼ�+=2Q>�&��_����@=v���ӽ&����V���%=j7t>��<���V$?����AӾ�ݽq�ӽ��=(9�=�f�=H;>)�������B���7�w���L���Ź��L�]�7>3y�mS��U�{+�[Zƾ�c׽м&�[,�l��˺.�7���8�==�"@�o >��s><ȧ����C�!=�GG=0�=��%��N���� ����� E��yKL���0>v���o'��#�=�h��ZA�տ�<Hٴ��Ч�Hݿ�ި�> ��=T���I�꽞��=���<"���+
�M��^��>�U�k��>^�=���U�7�$�=K�?�J�d��`>G��=�v���F=�u_�YN=2{s<��A=�=����������=���:x2<_2�<��]�e a=��<�p ?���a���l�5>������]>�ڋ=>�ּ����m�:�<�������=�*��,�껎��=oY;Ұ*�>eܢ3�¼�J¼�򡻇��G�<�J�����<��4� �k*�;�Y��<&<��=��<s�P�Q��<l
����{�D;��u'
�
.�%F=*&3��b)��f�y�<���׽�3�;c���?z<�E.��|A=��y�=�1��'_>܁����<<�a�������%=��%�S����q�bݙ�������;�|��:����,=�@�<ފg=}�R�J6�T��=&���vྗw�����.�?Ů,=�B���f[�SNn>��/��8J<���>��;ɪ��g`?>x��;)|>���c��J0=k>
=��=w�s��=�41���>��<-�D=�6�=�j�=ꩽ(�ȼuT��q
����y�8A�;��Nr��*��8F1�be�;D�w�h਼�B�=��i=2߽]�ٽ��56��Zu=��=�E�<k.�=�]����a�=\g>S�>Lv��_ܽ��_�@3���=.6�=��V=r~���߻�
�=[c������>��F��3#a=�G>*�˼�?����G;C >�z1;�#�V�=Ղ�=��P=�A��YZ�K�i�b3<nF�=�_?=_G>�I=�-�=���=+$��`���b=�!�=�#�=�g`��=Y��g���'�H�笻���#W��h?��f)�;����՟.=����<��=(�=ߙ�=:ß� ����4�A=AO���=m���M��n^�������=�틾��>�5�>�H>����ޔ�Hf���	V��>8=!�O=ş�>�x�=�p��0=�4�>� �=�����
�>��$�]�>iɐ<2q�=V��<3���ʅ�-�x�,=��4<�aB>K���Z��)�Bt�h=�sE<CA=I�M=��[�K�d���=	�<����C#=M?G>W�=�<�wB>ncl�f�3>�n=�S�=�Zܻa?��#��b]�=�q/;ٰ�=�>�R%��l�>����X>��z>���<�����O}��(������!>v��`��T�>Cz3!�ԉ=ZMȽz���c�
>��H���߽L�P>	ku>��;=Φ�Lb=�H!=Fd��
���R"����=��5=�rp>!��;�����ǽ�=%���2= �6����=�"">����J��>���=`$�=ϏD���=j�H��yk�='�b�8DQ=�yI=�$"�P➽7�Ն����ڽ�Ɉ>���=��: 	>�;����U>3�T�g��=R/?��f"��9�==�̽�$ź=v�=a�H<�B>�����D�=k�;�����U!g=�\=L�{>�˥�Pc�eJ1>E����wS>p5;|��=�!��s�=癈=*ic����=	&�<�h��jLM<I���_��=L >" >���=�j�+Ƽ=��=��5=�k,=(X>��J>o�>�#��$���o�<H0=C�ٽ�����>�y�=��=iᘽsࢽD�>�#=�G�<tpF>XqS���Z<�����Λ ����=�Tz��-=��=̼KÄ���
�&����6?���2O=< s ��B�#^�����=��7>�o�|���j>n�x�J^<��=c��>:�=
An=����lxw=f9=29�=ȫ�>,�� 񝸭O&�0��<$�h< ���.Ӗ�)fM���p�8>Ur
>�]h��*����<Sd�<�{��sH���1�����Ȳ_��+=�8�<m�=C:�JN�=%@�� �=D�Z:�<^NZ>�y����f���l>u�L=���U^<o�μk9o<A̚>�$��ӎ�ҽ��vS��dԽQ�
���I=�Э>����)����'�L
=&�H�$#>���=�ݽN\=���<�*A>���=(=T��=��	>T�@=!��I�Y=H��<�&=�w<�=�^Y��zr=�se>?�;�A=a�-�[,<�?��#�;@!�>l�ͼ��z����=�4�<h.��
��=��=w����l�=>�;���o
��x~o��X�>��<�Ai=oh�<�q=hK�����=*�5=�x%�X�<XF�!����D��f�=�s��R�=�>���z<(4>_[쾤T�<d�>d���K��=D�%��<�����֠=a%�=ieǽ����gu>'�>׽ǽЍ'=�~L<�=1碽TL�=�R�>�����F0����9�|g'��&n<߂���@5>��o��=��ü�{
�0�x��q���=2B�=j�=�m��=��|	�[������=�<��j=m�ľ�N��'~�=�<6X�=�.ܼ00k=z��;}G�=Նݼ��<'�콆�I��[�<M��=��=�7񽮿����r�z�9��=y�>����sg�����~��<
�g;���=�I���劽ͺ�>%�&;M��;���=V�Y�ϭ�>�پ�.�=n��=�.ý�C�<��P=e�k�.�����=A��#=�1
<�7����p���ܼ���݀/���,��V�>nN�=
�Z�1�W�3;���;��C�P	��6���萼=�c�=�x.=kP��>^߽\Ȳ���?�w�=^���Ʃ>Z�> �<�D��Z,>�L�mƽj�6�ł\�P�#=ɧ
��<���¼p�->�f#�Oٽ"{�<�"��.>��n����m�#�5�N�:!7;�j�=�@6�<N�=���:��M�	K�>&.�=�d9<<�@>8=<"�������<៽+��<�ܽ��q����>��><-<���\>��C�y�(>�"��7S�������<<}%t�����M�O�|�������> ��)ѓ>O�;=ڟ˽�s@=Mk< �!>�2�=�
=�ԗ�-�g>���=�x�=ɯ��O��:hY��w�=[�=��<�(?=1n��#<>��>D��`TK>��i�հ�>�唽H3b��?̾E��>��u<=�k��V =��[�EL\=EЫ;f+� i�;��
>�A(>S�=#C���(�Ɍ=n�#��<0;y�u;�����n?{�{���O>�_
>���y�=���;l%=������=�F>B ��{e����*_t�B�\��	�<�r������El<W9>�c<��N�T-�=Q��=<9=�Z=�,i�9Z�"��h���ͽ(ӗ�Ѭ���Z����(>��ͽ+]���!�Fb�<�#=�Mˍ=+�Z>9&�=�=�"�A&;� ����T<P��<�0x��w=��ڽ�=�μn�p��Y(>�҄=%.��Y=�#��r�=�ý)�"���=uᏽf=�@�^���?<7�4��O�0��:*>g[��=�H�ս+mN=��=r*?<�x�=�3���0'��[]�"���>S��?|@�o�2:�d��E��H��dj=����6=�Q =��X=�'=�(}�jz<d�I>��&<�P�<vӼ<�V9���=[T=MS<��y<�'>��M=��>N� >�� =���<���<f�4������9��e?=ٔP�"���$);�Z?�FZ������>/�1�4z=�U;R��=��<C³�v��Ӛ���\/�-唼(�սc�C��@�;X�x��X�=v� �=��=#�I�+@�����S�P��<qgs=?(Y�B�/=��=����q�?��<�1���������>j����=�ݼ�N��T\C��>Y|�=� z���j=2J���(<A8�:��n=Y,�=��)>��ʽ !H<��F=υ�=.���x�<W`:��!����:>��=��N=D
$��ҳ=��=�<)�;��;��>��<���J����=u肼�-=�d!�� ��r<ENC='��==w����p�ֻ�n���8C>����G<�fĽ:{�=�C�;������߽Rq�����
�*�Y=nM�=�3���莼9��= ͌=.h��?=�/d�@b`=*���D��u3��f��=:�< ���|8��Խ��Y���1���=,l�<�(>�l@�/���O�<���/퀽����=zB<���xH۽-[k=�R����-=��N=�I��	�ӽ�~q=ĳH�/��o�<[6z��fb<�9=�޼ARB<赾^
��ٻ
�~�{Ӯ=9#�=!��>�b~>f�<LE<UѼ�ǩ���!��iv�;�!=��8>��y;�ʦ"�%�=��{=�k$��m���&���b�>�~=��=�9Ż8�=*��=���<��>�->��#��v]=��;���=N��:�,>0�k�<�0> !���<�:�=+|f�.|=��V>�e�=a�3>c��<]O�>����D<}C�<�@p<Yv�o���!��Ľ�9�Ix��턽/�>�d{<F^Y>u^m����(��=�l;��B�=]&�=<~(�j���B��E>��&N��-�=̽�;��.>z�̽&/�=�[,�$;��Ͱ/��B��S
�> =9=�5���(�>�&��<t����?hE��^��۳8="Ǽ�Nu�=ļ�;�<=�ǽ�i=I<�=���<�P�=ډ>�L�=R�	>��>S�;��}��{ڼ���=�|��Ֆ<���;�}=;�ۻ@������	C�=���T\�<&��=��g?W�U<�����i�=���=��+<p�;��l=	��Z�����<]�q=r�e� �<��*=��2=�Ҁ��`N�	=�/;ᑘ=���!贤����<l����I���X<�\s����<�U"=��=`��<�K4���9=���:K�=��<F�U=
�����l�>ܓ�<D?�?.�D-a>iF��5�G�c޼�N=�����N���<7
ڽ��=r��<�팽j�?*Z$�AO�sx�<�H%<,��>X;T����u�<æ�ם��_b��}��-&M=�JS�`P~=��m��|X�8Y�������8p0���<,��<�)=v%��uxn��?ȼv 1=0�=zh=m��=���<=?P=��=j �9q�=�U���PO=N?�<01=��ټ
�D�dE/<a�[=�=Q
u<�[8����PTK=���<��A�҉����<w�.�፛��k�;�
<;���<R�?�ڐ��ZR=k�:�>o�_�]����㮽���=أ^�CS#>@��=��ļm,>Ր��X��V�j��{0=��;Xl�U�=��
=�嵾����$�=����N�,>&��=�J=X�犻%b>�����5o"h�>V(�=�i�=����#>���=�;�=��t�V=���<�&#=�E�=��ƾ��)�������@r"���m�E�p��Y=�_��7���"�>3�V��;����.>�0��)�=����D�=BX���QX��G
�b�=���>`�<�|$��h-�!�_�0��;�G=���o>���
�=0�������~���m��`c	�Z�<�0�=e<�?99��k�T�=vCt=���>@�}�N��q o���c�ؓy�O�,�V>|9�<�s"=q�����T>2����Ò=�r��Q���'���;��<�J�=�t�
>�ɭ=����%>������>��X��½w���HŽ�^j�񳿽�=>���<�iҶmQ=,W<<��~�rh���=p
=@�;��;�v�=�)�>�0���������=�m ��i��zR�=	��<�Mͺ�F�=��^��@��b����m�,=�3�; ��=9h��/���R>���u��>�����T�=$g���q�"٧Z����=���x�S��JV�Vں����>�Ss>��C�h�ǽ�<�e�c=/�$=K�[��{h�yv=Y#��ٻ��>��8�=V.��b�(�XE]=|Ua�g>�=�m�=��q� E�=���>O�=��4=�d�X�˺�\�>�G���;`=��n�5�d;�q<tS �5�6��:л;�=�Ǩ�%��;C�=�wF=���`���x�==D�C�D.r>W�>�D�����ʝ?����*Q;`>��>�g���<�Z�=��'�����⿽,�<�����A�o�=i/��7��= �㼵E��Ё�<1a��*��ʺ��o����<��=.�/�z*�=�b7>B�?��R�<���<����~u��
�=9S)=b���e�>�UZ�A��=�!���K��J�P�]H�z�'?z��=��ս�;׽Hv/>�e�BAH>�.m<$�6=�">zT
=�=cx���4=���|�ݽgp�<�(���K0=)�;�)��g>4u3>I� ���j��)"�#�(=.p�<A����"R�[t�����<� >�ZA��;<>����z>���=����G-�,!>��=�C>��>��>�~���b���ٽ(*���|�=��,��K>��<R�=������̋�=��j������<������۽>��=����!h:�(�=>�<���4�=��ѽG�=�-V>)�>�qm=x�=�ȣ=/V?�%y����<�����yg>�:G�Ch�.���K����>w�w<NO��7S��K�=м�*���ýu��=����&����0��V?���5�=�-�=�c<=������= ��=M��=�h>�U�=� &>��<-M=���Ͻ�t�>���B�J�u,.>w��=�Z�=-��=���=s��<�(d=&O�=���:�D�=	��=X�ɼ}#����x�=ж'��=ɾ�ҧ<�]�=Aˈ=�"���*>N���(	�Md��m���)���=�9a=������<G� >诪<�H罧H=��=���D��������ż��k����G�>=S4�����=+�1�������~<PUp�X�u>5*
<?w�=�&ƻtXu<�7��B�!>�����~/=!���>��~>&s�=�V�=-�L����=u�y<�;n'Z=����-��-�=��;����+���:t�=ܢn;�Y���Ds:�b,��EH�wj���8(�7�>⽺��,���P�j>A4ټ�i`;��ǽĢ⼙'���>�lc�ֳt�Z=�W=���ƼC�:�^�(n�<q�?��4��2�>�+�<U��<q�;h2��<D���I����R>2'��^���<��>H�z��{����~�=Mѣ=�,��4��=�
'�?�L�����<{�ξ�r>���>�cٽS(=?�@=Ÿ�>&� =�=T��xY-�����-R=�M6>ބ=cH�l���>m9�<��)=�>8+3=}�
>��"���>cʪ>��ټ'==�>>X޽��½!&B<}Ơ�+�>\
�=� ��xB=��=����^�=����/���a�K�Q>�=L�
>򨕽?����پ�j�<$��gC��9$5=_y,>�����O>�s+>��n�YT{>�? ��	I��L�=�+��'��<+�=�y
>�p1>쓃�����Gg=�쯽i9�=\ֹ<��>��=	u>�f
;�o��Ay�<1�ʽeE�=5j9�i�=w���!��<�)�:z���������=��>l'@=F|T��;��=�T=�0���E�=����Q�=~��<����h�=��;m�7�a�=����<�C��<�'�=�W��ʜ=��JQ3�����?��#I����:�HX�Twd=RW�<e2�nu�=���=F22<�-�<&"���pӼ.����=�^u>�S=��ȽU�> q?=D�ǽ����l�u=z��\ٷ=����M>��׽a;ڼ�+<x�X=N��=�D�����=h����I��5w*�����%�-��<w�ۼ5���1��p�=�:=ǲ�eڀ;���m
�<ULI��>Y=��=����Z">E��=ր��aێ=By=>�O��=<g>FG����;k싽���lk?����=���="1=��>J>>����Զr=A^U=�;���_=p�=�����KֽV���W�=(0�%���[֫�W轀��~<,����t>�@1�<�^>[���*�=8�X�'�<���=��/���#=6
=xWn?=�>-Т����#^�=�b��ͧ:d��V=���[>�n��<8�</��=5���<�<�w>��n<�~�=�;U�b˒=��	�y�Y��0���>����- <��A�-&>;���r<�R>�4N;Y�*�8���ִ�Jm���^�����y��#&l�a�>��T�����5=*��>�W3�pT��~c��4=g꛻���9�[�=G����o0>*w�=� 
�������l>�;�>Ew�2W�=ɢ<h�7'��	�B=K�2=�1d�[�н!��=��t=�O����	>�X2�q�4>9�5"��K<��!>�,�d�=%H#>�-<���=@"=M߻EWo���ν��8=��<�q?��ۖ=�e�<�=��Q�=�� �}*V=˙ �!7.�T�;>L�Q�#g��f�i�V���{��'�A���A=zv��q%=u�*��zɽx=)�ǵc��;K��`�=�s=�	ʾ���!�f=ք���RZ=��̽[Z*<|��U�*<9r�=���=̈
>�˷�,� >�l�9��c��]ν�<�o���܀�v�n�i�=$h�<�s��0;F�m=���>�00>l
(>4l��ս���T�=�.�=G仞w=�c��y��u��w��-�<F ���"?�9�����;�q�=ϰ1����=7w��O@<���>"�켜��=�'%=�x�<6�>�b�;w<z�sX3�-W�<6�b=�=o�=B�{������ 7"=l(0?�	���mü��/?�Z^��5������߽<����`o;��/I+��V�~�;���;���>W�<�Ƽ�3��W=	񞡐����=
�������3�<k7���P�<�u=��2�%��@��>�W�;��R�P���)�=Tż7�L>(�=�Q���r;������?gB�<���=ٮ�T�=i��<Q_\��N�=M�ڼ����_!=c���D��?<ݪ�d�[��̅�zQb<���P���ӛ=��Ծ��[���ͻ�`��0�`=x��<�J��Wg����=�(弇�G;�j=�:����ʼ���
�<b.�l�?<'��;�a�<m��u>~`����
� ��]M�˺B;m|��>�c<ȏ=d\l=J�=:>߾h^"=�K <@���*
�<E���&����L<�[J=�����6kn�;LB<%H����z� �ƾ2�׾u>'*	=�1=N���A=J�>���鬣�yNn������>���ś=>�=dS6>�ұ>t�L>�H��� =��Y>0�=i�= >�V����=I͹�o�D��Ϛ<F@
��~�=M0=�&��f7�hP�<yl'>c��=uȘ"Xqc=�Ʉ�i5E�M����_>Ƥ����=
;)�=�;b��$����;u0��X��'[>��=���l���kֽ�7�<�z����冽�`>�Q���~>2n���="L0��Ȁ�Ii8>�0��p>(�2=ɱ�����(�J=57��X��y<�K��1�3�û�3���v���f=�Р=����`����<(��=ޥ����o>w=�q<hϽȽ=R:��q�>�Q=}�^>ѐ����	��G�=1� =X�->N敽E�E>�B�rk_=�@�<ғ�=s�ݽbe�=a|��(4Ὥ=ɽ����DUI��5�}��o��=�,F���W��c}�+����->e��;^d��nM�"�>�<�[O>��P<�l<@���b��=�_k�,/>Ol=�=L�=�_���6=�C�=�צ=�&J=�G񽚋f����=:p=�?Ͼ�F\>�5�=p�̽;�=7�O>̆4��6���*@=NnX���̼fD�=�m��⺽D��<
ţ�">�Vͻ�aϽ%,�=�~u���>��x>j�>AM캞>X�A��=�%V=���=��h�2
��#97����=�=�G���1<�
>�`M=�X�=yҽ�f=^*>Gߠ�*
���h<8�=�E�=��ƽ5e]�����S.��gϽm��<=����0)�n�<�	;��j�V�
����> 6h=���>T,��u�>��e�<��H��C�=h��OE�>y�t=�,�=��`���*=�.�<��F<d�������a]<z�]Ww�Pߢ�\�y��UO�'���a������� !>�<�;��j�K�j��<Ŀ:=.(�M�;D3�=��q��Lz=�0�= I�=d�]<�@�=�:>O��$%j>Z~�=j�=s�=cSq�0��=�8�<3r=Kem���<.���tP�<s�.G�=e��>Aa?=:�!�۪����w>�����	I=��_��D������f��] >y���Z��<�>�K �6x<+�;i���锏���=�������=�����l8#H�=&'˽Ռ��{ ��ƨ��X�Z�����A��3������;1��>��=OY�=V���n�>���B��lDнm$�<��wrU�
��?�>�����D�$�_�>�?�=~��<�"��-���=�!M=��>��ٽ{��<���=���<�����ƽ��9��r�X�k=
Ʈ�qC2=F<��3>Pi=�s��%Q
>,y���Uw��>�6]�L�a=d+�>��Y���Ѽ��7~{<�IF=n���s㧼??��⽈�
=<�=� �S�<�^�ɻٸ��Ə<a���i���ɴ���սݵQ�t,�;��F��aɾv!�������S�=�a�pR�=s>�<����Uo,���>x��4���s�nc�r�m���!��ᅥh�-%��$�O%Z�$�W����G$�r�#�G����$�E�vV��H%�o��L)ߣ�1�
�W$K��$w�����4"\$r+���M������f��0����kg�Fap$��%��.�#ſ��-�$�U��s	�#�st#�����[n�iU�#R�أ����-3$
�B�R
̣��	��|�#U)�b�p$sǣ���$nq���Hnl$h+ %L-�$��$Z�פD�a$�$���!�:�TaĤ��%^��#����Β������F�r�ޤ���%�a"�V�D�D���X�M-֤��̞��|����l7�$]�
��z��t�,�I#fS��C$9����cɣ9+.$B ���;%�$!/" ������$�l=$w��"��̤�����#�g$�UڤJA�$�V%<�գ��_���;p��.Ť�跤
�;�[l�7��A�5$��,�~n%X�Ϥ]$�%�$�/�"q��$��󤅀�h����%s�h82�=�����K)ٽg�&><g&�CfE�ݪ�=��½b7`����=��=笽~S��/��e=g[����
>�f���W�����"��&�/��H;���&>�l�;��Mà���,��K=<�=����c��9�Y>6�m�'
/�{�>�H(=�����=R�����"ؾg����=�r��ڥ,�H��>�
�>xB%=�P�<��2�{���ю���>������c��G�=#�&�������(J#>���>��3���`�I�<�G >2�;!6�>edm�!|����o��<�4��۳��M��=���=���;-���51>�ֽ!�2�̦>�Ͻ�K��:����v�YJa����=�=��c(��F����=g��<E+	��l"�#�H�r:m=
Xx��HE�GP}=�i�<�����'�J�7��#&���]=���<!�<Rg=�<�(ǽ�O�ƽ�>�Ӿ����vs�,Lݽ�j\=J7��ƣ<�G�=�Si��)��a֌��w��a=]ʾ�E���.���w>u���i���@�;ц�����k/������Kz�6.��HT$��N=���"d>��s�;[�@�-=��l�?W��*���P>޿��<Ƚ�<�����q]�3j=2/�n����Y>�d��>�#,r�@3#=��o=?����.�� ��z���X]�^Of�x���z>��KW>�JY=���>�콨+��{s�<������<�V->��۽��>���=�ӊ<~���3��X_>��>=�J��(3��&g=ߐ�=�d�=��G>�zZ��Ȟ=H
ݼE#��J���G�}��<X$=��սO�о��$>+�N=�b�=%�Y>Y���o%�>��=�=��ʽ0m�=�1n��DE���Ŏ�<P�<�׽�=�*={h�6�;����T�eN=G��;7���k
�t�����;�\�D8C�z
�<��;�~+�5䟽M��"ڏ�c;pRy>$ʭ�A` :=炽�~�=�=yl4�UԔ<0�.��hʽݯ=/邽�c{�6��mxA>��>:^���w�_F?��pV��6�=�v=r 
>�bN��ֵ�/�T��)>6@�=�����S�$}=h��=���-"�=a�9>������7ֻ��8>���<@� >�'��H6��e���=�ԽfM��U�#�����]�|.=�b��
+Y�m_)>������=Q Ѽ4Q�>�Q=�UK�CV��F>�u|�{<3��=�(>4 �=�t�!��>�3L��>#��+?>�h�Cv�Z�=��;�q=�XN�ؾ������W��=%7���>�?[���;���P�_���Z�ʹ��J <�@�<��O�.y�<��w<^��?�z=\�A>��Ms3�ܗX=նT���T�ȯ���ب�h9Ѽ+�
>��R<XN=L��<���=���==�T><�<��j�=��w��=,��=q0>��>+����>��=��<�_���<�M�Q�S�o��=c1�=OZ:> c=����t3�=�g��'f;[0(���<P��=(=>����z!>��f=@+�<_{�;��=��=�e�<[�����=��
�GQ�����=���;�|>���=s�=�Lڽ�����6=��_>[�:�S�=QE����Ҿ�����np�5�J>Kw�����=
�"�Z=�Hi��U$=:��=���G0J<<L���9� ��=|���lW>#2��>��J-<��$>8�!>��&=�>�P��z8���
���	=<�u>�N�I�'>�%������w�=�WL=k�p=�W<=�G >R@_�ZDs�fF�=q$-=�@c�/0!���%;ϐϽ�������<)����G>������C>
����>�>���=�g���<�ln!=��>�н˚=� ��:�L�}"<�D�=Wg��.�	=4��<�輱� �n�?<�o2�qZ<xH����< ��=��d�>�X۾�=��>0	;�ّ�<j�M���×]<Np�(S�<UD�=]w��~[n<�L~>Ɠ����~q�<R:�=�d�>�=��C=xH>����o�<O>����>5��j���o�>�災 ��=��<�5�=),> Q�=խ=d��=�\>���>}SO�'�<=��L� ጾ �ʻ�>v�7�L:_>�,�����=�
t=���wS9ڙ�"vN=��=����Y�>�!V>��&>�s|=�J]���=���<ג,<� >�>A~/>�P����>�$7�aE�=����[
;��=U#9<�&��$�)>�bؼE�4�o�O�E���m>��=u�����Ƚ+66>��~���>'�仫-���Z>��	>sP�=鯱�h$>.[�]�>
PQ���B=́S��d��_��n�:��=C��=��h��3z=Ko3���g>��}�3"��ǌ���2����<c �>�����4=���=���:\�V�i��=)&Z>W�
��2a��\���:�>�2�=R�={�(>	��2�=Ñ>���j��MZ=�d_=W����=��&��C=3!E���q='+;>/��=T���
�<6�g�j>>�>���1�<i�_=��>��߽
0����q>�殽�.>�6C=Lަ���t=d��=���>��s>�r<�D>�ݽ�f�<�W�=�Fν��>b3"��t'=؝�҉�D ��i=ҳ�>����\%>�x��a_���d�����> ]�>��G���w�>�5�>��T����� 4�n�U>u��>����!�[>p d����=�;�>�"���>��J���!=�qݽ=z��Q�->��=4�>Vfz>	T=�B���� �>o뎾s��1d<�Պ=H>�k><N0��S�=�c����=��e�Ɔ�;m�=jvz=��=��;��l�����=��<���!�j�ּ&�2�w�!>:Cj��9D����� �j�νNnp>��(����e���0>�>�Ar����8���#�;������=:g罷G��ǩ= ����+�Bk> k��n��<��\>h@��-#>&*�<�P;5���P
=���=n��=��4����;JN��Xv�>��-=�Y�=�,=!��=�?J����9\�U=�!�����=c�?�Q=��#��$��(������<�<�#/>�}�=�UG=��a�.�;0��������l���=r�I>�{��73�������3$P<���1���#����̻����=Eˊ�z��=��<`qm8�f�/�
=c��=�Ea���y<��H<��=�
8>��߽*�1�z��=�!=J_>���=�J��2�)=�K�=VR->��=8��>�l���z���>��A��oU�  �/x��炼o�ϼ�)e� �ܼ:R�;^q���a�;S~����>>T
F�P/��_R1��^$<n���=F-<彬��ʥ=󹘽�Cl����:����HD=tU=����������T=.y�94��=�U��%�;�Ñ�����,Q�<��<���<��%:��4��m��t�=��������` �<�շ>ꛐ��z��B]�?ϸ���=I���P�=r=��]�'��'�ҽ��ǻ��4�E>�l���?���=e��(��%p>m5��B�ý!�R��J�=��ʾ�X�>�Q�>Ruk�+�n��]v��r��(�?��OU
=�l���nzr���>+"��W�<~׽7O8�M	�=�z�=Ѓ�;���=��=*V�<7��<W�`S��!ؽ��� =3�n�Х��s
������7�-j>���>O �=�&�>Rm½��Q=���=���WC�4������K�<��M�*Q�=� b�O����>=bK���h�=&ݐ=l�
�,�<]��=�7�=C�Q���=� ���>�����z�r���5��і=
���$�C�)�弳}J�&��=���>[��=�4[?z�*=�/��X��<�~z�h�]���o=r��>�$�<��x�P>p�}�k�>�n��Q>�׼29B<Oz#�r;�tt��r½�=u븼�3�<\��>P�S2B����e޴�eyܻ��n.�H?6��߽�G9��uP=7��;+E��?>�du�>HX=xV����=݅�<�ˏ:Y��=���P= Hy<���VN���<�y��){<t~�<��D���g�A�n��-���3g<f�T��B��1�־V�<3��(`<�����a<F�L������=�.=	�~�<�<��+N��;�4{=�J�����"۷C�о1��.��t�=uc�6�'���U���<-����-�I=��ּ/����=�<h�?�<RǼ�!＇J,���F�<�C��ќ=��мA�=7W�>��h���=+������=>?Y��_ǽr$��Ku�<)฼��< N�<�΃�_I.<z����j?@�������ʼ#�����{<�\Y��SԽX�T;�%(>|#t=�p��!=�z�<�k��}�� �<"8��0\ >q*��7!=]$c:�'?w�Z=�=�����N=/�<sT��~��<Wb:\��<�HC<�0һ��
=x#�<��>�,	�sp��}��;i�һ���>�������B��;܂��m�<F6;=�A��J'�	��=�%�#f��'�˼�?	>|"����B� >8l>7�>�
l�<R��>��=x���w�<Q;�<���<�D��t:㼌9�0���I�<�����[�����>|<2��(>0
�;���<wR>�9��C��>Ę=>qrK=�V����ؼ{�^��=8ͧ��M����F>~U��^L;&��r�x>�'�m�����<=�;�=��<
jv=`���l��ϱ8�N�=��>�:5����<;��=5���6�>���=��>�	��ƙ����<�E�=�QK<�9��w�,=1��<u�>�Ž��x�GA�Ic��U�>ˑ�=��W=4�=�#Z>Of�>�K�R۠���=�	�=Y� >z;�:�)�<v�0��=�IV>ſ	>���=�<�=	��� �=6��==�P>ݜ"�g���.�P=�֡=ae{=�4>19޽�#>���0�=ǿ���u�����;�ϼ"�=d����Ư<5ѧ< (<Ќ?�d�=,8>W�]��q>�}3�e-�=���>*�!>�z�3�"�Y��L�����=�f��5�=߻~4��0ɼe7T={�>�E��e���󙽵ˎ���;��D>R��Xk�<�2ؼ+`p;
@�>��v>$���3d�,l���=��;���=x�=]/>j�<���=��.�L��=����xܣQO߽���{	=�⓾���V�T>*����4a�=�	�>���k����=DtL=B.`=|h> �\=�ն�R��1E
���9=be׼]��	�W���������^>7��={>�p)���D=O�U=H���X�0]�=��=
��-��a��}d�c���%=/�=���="�e�u��<�y�P��=��f?3�Ƚ�o7<�2�*N�!F�=x������>JE���`ý�ފ�Y��=	�G�D�$>
��=�O<K<�=��j�= J>�gm�='��<�f\��鼽�G�<(=�}�^������"�<vv�=�ǰ=�|�=[��|�Ȼ��T�l��k!>�B�����T/���)=���<���<��;$+缛I�=�5�����SN@��6)=��`��:<D��Ǒ�=c9�<��X��m˼%�.<̒�=�K6���;���Ƕ;�Hc��P�,�P>,�`�	��>tϨ��~���
>.��>'��<3��<»u=g-��n�=�K'#��n<���>:Q�!c�>XC/�I���Ӽ�ݾG07��`���3�W�8=!����"�<�C=�1�<5��[�=
J���T���m�;�DA��Z>\p=s=����5��D���'�;���<#g����=��弨{<' ���J�·=��:�Z>��K��˪�U��<�!&���>H�;bE��_=��R���b�Q�W�*֧=x¸�+�M�!��=M��<�#����1�؂H=Jd�=ݛ鼑y�+4=KDk�푾�]�<]���=�᤽�����v�׺�� ��D�>Ri=�D�<q�<�E�=�ؠ=}�<��<�q#�( =~����ϼ��A=�.=;�>�:(�b��<�گ=�E���6s=&�>���ƾ�<�p��=�xf=B����j=:���*�F�*=�!=�*�<v�վ���-�����3��9�=�&=�<K=^��=&У����=�3���	�K��,�:�_Y=���A�>�[�����<A��=(��"�4<�(��
<���<h|�!�"������^�=�-*>��D=�S��[�U�	<�A[=�4�7 �=!��=�~R=�-]J=.�ྲྀ����OV�J�9��i$=b�Z�=�����.��>c�$=��E��=%�=e�p����<�7�<��~�U9׽<�f<�8&��\>�I��
�=��&�!B�=���;�:=DY=�;=��=Vt�P坻��b>?6k���%=�(�<��a>�_C>K~i<�꼾�J�=
�~>���aޑ<H(�>u}�n���������=J�/;�ݧ=�D�=6��R��[���Z�->&T�Y.�[`�X#��VΑ�4�_����=�|=���=�ʺ�� ��|�<(��>Q&���H��<�܎��2S=�%��lډ<P�c��
�=�m�=�W����c�1�Ŵ*��\.�B~U=�)�~�j�Ԅ��B��;F���M�=���mS=2�=q���F�<�_=480�.�=�\=�O����Fc��
��4��|6�����=��c=�B��T�}>q�<p[�8�;�\=��<L���**�=�x������={�;�Q%<��Ļ
=��0���;u�Q�h:��=(��=E!0=o��=������<S�ܽ��<�<�/����=��>��Ľs�L>m�j=��8�~d��G���R,ۼSo����fT�=���ϊ=s��=��N=�^ӽ�A=����=�)��>�>�?��F��x����m>!��=�ݐ=;�l��㋼�_=ĺ�>3�I��}f����=��U;|���q�>Ȉ�>�=NJ�=Z
�=��=e���]9�=��n�`K�=B񼰒>,���[&��H�!
���2��P%X��$ؼV��(�=��=@��H��=k�����=�߹=�T���?��D"=�B7��ف>gٽ*k�	%��S|��
�=�����d�Jl��>����z<��#>����:�=�~<�V�Q�����=?��>BJĽ�=�b">��+N�=�<�"��=q�{�:���G�o�;M�3�=w��	�<�/ֽ�[�=\,�x����U����=S�4=r��=�>�<�ډ�����u������=��>��E=�y��l�=<���}3���,��-G<e��=�ƌ��UZ�����A��^�=�E�>pv_�%��=ba����Ƽ��5�+
���G�����@ܮ=�w�=�%�;g�$�A�'
L�&��=�t�F�>�H=f�|��u>�6�`��-��?w:�#��`�=�z=�:�Д�>!̆=�W>|�=�{^=��A���Q��o�=������<X�
����lŵ�\��=ȹ~���e���S�E>Uo�=8�������=:=�խ=��=��N���㻽�?�9�2�=P���:�>^�����T=�#;���"G:�d0�=!�:�Ъ����<5��=ݘ��[�=��<�<HR�
�<��=Fi}����$�>��<�����=f
�k
��tք<ߣ=ۢ��]�=+��ݭ�����A�=)0=���q�۬^�'a(�	>>Re�v��=�fn������<ZT�>;���u$&>%�<��ܽ��#�d-K=��2��&=]A��Eld��q�ƛ�W�m���
<9���� �=X��;���=�|�=U��=�<e��	Dٽ2�=)�
�$.�=st�����=�X==�3==��=����L�����0>�(����ڽJ0=\��h뱼�2<�7��+�=m��s=[�;n��S�J�=�\�=mq�<���<	e�<��=!�(=˝���Q���v<��* =S��ٽ���=�'���6�lM>6���0~���;�l�<V�T=�$�=�t�=ĺ=
c=�u�;pPu=�n����=H�%=�V�=X��t$�<Qj�-D>��=��<���C�g�=����!?�3���x�<�=���>!�>�~��v�<���=b�p���������K>��Ƽ3�K��<=	=���=dG��Y��=�&���
=	�O��=��~"��
>�%�=�C�"m=0��=�#>��'>��0>�I�<Wߛ��ڟ>ɫ�>���Я��]=^��:���=��e=�м�6�'>ԣ��#�����=~e�=��
>!��4�2�;U.>i���=l�;��>ա\��f�����:�{A>c'����=�sƼ���<�Ȅ��m�>J�=��t=�D�=���=���&=9e����=��Z=�V=�6�=yԎ��#m<�ۍ��=�I�rA��$7=]��=S��`���ښ>J�=��"� �н��<oj�=�ݮ=�Zu���O>�����P:ݖe�����R^p=մO=�?���1w=>"�=�>�3��%������� �.����=7�X<(�=Qp^=Fg>����o.@=4�a!��g���,�����=˪�<1W>�e�.=��=���L�~��p�g>rH�=�P��;�=��]>���>���	��=�m`�ɖ�8�;���ƽ=e4����=�� >����Fte��N>��1#��^>;X�z���k#>=�d��=�=�>��=)E����>�1>�{�<�oO>�Xg<s�=�р>(w�������=/�*>��q���=҇��Y-Ƚ��=ފ;��>)���^h>w$�ڳ佲����=.hQ��K�;_�=Rwn��e�=�n�SM����Ѽ���=�ċ=Y%�R��ֆ�=���>���94���|�V>\��ހ9>��>'���ޝ>�xD=�W�=wF��y=G�=�۱=��#���3>��(�+�g>��=`Ƚ�ϙ��ڊ=��<eJ�=�^��C-�>*����=�1e>�F<��ʽ�Hr<sP��I
]<M! ?��j=���>^������L�<� ��r
?\ҽf�5�d�Y�р^= ��>C�G>U��;��`<��=ӯ'="�<7"�Y��wi�;��@=J�=4Ye�2�:�GH��M�g;�'��IĪ>=��<<�W��̂<�<nq���/td���t<��=c�<Dn��ˆȼ[���^p<qz=R �����=�䈼� =���<��3��"Y����<Q�c���&=mi��W����-໱�=k�=�m�� !�y.��Q<���<G���u�.<W�<���> �ؽ��=[Ɠ�&����M= Tk=�9{�	ɖ<��:S�S�YI=�1=���<8�:(|����j>Dy1<�>J	��W)�񉈾h_=#�ƽd���¼դ�<�W=;���}%_��=w <�=����:��������=JJA��`J?Ɉ�����as�>�<�(M=iW�qJ]=P�\�֧<���<1[��n�޼�1�>oFs���"=0R�<�J �u���,(�=��I��v`=�"��ɘY;�U�R)�</�
�u\?(q�=
D?L��<
��<�#��^̼H�=���4�l>�hN�_W�=V�~>�u����B=�M>�"Ҽ�*�= �<*+U��B=[Z=H��=lڽP�Խܖ=Y\��B�<�(�C�m�ڎ����:>
��=�����n-��gk=+Ɨ=�C!���>vQ�=C�:���<8)&�p�O=��<����쫼Q�#=���DP��:"O��D���>�T�;���=J�<G�5����A�=���<�~=�?��db�=�Ĕ=ü|&=j�t<?μD���[ļ�e0��ֽ��=M�,į����訽�hּ�Ä=�K���==��<U?=�2�.�D��ˡ�J��J�9Ǜ;J�A��t=�G�{!=���=���=���Qwr=�/q<7�w��	>�s�蓇:gO��W�=^s�7�y����=sŢ=��=;5�=��	?�(���>L̏=h3�T�_�)b�<��;*|�n�=)9<�>�^1��L��j����;/���P��;�=ͨ�=��>J+���V������sż� C<eFf�/2�A�Q�k��Ȅ�+r���>�q��k�b	������d����=1�amĻ�xK=c����j���pP=��l>,f�=�f�E�>�+R�����u��Y����>
Dƽ�ǆ �|�=��Ⱦ��:Y����c~�=\k���^i>)ZX;�l.���p�G�<_�<x��y,>��k�f���]O�ά�=а����x#νI�>ů��+�uk�>ty�>TR6>�:(�:������� 1>Lm����>H>B9H��K�d�E��^7����w����=�Y*<_}���=dd��)3���G�=��=�7=^%�#�5���Q=!0>��&>�/>v�*��Ƶ�ȃ�=?�W�=��&�<�4l��gq=an(��g�=�λ�nT�m�&�=z��)¼�1ދ>Y�K�lN?�c����ؽ�3I���j �{.8��4A�6ծ=�w�=93��>[O=�ū=��l`^=[
��Cy�x�@�4�M=�����0�ZA!=��>����=Z^�>��=�Y�<�i>��=�f=�>r�V=�mD=�WV�Bn�=_V<e�M=L��=��=1n�=��>�7�>�j>;D=[3�=(�����r��RN=re>r����AM�>3�)��:S����U���7�\�!����=�}>=ˠ>�ߧ=�ò=Ɓ�=�g�����=��P>1�?��=}V=�.9L}|�'"��V=;�ܒ=~�ѕl<�:�=Y���/��>b[���u��=�#�=Q���>���f��[9�=���=�0!>�Ht��x?�D M�d�<�P��t�=V^����P>L�=x�L>j�=�p>.�2�/���_p>�jr>��a=Ӵļ'�<�v��>�Fֽ��M=f�>ͬ=/U�h��=a�i�w�=즵���<uM�� ���ُ_>Q�;��S>�=ի�=�G=)>��'=I1���==�v"=b�=�.�:D%>B�h>.��=��=�_�=[�6>u�j>�2Y=^�=T�=.��=�{û�J��B�#�'/$�3$�d##2wB��`أΊ!1/���~$�&����@��Q3$��¤��."�=��1V�LD�#a-�ק���7����^� #��{#�f#����'���䁢^~أ�/&�d�"�]�
�"f�� �J�$߷����S~_"��E"�����p"
�#�oâY,!��疞"���"�U6�ʏ��S1#3h!�����暣8����#E"�T��P󣮝���4
1�����Q��#�!�#���#�{����I|�$> �G[��9�i��AN�X4l�Y������� �̽�#��8��\�pH�#Gߢ�c���e�a����	�#��rV'#��E$�m����O$��2�> �#}#E�`�u�:�h#5D�"����h#�6$̻�:s"
4$RU���I"IB�[^ա?3գN2�?o#d$ȡC��c#�5���`���U$�)W��-$>�h#���G�
#� !��!#�;1$�U��7$r�����s�>��>��ŵH>²�>�ċ<rx6>~'ۺ�Ü=
�v��`>k�v�V��=����O.>xr��3SA=+Z�>L1,<֞�=�������0%�;U��=�~I> S�b�O�o+�����^ž���=8+~��!> �o">b����!�=�-^=,��=��Z<���>��<�]><D������߿���9;�[�-;�=��
>$Ü�q!?>v�ŽP8?�m�=|�G>'��=���>D�=�=�����~��>C;��};=��|�:s��t>Fa>�K=��<hZ�<%>)>�=/�;��v�ojU��v˽_�u>�[u�� i=���� ->5
G>��<��=ЩA=���>�|T>J9�;���=W��=�.��;D>I��=4�>Q�B��j�=}�(>���=͑�9��> �o>;���
w=5�>
�>P��Un>�ֱ=���=���<�?<�_@<�:=	�<����]>�r=u��=Ήн�	U>
>gՋ>2=Y� �Ս�=��3��Ə=��ͽ��+=\L&=Y>�:������^�L|�>o�<�٬�<��=w�<<Ü<<H���;��j<` �9ݵN�u�o��([>~(K>�����h=��<��)=�M���A;P)���\�VU�SI����=�#o��0�=NC��z*���꽫�;��:�ܧļ6込�"�=A���Ï����ٽ}�d=n7A������=Z�g���>O;�/����Y��E
�֯���>��p=�½.��=���>>�����=Ts<�}��q��=0K�@�H�f ����J=��h�i>%4�='�>\2�<ו!>z�=S�$=�xb>��=�(�=� �<�:ܼ+��;.��=F��P��=׾
?�f����X>��;���;��.<3{'���<)�<Pv�=b�==�X����S�M��	߽���Ր��L�+<�=�t�=�9�=^h=���O�%>���=�"G=\E��s<xG�<�G=��Z=6�<���;E��&� >�+;=d	��;�������@"<,~ =��>q�
>IC�>k2y��Z0�ڳ;��"3r�u�>�Y�<R��\A'�ӻ<L`�x�I�̵�=/�9<~EQ��o-��Zd����=�K�?N=�ꬽ��>�=.}�=�]����ƻK�޽��<- ��g�=+/�<���<Yݽ�"�>H�=f��>��=�j>'��2�g<�ԧ=/q�M".�K�̼�
�J�����=�"W�D3���
>��+<ЛT>�8ۼ������=�>xԐ�\��XȽp����-�j�L��M��b��=.���zW=���Pƿ=�ԡ<m=����+��Fʵ>���z�<�b��v���=?M=Xb�=*
=�'?���=k	��/9���=R>��=�ZUG�CJ=��t9����+�<H9S<-�<mH>���=+���Ǩ��iz�gM0�	+.=��<�*V�n*���<�9'>��V��1��M��w�[�+��<6�=~���jN�@R0��'<��UH>���=*SY�<�=�!=�dF�-ɩ��J=�f�9{	:������ν�	����Ⱦ:�>x��a�ڼ���<�ñ=�������<�ī���<��>��>%�ܾ�|�<�@���惼K���-��3���nj�<��?�` ;R˽=�乕*�<	�"�j_�=��H���I�Xwz;|����`->У����<r�T=[#<�W½5�>�%=���=�K�Qs�<^�<��4=��i>�47����=�2���;��<�7��%�<^>m>M3
=6Ey=^�I��=h�C<R��:3!*>h5�=�9^����=H��<\�h��	�=Ki��[X�>ȹ=j��<N�Z�1�껥ھ������h=�W��7=0[��4Mg=js>HF�s�I�qW������q=�ׇ���ս�n�>I�<K�;�
5<LB����<�8>;���F��=\�=hh���54<�N�=X�=(S�=�-�����8C���;t<�p��>��O<����1�F����Q뼾#`�����:��3즼�?�<�><M;'�Y�=ۉ���<�=6�v=���s4>>n.�j���kc=�亾hD=�{��R��=������)�Ψ���=x��=�d8=`�����<� :��v�3�<k��/=>�߻��W?��>O���?���
���$�k<Ҷ����y��_�i��0�s�=����
�=-1�<0H!>�q+����Wv
<��=:�v�)y �ls�=FJ<��
=�N�2��=��?>�c�*s�W�>績����R�<���w >X�v�'mx��;����1>�<�!�b�ټK���	��d�>���=��
>��:=��R<�Z>^���	�ie4=K;m�8�Ծ8��iF�<7W=uv��b�@�i%��b:<��!�k�;p�����)��@�;L6�=��J`����=���=WK��g��=�h�S������=����&�)� ��i��<o��=��=�,��a��Pk>��>�T�>
�??�萼��= ��~��R�;`ݓ=��=��ڽ�h.?dp�=����{�}��=/�ż�"�h�Ͻ��K���=r���"�=-*P=u�2=�w=�������Ľ��>r�=�'N����T��+�c�J˸>��	�u�|>�������9���b0y��lA=Zo�愘>c>���m�=!����=�4(��W�=+����%��@'=�;#_��"���I(>l�0�-�P<t������Y<�aӽ!껼��c<`�>k8�<�l��2໖��>�����޻vI:�=9>D�����Ek��Q�<o�<K(,��8A��l��i��_:x���ҽMo�<��c��h^>GJ��(�J=2��;S��>�L=WH=J)!=�=Fv��s��#�_�H����~$��&�߼��">S���=Re�2�"��s���y�<Mýo7��� ���� ѽ<��=G&�<�{��6�>�d\��,�r��f���@���l�<+����>�κ.?>q�=��>}o�=�`ڽ�o^=�F����<� �;�6=�@!=y)���:�=*�y�{Z$��j�?���K�������=�ls=�l<� н[W���o�×��ȿ4>�c^=�`�=�}K��?����>��,>�����O>1)d=8*�k8�=��1��[�;8
�=�ќ�k�.=P�<+l��&�4����f�=�
��B��:w>�k�?���@�*�(zn�̇[>!�+�m�R=�">����c���	Y��eľW^?���>e�ʾ�2s>�3=���;c
�l�>ǭ�w��>aш�>�������hg>>�7��ͧ������Wt=5	����<�u8�;�Y�N�ż$F�=S�2�3�j=f�������>��E��K�=��t;��g=Z/>�����=ncc=�2d�=���F>�����n>3��^�~�j.��[!=�枽!���֋�)�ʽx���L�p=�9>�b^=�ϴ;f]��K�2�����,��1ƽ5׭=�+7<d�,> =��{=�]>r�=��>UX8��ˑ�=uD)�\)�=6��=�ދ���%�p���+��=�_Ϲx�=�ё<��G<&Ch���;�S[��{a>G����<�n(<Hh���0r=O���U�=򭕽���=iz��A��<A�>a�>MFU�������=��!�1��<��<��\2������U�R�=���7C:�
���>*�\<��
=�]�H�z>��D��z�<aKȻ��%<�:�����ߞ=�HW��G��P8�>M6G�jLƽ��K>�bs?>� �V�=E�,�?�m==��>.e��Z+����=}�>O��=�ſ��ꩻ{'޼�v=)�_>�K����=S���ƀ>*��=�U>�=�܆>���=��S����=�$t�g5=*�˽;�=Uh�8����7=��=��<U;��!>��=	�[<�_�� ;�D*��5��g�>��=h�.=}3<�K%�-�7<��>��D>��=�۾$F#?��=�z-����>N�t<S���(G=(Gʽ��=s�=�ޤ=�{����S�P7��[>m��=�_�<ǣ�<g�M�[�<=��=��M�L%�
zQ����>��=P�5�����\n>��=�=�8�\�
����=޹>B(�qB�=/�Խ�
=6��98W�=���>梽�/��=���;�Y����;Ա}���*='>�ww�'1?�~��c���C�Jv�{����=+IA=7-�m�=jE1��^�=���=C^����>���=�ԍ>gﰼ�C<^�^�z^�<p�<3�8=��?��M��,��@4�=b�����=�i~=��׼@�G�
��=u=�*=깅���E邼���G�=ac�bۙ=s$E��_�=1>�=�y��߮���⼛5=���V���0>�>��/<5���q��-����Q=Ф�G��g���lJ;\�4=彜����P������?�=�������=ʼ����!�=,��<5�G=�ד�|?�=UB =o�=���=�=lZ��z6���<Mi�ϧ�<0�"����=������2<�7>Ͳ�=s�I��=Kӭ> *��CG���)>��Y��+=낫=۾=9ͪ=EmI��6$�	&�n��=uW>�u0=���w(��e�8@5=`���9~�ڵ��W�W�kֳ<}hͼ� ���C�>->�=�ծ��q{>�C��;��!�����ýힼS�=�y�<z��<����i�=�+
���&��_��E��t�5.��OQ�=ް�>W��<W̽7�.0+�}���>��/������,�-g=�����:�c��f8
>��4<�3�> D.=��=lԩ��E��"KҾ6\?��� ����>~0ڽ�\�=|f=
8��4��=��>y�U��H����}"�=�iz�����0u>	�,��=�2
<a��v��=��b<�/P=1%Ͻ��^<r{�>=>��=$��>��T����=T �=~�=>��W���<G��=>+>Ke�1u<�:���� >أ��|�<.�<���=��ۆ��򄾦=8Nh>�K�#�
>G=��
�ME�=��P;�s�m�4��Y=��->P�O�Gı��:R>
�H����<>֫g>�>��I�Ἑ+���5R=�y��R���"�=<N�k��=�>��n����/W<=6��=h���#�>���<h� <�6��|���Ik��?�<����yK0>Z��=C(�>�j,��U�='*ͽ;�=���=�[����Q�f=��V���E�����1<=w�>LP
���=CWs�FՉ�Y�I��� ��C�>�鰼�I�����x�$���_�;�{�>y�=����Ws�=e��=����W�2��=��(��=��=mܛ���0>�Qh��!�=�&��tI��O���c��7��M�=�˵�o���<�<cGh���>��/����x�:�^8��e}=���<�c=;�=�͒���b�)m�����=��^���j>婉>x,l�|߽��=��=�)�<_T�=�������2����f���>����-ؽr��>)���tRy=[��=;⯽���=��<Ȟ��Vm8���f�k��=5*�=�t+�;ğ�֖[>���NQj��K�;��<b�� �<�����Y/����<"(�=�����
=�¼���z�d�'��SbG=݉=M���]��V���?��
�ʽ��f=��ͻ�J�`9�<�q��5뫽�P!�e�=�{>+����+�P8<`Q����!�=��!>?>Χ��e�*X���]��Ս���";��I=�o�k�"��Mռ�+P�5F�:B�=�C�= I*� ���p
��<�˺��᰽K�(=zJ���0<�+Q=�R_�D�W=�)l���<f}��cx�<��;�c=%���� >k�6�\�ż�䬼<����S���\=��=<�ҽ�Q>�Ҫ5=�z �����{�
мt�s=q�,�7����=�qD=�m�<-@�w"�<���<w�=6E�<f!�=p=U<B�x���<� >$�<)
*��Z�<)�N<4�7>p=]��="�Լ=��<�B����<�_�����;T��������滽�X=*�ݼ��8=���<}������<4�&>3��DN=Zl���ν�-� ���0<ʟ�=�����1��h>ⴲ�[SB�I��<�?�eb<���=�i�=��-=�Y¾P�=8�r>)��۞��_��<K苼����
+W=�:D�\S��v�}#)"9>���b�վ�� =�L>s��<�.�=e���Z�^ -��]=lgA>s��:.���=�>�?(�՟̾]�e=E=ʄ=ӷT>��G��;�;欻�r1>�*\���ͽ3����=$�����=����9R�S阽�f�������`��>?:�=JO�>�b?ȟ�g�=�Ž.u6=����׊��]ƾ�iE���f=���=��>\k2�7�u=6V��	��	�-��=���Y�'<g���>���=�I>����'�w�~@Q�μ�>l>+�� ^r��� ��8|<�{���{��@�<���<���"`�R�<]���,�n2?#շ��A�<�Ib>,4(���e���A=Z��b�>��7>���� >wKN��E���M��m7>�A=����2<i��=+�;@�<F�>�D=��%����s�!�-��cލ��ѫ>��=���p�(���!�P��T
;��>Y?����S}�>m�z<��(����m>���BO=Vh.�ɝڽg�>��S�E�K��q*>�����=�R��Ŋ=�[l�_�X��%=�v5>RA,>p;�=��{=-��EB>�v=�%=^v���E<�-?k�νF8�;�Ҿ �2�ل4�V	�+�Ȼ_���'����i�S�e��*�=ڪ�=��Ƚ��뽏��<�0=�J��R����ý9���ʻdn�Ig��6�O=PI���<�^�<hb>�W���1>|2��W�<�WV<�'<<x����=�%�>�ϼ�&��=���<���<ҥ���K�=>�o+Ѽ�2�S��=�j<2�P>���=m�4����cP=󥡽h�E�
�y>���<" g��6��e��jG=��=��M<�<ѽNy�<�����>�+���ş<�x�>�P��z
>Z2
>�u���A�<]��>k>�\�=4R>I�0>߮>��ֽC
O�Ctr=�}O���.>��q���h�h4>?m�ƾ+;��w%���-<UO��+�<��>5�=^$��y�N����"�Mz>Pb���<k�>��X<β�=�SX���!>��A���V%>P��=_#ǽ�������	�ξ3�D>$i>�9>0K��+�)�H��=��f�(���=�H>��<��G>�J��N k>�y>e�>
!��78>3�>[怾�֚���@=U�=��:?�I�bv�=F�?=C�>�ŏ�a�>|�����><��>��V><I�;�����=�~�>"'>��=�l>�0i>�ʳ=�>k�>>��0�[�׼/�>��=�/�=��+<^ �>��nQ�=󏽽a�=�e�=�=W4���a�=r�׼md>���>��Q>tm+>���>���m�7>�����j�lD���>Խ���>ge=>�ݸ=�n=�Ŀ�Y�m=A��>\����v��ѼZ̓�K�^�I~*�&�$=I�>��B��U�=��=8����:��U��k��k0�<3�=�|�=$���'>����s���V�K�pq�=�u��p-���;�좼�8��{����c���@������ûq�I=&������@+���绾��>�{�<1Ք=ϼ2��'��:;���C����<R�M�8��=ݾ�=5C���G=D�=��<o��<Q �����w�;]Is��j����r�]�*":wo�/�#�����i3��rX ��j!�;m�<�
���bI=�������8�ӼR�a;l?=e#�zw��M�=�d5>+ꍽ��.>Y��<Y�����=������>yn�������)��;v?�3X��R=}j*�|>��9��<v��U�=v�2�w�����=��:/&$>��
�1/b�����^�=��<����y�k�5��D��:*>���^=�N�%�/>,��<'����
�=О��N��MS=&M����>=&����<=��;a�0�BAE=q�;�<���A>�O�=��Wr��ݰ >�!�;WT�a=�s.<%=O��=M�=	`����>�`C��v�=6G���S;�õ�4D1�G��>=���Z
?�+��}�=�LP=Mh��Ҹ=��ռD��<̹��C㮽=��<���=wm��O�~>L""�T���U,���V�=�p��䦖��H�Dd=�s=g�'���B=zp���`j>2Ϣ<�0��m%>�ռ%����-W=��=-�#�J�>ޟ�=jz$<7�(=�T����u�kb����=Fm�<\��o�D:��W�w���r<^ ��~`��4r�j�7�|�����==0�&��>�k��$��A9f>-8��rL��	�=@
?�@�
b�|  ��MY>[��<�"���>I����������v��_����6�=*��=!���ny��.�����p<7��-�=�F;=����X���ͽsh_=Q�J<k�%�5jL>-覼{�E��g���I�s��u�=L��;�2y<�!>J�Ƚgݑ�8�>I�=fN��Z<���=�a�;RY��_x=08�<UII<���9�ݽ�J�=��6��߆�4������Ǎ>��=8 �>Ly�����X=C��>׵�<Er�����<>)��� �=�a"��>>��>�D���>pc*<�f�C�k>x�r�9�׽�B��o�<���:����BK'� 
��֬�"��0�D���^���=g�=�P�擟=z�>�z> �׾Z<ܼ�I佃�;�����=�R�<Wq����V>F�	���e��:<��<X��><���Xy<��f<��>�x
>�=����>Ֆ <��>�܀�7�'>I�]�-+>��>���=-n��:`�yݟ=��=���<�R��!��7�=��J��<мlf���9<>c����p�=]Rf���<|$Ͻ F~=`	=a�����=[�=���>!2<�q=x�a>2�j=�%�=���?�=>�����?#>�	�>�~>`��=��|���P=���=���=���=�Z1>'�1�
���8=.�"���=+C:����=��k��h���<F����>͐x>S�I=�d�Z����>�F��}���-0/>:�}���7@�L����!><U��$��_��=���?H<5o���|>�4�>����iѰ>�����=ξt���>h~�ȯ���="�R>}	���@>��F>=�<S0�>e�|�X!&?�Q=�R�=�y���?C�?�ܲ�=�W���e����Ͻ�	->��=͘>����d>��4=r d���f=M�Y�
@F�U.�;^����<�ǻ=s󜾴���V�=� >�p���� >>�=��|�_�}E�=+�
���a��)���A�=�uż��ν�|=\Ec>G�
=#
F=�dC=��<���=�t8�Q:�����;+{�����=�4s=�!;=S��=�)k=�,�=�>�)�?>L�'>�>���.=T(ȼ��.>�/�>ی>��>xbe�mG=+���=�2Q?�sO>��.� �@=J�=`����>*�g�;L�Y�(x;�>�����2��s!n��o=$���y��<6��;^$1<`��<_�=_�== �dV��i���	>�^�>)T��i��'�<|��=��p����<�/콻�]�k}��>��H��<Ժ}��\Q>db�;�<u;~�>ڋ�:&ټ�h �Pn�;�Zt= 0�>3��<�;<���Ǔ<�
r��$�>�ߴ=�)�q<'Խ=�!;��A�D��>(�ѡ�=�y������X�<TBR�ܖi= 3=t,g�ң�k�%=ƀ�<)>;���_�7.�=B:6����>Բ��M6�@�<��-��K�=Xa��uc<��;Xyh�A���N�:��8k���<L^?="���q���"�B�>W�м���<^�����:�[;BѽG��=S��=~�;���>S��S�a�J�m���7�2jJ= q�̻7=���k"��Ff(<�Oμ��<�h�=����ɹ�����7=l�+�����t����=Ʉj��:8���#=M��<�d>�48>NW6<�Y�<6c�#�>���j=A�=G�<�Ӵ=4��<�#<�'7�=�߾���<qo>�q����q���}=���L��>�������M�۽$Q6��;�<��{�=�p
�.�+>oQ7#C� <T-���'<'�߽�>_���r�=�fd����<Ri��M��=���I���ב��NF>
>� V�U-)��a�m��=�[�����>���=��<�{޽1��=(V�=��ʽL�<� ���<�k7��(�>h�ļ~p�C�j=vŘ<�CϾ�3ܼ�#��,�=�����<(wQ<��ͽ�{�>Q�=�7���,��f��=��=�)-���i��J>%7!�5�k���<g>G�)�꼿~A�����|ۆ=�,]<�I��$
<b(X���~=w�߽��>���=n����=�2����>Tu�=O�����= �<B̡��σ�9=�h\��o*>{k$=��~�Td�L�>�ɽ�`��M�ɽ��=���qH�A6�<,��=ڇ�=s)=�ǩ>zn�>��g=������>�*�ߝ�>�y?>i��M��x���D=ܙ}=���ბ>b.�>�>�C�����f�/�$�����~�'>���[ǽ��>�x)>�],�~�>A�;���>�K����^���܂ͼ<ҳ>���~1�	Wr>i"�="�6=�W�;T@�<�k�+lW<���>H�P��]>��<2�����=D>�%�Ğ�"]>�)_����>��;�Y�휆>�/<�D��ݽe��؍>/���a�
�L�5�r[��b�g�4暻��6����=z�R��>��=�`�=�-(��H弴��>or=�8I?Ã�=�Q�=%�=�_��^�=��� ���Q�=��>�d��S�I>��<}��<m�Ƚ��o=,X�=���<�t��}W�� �&�'N?.�=W`�=�q�<��=�9=����ى@��Q�����>1	<b2�>�Ǧ=M���V�>�%��4?O]�>�B=�/$��([=[����
P>�O=Ў�=s�=<��=�n3>p� =��ϽtЀ��E�=w2�=l�B�ݔ�<{��=�"�� ��6S���x�=X�=�G�����[��=��y�K�	���Z=Ձ�{�3�۴�=f�l����<��튾�r�<̄���Fս���<2�$��JX�=��<�=�=<��=;J=�=�ř�,�1����ʯB;{�[����%���5I�=ECK=���<������=ɞ�mϼ�
">Yv���佂\��M�;�=�	bͽ��F�k�y�:�x>�m�� +���/�=*�J=?%"�0�
:���;~ca>��̾!iV�U�;��=�z�����>/N�;�R=4�?�ݾ��ν�B->'��<�8�>y��K�~�`ƻ�#��=ě�<[2$=�{�=�&=�4
�;�׾~�w�݊c�:�������;˜����=��=6SO�<��<��F=��:>Mn�����;:���x��v⼗tѽ3����\���Lu�ك�=i,�<���ĳ�=+f�=�L%���q��ER>i�V:�� ��@ �C3򽂌g=��Z
վ��<=�w>�)�<�0=��0>�j���߽�� ��q�"��a7�{��=�8?����	f>h��=�=�#�=Ѿ¼FR>���>��e��P����Q��WN>��s��X3>���;�JF׾b煾g����_=�����4ɼf>m$�>З=�����@��1��>��>�P�>;��<d���׽Yl>�?��o�=�d�>k��=�73���P=�c>Hk3>2�ӽ
K�=�����9<@�ٽf�׽� ��.��w=AL�<�)=̖:��yZ?)$h=�_�D��=g�<W�N�z*	= �ٽw4ʽ��J�D��uK%�	�	����
	(��������޳A>ʜ)���<���5d,=�H�X����i��X��%J��X��B�i0��|�zż=���=|붻�t�������*��7=J	�=)>8��s��>�M�<*^�>>�r��h#��g��)�<�
��$�s>���P>��>0�	>�(���˙=v��<�,�<�t>w����x���/=�=����]S�7di�27=�t�=է^��aj�'�/9���n==F����ӽ�챼jP���9���#�)�<]��}���ý:Z�!�s=��?���@�^��G1>�π��r=�G��>_���<j�����!��=�4=�4�<wM���f�<�	ʼ��<��4>ݔ���qM>�A>������@U=5 �=�f��E�/�ZW�e:X<{Y��b�G�)�F>ǝ>�=��>r`��!�н=6�u��<d ^���ؽ�>'��K�>�Ϩ�!��<��Qn�=�qH�;�������������>�N}=*)7?#6?�w2�=���<�=b<j�E�P>Du�>b��X?==n�s�=�O�;�ʜ=إ���^�>��=���=� ��Bʼ�K�=���=pߛ>I�����P�V$�=����(�%>��*����>�\��K���2�=��(>k�ͼΜ�{}�>��>�T<�?��=�������� �N=cѽ�$�<߽�=��F$S=�~�3��yZ<��T�&��<�� <��;>r.�R�V>K�㼀Z=�Ƌ>��<�M#��*�Ἀ����=�bW<�-�o�=��ټ찢״d=ӱO��ԽlXq=xጽ �;f����;?�?�^����a�<<O�<>�Y�l;>UJ�>h>9=?�=���<&9\=T�t=sq�=��<=����:r3��">d�K�~1���yE=�=r����
=���{��҉<l~�<8��<�k�<�펽e$�`���Q?��t=��=��:=2�I�0 �R�2?��m=���~+	�T�(�G8>���<'5S�9m�;�V�<ꤨ={GH�)o�>�o�=�62=�(Ӻ
��<)��<ZF����"ʽ=�~ؽ���`�<�k*��D�<�"����=cH$=d�;��,�!��V{W��k���x>��Y��ɧ=�==���<�N�<Q�N=��1=��<P	��;�_���<�j�<|B�<=ա�2g��v�*���,���G�b�@�W�=c�>��=ʚ8=c��,�<�y��Il���:�
�<�����D�ɀ8>E]��k�<��N��s�d=�x��o��W�>>-o=a=���l<�)l��9����E�>
�,=r=!=S쒽۸����
;7v=��=N[*>�,�>�2>�2��A��0dZ�n߸��:�����=�L;7��=� 2���Ͻ\ý�}��@�%����< �������1�<��=r�㼇��i�;�o�=6�#�Y�)��=��DP�F���
�<=��J��<:�S>\ ��=b���rP�#����k>� P=֊ʽ;�<r��e��<�;�=:��=��=�m�>�o��d�=�fM���4��$��
�>�/>����:Ng�$.>Q���$��;����+4���@����A0=��3���<�Z��r����

=�r�=l�o=@,��h�=�A7<����0��/>���<���A��>��
>u��Kq��O�9:�L��]�Qw/>7�<D����=������<��y���>��=oW�yRd>�>$y�>�^�m�ʽp\���h�i��=@u���	q=��6�>�	���V�=�F�="�O��������XV&<34-?�����I>��#3�>�rr>�u�>���=J���:�>[$]����>r��=��=ŭl?/��=��!?�2��->9W����>�W.>mR�=?w>g��Q��=,�=����z�>0q|���U�W=�=���=J먼��;u��땻�<��=��=�ܾ��=p�>�F�>��>��<���=;Z�����_�=)U��+�W��:RƽE��P�d=Em
?5|�=�}���<
�=�[*>j�h>G�<&.0��H��ȬB=��>��>_$~>� ����6=�5">om���C>�Pپ�N	>�e�>J��>����=FE.�q"�=�tf;#1��n>#���rec=�֗;et����dm>��H��#,><��;oż�0�c���"=k,>�>�V=���= E�=��=u�!?��=Tͫ�T��<h鼏��<&��=�x�<�a�5��=T��<��>��.>���/U�#-}=s�>ѓ����Z>A�"�m����=l�����J�>=�i3<Ud�*>-����b��ぽ���=��k=	��>f�.Ҽ;M��YC���`�>�b>���=�ȫ<��3>D�VL��l�H�%|��|�h(�ǪK<l�;v�����<����/(ѽ��$�l?���=|�N��qƽ ��<Q)���H=��{>��=���9*�=f�=�b�C�'>#��$=!�7>��M�K�"��DB�ʂ����=��Ǹ�6G�=�,�]A3�NL׽=��<YVm= �=	62<О =��k�s�\�|�r�l�<�U��[J=Ӥ�>Q�߹A�=�Ǟ=*�=mj>S����[�h_�>l2��~
Z��^=��>o �=����.�>R�`��u�<��d=�u9=�C)?@����e�db�;�<(�l����==�d��- =Sr>w�=�R���u�Yoڽr�<X�=���w�����Zļ"b'�Y$f��<���=�{f=nNü���=�bI�j�V>��*=���sXԾ�P�=겕��sC"�`�<�R�/��<��9;d�ٽ1R����=f�H�4Ya�1kɻmr�@Z >�o���0��˻9�
��<��S;��<���
��-�<k�;>\;幸3r�ޓ���<��_>�N*�a�G=���0�&>�4��a6=VS:����-E ��D��%=����	=�T�<��=�Q9=F�>�;^=�T��p�>�H<�@)=G�?a���G�=����2f����<��d=�� >���=_ok�k��]��<����U
ʽf�����<�l��=PbĽ�
�;�=-H�'A��wĽ��2=j������bL��j�����[=�S>�V>���?�?�M�I�|�=:�[�H#�����x��<�����Mu� ��΄���5��	O���/�8W= �j��W�=�@�<XdW�Hk�PO��G~�<�`�;:O=��"���>�Ӽ0_>;��>T�_=1�=�2>���=�2��:�/>�hb:q!z=����� �<�*� ��-�>��>�"m<��=J7E#Q;=M��6��=G�ؼ7�����<c�6��=_�M�>�q=U�[>�����̻��=�r��7��=��<�=�=�nV��a���ʼ�zW>`L�:!ͅ��Oj��u=[خ�*�r=��ܼz��<��>�4=�ހ�2
�3^u�I<�C�a�E=G܉��3���|���;����x�p�;_��=J�!���=Q"���="b=fr�<���=5��<	>m�\fa>�<z���>�l[�D�=��)����<H)4���m>k�]�)��C�N*��-�M��z��awl�,JP�����Dqo�bD �Ŗ�n �fA�=��1��}���7%=һ<�c/����b=@	>���=P	V>����<�M�=�V��C3��=�=�Xc�6�p�d��_���K4��椽7�n=��<��+>����0�<:�w<��=Q(��[��F/U>j�=�^���j5���=��e�CNｭ�=B�u���,�omH=��>��>���J���ͨ<�+>�U�5f�<d+~#�r:�u�=��t�=_x>�e�<5�u����=���=��\�k��=t�E�����,-	�]�<v�>�H�<'�����c�#8 >N~��<�"�5>7��=��=d��=>-@=�����<�z�9��:�%A�v�;7J:	K?�˚=?.2>0|>���=z����>���=*�V>[D�(�=V���D��=t��1
E>��1�*�༰��Y&=
����0��:��6˔=>������Bb�=������=��J>V9)�!�½��;�n4���bb>z	<z��V=/w���޽$��;b;�����ָ�=e�O��_	=�2>�`G>J{8>���<Ȓ�=�Q����<lֻ�Tz�����B�=���U(�=��<$yA>?ѽ�7���y>�\?�a�B<�z=������\����>��b��5>� ?�!8��N�n�L�Q�>�Pμ���=�>���
�V��x&=�>�=)�o��>�>)l�>�D�?3E�=Z�=G��<tI�=����uR�B�?�Go��M�3��+ۼ\��<�M�>M'�> �=uQt?t}�!�y�}����1<�>�=*�^?�ݩ=ZϚ��2~=��>l�<o����1��>�*1���>�L>۝.>�|����Q��s�k�#�r(q�Cս����9�[�X=��4��Ľ
���ϥ�=��='zռ�%>�i��A��->�.�==��=����@y�'G���/��,�#��V���߽��>)i��	���i_=��X�w~�>'s�����ԴE�XU=Ӫ=|�y>���މ[<{r�>�H��
 p=������v�*<��?=�	$>{�5<�`>�z�A��__��s��=r߽	��<�͜�}�ս� �nxo=3>��>>�j*>�)�u��=(�n=h��^<r�ឫ��鵾*�q�9~�=ed�^�I�+�~�t���g�>j�[�mˊ�vG�=HC��$=���O=X�=��=��ļ�	�<*���FA����>�
?.�>��<�	@���i;�%�
_�<-�>�lK���|�Fu�����=��7<G���״F�zoP<mo��0<��>����T ��N�C>�>��=]�;
mY��� �3�I���>�6�= ����Yj�>�%��jyռ���=���g�_>�zӽt�����p��/��E����>���L==�ȫ=MD�>b�H>�:�>��t��=%��<�½6�l>��=��z�2K%>_dC<땈=�w�=��D�@?��mҽ;8�=��@���_�ya
�-��<w�t�F=1
>��Ⱦѷ=�Y�>�=�;w=��������;$�H��<d<V��D��="'u=s���P=1�<����j=��=Z"?�� ӻ�O#��f�<3\h>����sH������8�=��߼��%=F��<?Og�����>Z�<�b¼-���ΗD���8��<���<X���ލ̼j����?>�� =�@n�'2ݽ�1 = 3��?m=�,<l\�^�;$�+<�K�<Y��ڲ�C���=����a�c=�vüm�A���#LI�=�8*=;/�=��w%���<h'���)�3�>�9V�z����"=�̣��y�?wO=�*�hDA>�I=�bW=!�ؼ!W�;µ۾ٵ�ּ�z>PMl=90����f<��<�S��F<��=
������<@���͡�<q`�=]�m=4��.vr=�&�T� ��>fr�=Of�_��>���\0\=mT=D��ӭ'>Ŭ�W꠻2>��]�= 	�;�~�=DÓ����=;�H;�����(�Dz;1�n<����X[F����<鲆���=��A��F�����<������>�Y=��=;! <�W�<k<�������f=��*�N��;!w;��<��C�
A�X��:��i>*���[zӼ�~�<�p�;^��'!��!=��![�!"�&�.��<G  ����.	G!�蠿� �[!zաBh��_��e%!�O!�nՠL䄠�r��le��%5R!�7!��!�47 R�� ��!v��D����p�M�J!Z�"ZXןm�>!�k9��s!���E`!����3�!;�!�A�#aC"��u��;��^b {f� �� T���l ]!\e�
q�42�!�U�s�}!~��@[ ����-�#A���$!{(� ?�Tr��
�F���_� �|�!����T��/¡-l��+��vep�Eˠ��%��a��!�S�!� 了�"�2!}qm���@��tm!�>u ��s` H�tyX�	�T�˿�q^���O!�pX!��`)� ?���'#�F� �v� B�/���:!TV��,3� ����x��!O�� ��& QV!s�H��(����隠!��@�(4� d�g!�0� {�. eM@��ԝ��D���*�� u�Ɵ�j��faK�A�нC��mI<։L�������"��==>~��>3��<���>b*;�ڭ<�\Z=�����C>����!>����`�<�O���^�h:�]�>�#> �>�V8�D!����>�=�>L�>>�sx�K�o a> �	=8K��\�>.k�ki�=��?L;�@+��nm�>V	=益<u]>c��>s)�)ń=jJ���SU��yֽ��6>�����N�=Mщ���=B�5>)�	��O��1>'�c���e�b����1&���7<�~�>�M>=1�ևS���xY|�9_9��	ܻjU�G�>m�>���>P�;JvK=��_�WFĽ���=aa=Q*a�5=]$�8K^���=F��=�� �<*%;E�=	E����D�=�	�,ݾ����=�
]�&�&>v�=�B�#mJ�!-]>�*��A+�<�����S;���;6�<�(>�u�=?���")��	����=L^�=,��w=y�=%kȾ��໽�½V�� >@>r/=�1���a���4+��,��.�xT=Tc>�$k=�1>+��=�ຼ�;���f8=��-?�c7��'J>dk�<�[���?�d��`¾�>�`>���=q��9�ὡ
�<|S�<$̽�Z=u�>�3�"3z��ֻ�@����u=O
x�`�Ƚ�gȻz���y姽���>0�ý#K>�@�=�=�,߻%i�׹ټ����͉���>���v��8��=ٮc���j�9н'E��Ӌ>�o���x��Ko3�u����=�����
�c]G��j>�5����P>}m<m�;��h�0����=,U=<H�	��ܢ�峩=�|���Ƚa��1�=x��:�ו�<�����=�y =�9�!���2�;)
r>�d��k�<k�*;Q�B=a�{�u ˾���=�߬>�VA���
<\f�=!j=DH��CW>ean����1|��\�=��]�B�>?��������:����_l��O»MC>j̘�����I����P=��>��><*
dtype0
�
<FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/weights/readIdentity7FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/weights*J
_class@
><loc:@FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/weights*
T0
�
GFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/convolutionConv2DAFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_depthwise/Relu6<FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/weights/read*
strides
*
T0*
paddingSAME*
data_formatNHWC*
use_cudnn_on_gpu(
�
>FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/betaConst*
dtype0*�
value�B��"���F�չ^?j�5@G+%�F"��4N	���O�_c8�6qf�#B@Ň�򔾿�]@.�a�n��������?����y�Ͼ]�����!����@�R�?�v@ �j�l54@�_.�oe?�D�?x�?iO����X�^���?��@@f�?a?J$��Ǜ>*��>�X@�Xc?����Y��I��Y�K?��Ҿg��Z�?�0m���6��zI�͢�20�4X@k�@��
�r��Z@E@�Ҽ?�_S��G@�;�;@�q�?!�i�,���l셿��m��
�3!��A5z�6�罾#$@Yv@\��[��^��>�L�L콾�4%@�L@�Fg�D�? 	Z��`]@��[�?��[��;�4��]�@P[���:쾜�T��@�D�?PTѾ��>Q�/@͢�]��?��Ͼ��Y��v���m'��^d��W:�e�Ӿ��r�[�������2�]��^��^� $O@?7��kܽ�68?-`�@/qW?w ��WJ�^ �@>@�9g�[���p-�
�
CFeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/beta/readIdentity>FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/beta*
T0*Q
_classG
ECloc:@FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/beta
�
?FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/gammaConst*�
value�B��"���>��y?�|�?)օ??��?�B�?��@Xc?���?<�9?w��?�qG@yn�?"`�?��?��?ROz?���?��?�D�?P@�?���?Ǡ�?��v?�][?��?N2A?���?W�-@(�,?5~�?��y?|�>9@�?@�?���@�?X�?��@-�?���?D%�?w@pA�?���?���?�
6?�A@��y?.j�?���?���?aK�?���?U-@v0/@���?���?��@�:�?
U`?8�@��?�@�w�?K��?���?d?6��?�5@��?s��?o�?��?���?�+9@Y
�?f��?�e=@�?�ل?�i@iŒ?:�0?_χ?�ȋ@�v�?���?��?��?u��?C]�@�?K�c@��K@�9�?��?	��?[��?4�d?�h�?db�>�ǻ?i��?7-?��?�5@Ө"@��?��@\&�?�=�?k�@�N�?��?�;�@�L�?Lh�?��F?�Ζ?��H?B��?���?�ֲ?)d�?O@�ӽ?2��?*
dtype0
�
DFeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/gamma/readIdentity?FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/gamma*
T0*R
_classH
FDloc:@FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/gamma
�
EFeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/moving_meanConst*�
value�B��"�b��@Oқ���?�$�>@ ?AȒ4�%Z�?У�@A����:�@�*%@��(�c�/@y^�����@� B@-Ϩ@hV�@m��Ĥ9��Ծ͎���3�@�9�@1�@�E���?J��2O�@��C@�m��W�@V⛥`��@���?��I~@�o�t�i���<@��i<cw.@M�����4x�>�yN�Z�?'}���@�8>�A{�Ͼ���>��Ռ�@��j���@�ٝ@P��@G�#������N�"�-?��o@Y�X� Q
�vH�b�@Ň@(K���:U�K���
�>h��@[��<P#�b�*@Ɠ�@������?�Z��K@%��@!��@�!s�ק@,D+@�x@A��Hk@����C"{?��@�e�@̃��J�L=�5�@w�y?wzAdm��}�u@v&=>OK�Z@:�� ��29A$}��'@X��@�7-?��?I҃�⳿�Y��=�*A���Q8A�\���G?5��?x�	@��]A7��@]Ns?������@m��@�R�@*
dtype0
�
JFeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/moving_mean/readIdentityEFeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/moving_mean*
T0*X
_classN
LJloc:@FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/moving_mean
�
IFeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/moving_varianceConst*�
value�B��"��G�?�E�@i�5@4��@w`�@eI�@��?A(�f@2A��@�С@B��@x&�@�/�@��@���@i�@�Û@=R|@�#�@�ٿ@K�@.	�@�_@��f@t́@^�s@s�|@���@F�{@&J�?6a{@9��
[ǆ@�cY@��@��@y��@_��@9�AT9(@DƂ@�ד@���@�nA�r�@rp@��VA��v@�f@!Af��@�͊@�
�@8X�@�Mg@b�;@z|�@9�,Awt3@~�@ w�@�P�@jך@�*�@�?�@�c}@`Q&@<_�@i#@��@�ɷ@���@�؎@�g@~C�@�k�@���@R��@���@�R@B�@^l@�c�@���@sd�@���@^��@���@~V@S`^@ck�@|�@9��@��'A206@��q@�- A�ҭ@��5@4�@�.*@i�@1ge@ȏ@u��@6]@��@s�@O�@{\�@(r�@ɮA+A�y�@�@=]@��@��%@�.0@�LK@��C@���@X��@�0�@���@wP@��@*
dtype0
�
NFeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/moving_variance/readIdentityIFeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/moving_variance*
T0*\
_classR
PNloc:@FeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/moving_variance
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/add/yConst^FeatureExtractor/Assert/Assert*
valueB
 *o�:*
dtype0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/addAddNFeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/moving_variance/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/add/y*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/RsqrtRsqrtSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/add*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/mulMulUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/RsqrtDFeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/gamma/read*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/mul_1MulGFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/convolutionSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/mul*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/mul_2MulJFeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/moving_mean/readSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/mul*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/subSubCFeatureExtractor/MobilenetV1/Conv2d_3_pointwise/BatchNorm/beta/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/mul_2*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/add_1AddUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/mul_1SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/sub*
T0
�
AFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/Relu6Relu6UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/BatchNorm/batchnorm/add_1*
T0
�$
AFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/depthwise_weightsConst*�$
value�$B�$�"�$@�=A��>M�|��>����5>/#>Ck����=�8���9>3y��p� � 1>K"�=�%>�>@,���M�=׽���=D�,>��;�\-�<im!��>]�*�a�
>�{>Q�B>���=�('>���6�8(>�$�==�彔!2�c��� �p�C>#��=���Eo�~?>��>=�/>}�='2�w�/>؉��=�Z%>d�	>�Lݽ� >
 ��D
����Nx?����Y#��m��=�pA>�Ԝ>�lO>���=��>�{>y�>s{�=G�C�x(>��6>��P��R�>���F�*�(J>��"�3>!�=�+���=��X>�2��A�^�,��2 ��l�̍
>�$>R��L'>W��	���W���$>��>ґ����[e�=Ґ�>��@�],>�>�]3>���e>�.�Mý9r�=8��=		>i�2>��>�$>?k%>��&>�[��� ˾�]�8�=m!'��
�r����\>Q�>�>�>����c>!\D>8�>�x�k>��c>�>J���r>!$����v>E�g�N<u�XA>OA{>��t>��<aO�k��>�8~��Ď>�D\>�*��F2���Nc�4�^>��k���N>��>]�>�j��\0o>���6�R�>[H@>�� �	�y��/羄vp����>��a>�c>2*����h>\\E>�y>�<C>���>0]?�N��>�{{>��c>#AM��%c>����^Kb��v��+��a�m�@>e�e>P p>qt�>�!�='"_>;^>�T>
�[>�2>u�u�L�8>�~>a@4��6�>��5�B�N�>h6U��A�>c����N��^�>�S�>��� ~X�������e���W��ov>�;k>o�j��j>�^��E�bQ���  >�e�>��z�UPt���g>�X������m\>	M_>Y
�>r4�mV[>�܇�AU���->�CD>j�U>0�J>��k>kh;>jmu>ؘt>y���S�A<Ͼ!a�f��>�`���\��L���Q>��O>���=��>�F�>r�#��'���x�=.m�=����H>�I��'>{��DȽ&��=�A'>t��=}�s%�w�>:_2���7>���=(���N���!���>B����=��="d�=��=G�
> ��6/I>��>+����潹��F�Ľ�!>1�=�3y>o#����=9d�=Ք>���=F$�#��=^��(I>��&>�ß=�./�	8�=xVȽD�𜲽� �K�ǽ���<I(�=��=kN>A��>�a�=!>{��=�ó=gF���+�=�7>qo3��1>�X��!����>}EӽC'>�b>�Ƭ���(>��	>}&#�Ш�������)���
>�n�=\ͽ�k>Gڽ0��eiL��+�=9�>�K��)p%��
>0}���x�����= 
�=�/>���Ԡ�=�-������=5F�=��=ޔ�=N�>�;�=Co�=��=f������2mY�ȣ�g6i>�Lٽ�'�����0>,�>2��=~�佡����>��+�Kfu>�}>�G�.4y>����E�#>":��Q2��]c>�tv>]�E>A%?W�p�ܭX>T�r�܆w>�U�>�7��R�>A�A��{o>�Rs���>>+Q�>���>�t�=�e>`�97�<^>��k>ͬ7�,��c>��2H�2hg>�;>�*��/\x��Ht>�pl>�`>Oo6>~�o�_�u>6��Ƅ>�jO>Db>�����i>�k~��]R�&�J�nE��� d�R�����>>j�_>8$���A�>6a>>,k>`f>>)�T>5�<> �p�d�>t�|>��`�9�->��B�.k��Z*�>1x�׌>�2:>�AO�MYL>O�><�����M���d�|�q���q�N+d>�HF>+;���O>�&J�
�`�o��>�y�>�P�>��t��
B�~>%��>�zs�2E>#�b>�̍>W�)�	i>��{�`/��F>��F>2�U>ؼq>U~�>��\>ޥT>�h>ς�>.Xr�ީ��'\�(�w>�Y���!�_�@qf>�/a>#C>��=әa�}�>�w���s�>�R�>,����d�>�ة����>����]-`����>Va�>�2�>��!�؁��=�>��Ծ�B�>~n�>�Ǿ�~�<d���ce�>�Ծ��>k��>P��>ǰ�*X�>�K7�h�>��>�����˾nk�=�K��&�>ߜ>a��=z��{ �>���>�f�>�>�4ȾA�>L&h�%��>4��>���>�E��[��>�YX�R���墾����\���.:`>q&�>���>
����=r��>�G�>Kܚ>F%�>��q>绾�ɻ>��>��V���=Ǐ��c��߅�>������>&(���]���>���>{޾����1&ľ��Ͼ����'��>���> �����>�v���۵�߷�>���>��>"���D�t�͗�>l���O��ǣ>k�>2U�>���)��>�Yɾ��� �>�׬>���>xø>X�>�{�>�ڝ>v��>.FP=����=.�����>���y�I��������>�>�b
>�?���>N�K>9��}9�=��Z>�VJ��JI>"5I��&b>��N�|�,���O>t� >��<>�^�0�0���V>UAu�}�Y> .>>X+H�����r
�l�=�B���>���={_K>�Z>��u>Ǭ�6
�e>�}E>Cn^��r1�F�>H�G�Z=<>��2>y�>�>9�D�'>Ō[>�*:>!/>S�S��"7>f��Ie>J�?>N8>l�O�4�9>��8��|
��J#�U�Y���-�5�=��#>�>hȦ<�@���/>	�>e�H>
�9>L��=c9��>�E>搾X|��u�,:2��F>.�A�b#e>��>�4�2�Z>l�i>��0�/q(��q�d?���5��?>�B>u����,>4�B��0�X��>l�>[/4>HT��C2�k%s>ɇv��N-��0E>�t*>9u8>�
�^�L>"d��kT�w9U>^3>�`>'W>ǻh>D]X>�o;>6�=>��������`�>��H��e>kZ7�m｝�/��dI>�>{5�=p���<�Y���a=c��n>�s�=�G��J">�+�<�}=X�ǽ8�̽s�>DO/>ֶ�=Fi(>>e,�<k6>x}.���3>��#>u��8�>}%�a��=�ڽ��=ߒ>��>�r�=�!�=w��6�N�=�5>Ta�i<���>�i��!>N�=�o¾��ҽ4��=��=V�=T�>=�5���=x���e�>0��=�=���D��=��A��?��^ŽX&���Խkt��L >��
>�����c>R�?>p=�=��=06>,��=���� >�R�=85�����׽��
���>��	��=�� >՛齛[>�@0>�3=�.��yٽ��-�H
�(�=Ġ�=�t��s��=��ӽ��(�/�S�=��=��D���'>���>������=N�>l�>�����	>���Kk̽�Ź=p	
>.�>t��=�+,>�6�=IB>א�=�Z�>ؒ>�: =[�:V>�����"�,~Ƚ(u�=o@>��>��=`���Q?>% 9�v�;>g~>dfU���S>d >"�=���+)��db>��K>��C>ܜZ��P��;N>��a�,�R>�c�>��)�Qh�>����z'>fbV��D>P�<>�gk>��Y�>���6�b=>t�A>��&���B�s�>�O��9j>�!>����2��15>��z>��J>!g>�����?>�;T��k>Z�$>	qS>��3���E>�E?��+F������M��H	�%�!>8�'>��#>�J߾Ŀ!�,SW>�;><?>�pD>
�>��V���>Ѡe>�ν�ɾ^�J�TN`�	U.>gO���c>W<��I�Z�1@*>!Xp>ًN��E��eP�E�h�b�_�c�J>�z>�O��fg<>�I>�_ha�����>s8>��b���/�X�j>8>W����W�%>�)>$7O>�n)�fDY>�D���0��x�=�(j>*�<>��C>�e>֒>��2>D�>$�>�t�>�j�>�>�E6*>$�-�3�k���M�2|I> +>��2=ڿ>���=j�L>!���e��=�I�=���>��=��a����=�ǽ�E��y��=�d=_�>��z�W�c���=�����=��=�Ľ>K�=n�н@,=��սny�=�e=><�
>3
>0O�6 "�=���=�
��^h�����>�V�����=�=ϥ>�i�����=Y��=EҪ=���=ݤ��q�=4�轙�>���=�6>���aF�=��񽮡��	淽�������'�<#��=�o=5fp�	U����=���=���=�i�=A��=����>U�=��̽��{���������5��=U����>�)>礽���=�X> ��%~���5�������ƽ�=���=������=a�4�[］��=�P�=���g�E��=�pν����n�=���=��=Vi���=�zս� ��z��=�B>��=:�>>��=��=߼�=M'�=
�ǻj��>�	�>�� �(={��'t�I�ýR��=N_�=*
dtype0
�
FFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/depthwise_weights/readIdentityAFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/depthwise_weights*
T0*T
_classJ
HFloc:@FeatureExtractor/MobilenetV1/Conv2d_4_depthwise/depthwise_weights
�
EFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/depthwiseDepthwiseConv2dNativeAFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_3_pointwise/Relu6FFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/depthwise_weights/read*
strides
*
T0*
paddingSAME*
data_formatNHWC
�
>FeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/betaConst*�
value�B��"��<S?b�H@K�u����>q��@��8?x'r?C��@Y?�+>)*@,Q@��>���T?(4i?���?���; �P?�n?r��@=��?"�Q?,�?��:@ ��qJ�?�w=@gvo?4E?x��?�膿�f?	���0��>�@J�?zӄ@�H.@��k?�˝?��?8�N@�b�?�,z@D)?%7�?
�?�X�@���>�Z�=~�y?f�a?�2�>��b@ֱb@5GW=��>�FF@�M�@��@�XǾ�b@p�/?������=���?�d�>��>X֯?��>�u�@��?!Ŋ?�䃾�B@��?L��?�a�?U�?0rL?O@_��D�Q��>�q�?쨱@������@nǋ@'z@�u?q��?�~?l�?bT���+@O��ۓ�=�߆?�lG@(����k@?��l�F��@=(�?��?9�?/�R?��k@�H�@4j�?%6M@�X�>�٬?%��?%�>��t@�ol?o�h?u�N@��"���&@�ԟ@��>��r@��>��?�|�>��)?*
dtype0
�
CFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/beta/readIdentity>FeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/beta*
T0*Q
_classG
ECloc:@FeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/beta
�
?FeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/gammaConst*�
value�B��"�C�?��}?4�?�qI?].?vwP?�W?*�,?��@?kʣ?�Y?� i?���?�*G?��I?��T?HU�?l|�?f�M?�W?��W?8Rh?o�?\gU?q��?�� ?>m?2?��c? T?:�?G�C?l�?0�Q?��N?VN?mDm?��V?(J�?Z݆?&�-?f$S?È?;Cc?�V>?W�F?%�d?S�y?϶I?��?eka?��'?��O?��=?��h?Y�?�p�?��9?�2V?x�]?�Y�?��P?<�Z?{T�?F�?��O?�&?��?�dB?6v?��F?\_X?��X?Ո�?��S?��x?;�?Aq?H�X?,![?���?�q@��F?�e?�N?�@ITV?�bh?o�H?�!7?�T>?�gj?�F?���?�M`?O��?�r?T]a?Y?6o�?�7V?q�
@=?�8?�?��P?T�7?��c?�Zp?v�z?
\K?G=h?w�]?fVY?"(?uvK?t� ?{??�zN?�	�?��^?.=?��I?�{X?B�?�ʁ?p�>?հF?*
dtype0
�
DFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/gamma/readIdentity?FeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/gamma*
T0*R
_classH
FDloc:@FeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/gamma
�
EFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/moving_meanConst*
dtype0*�
value�B��"��:X<XI�<�S ��?q>V�"��W?��/?"��>U�Y��E?>��JA����>��+?��?�پW'��Ӟ>�ھ�^?K�?�	�v��=�$R�H7r>ߜ�d��>��?ѭ>@i��!�@>�W���>�R@�Д�c��_\>Vf�`��?j�y?����L��}?
r�>x�5?��?�Qg�~ �>(f�Ԙ:?�xh>�>B:2�h�=?æ���Pm��"�_P�2���݇��Gx3?�!?��.�
�� ?��=>�N�=zx�>h��=<�F`�>RN?��y���>k�F��WS�m֜?������>�ɔ���y�%u>��_@�B�����p�׾^I��ݻ?��J�>L	?Z����&B>#����jݿ�IG>V�@�&?�h����~����>�|�s����>*޻=�x�>-�S�Z=r?ڡ-�;�(�~?�~T>p
?��>��>��@���=�X?��= ��=����d�>�z"���G�y�0�-ӎ>�P�>
�
JFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/moving_mean/readIdentityEFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/moving_mean*X
_classN
LJloc:@FeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/moving_mean*
T0
�
IFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/moving_varianceConst*�
value�B��"�ؠ;�a�>��?�>
Y�<FE6?-�>��2=��->C�^?E<?��[?~@�l>�R�>��>�D?�	�>{;S>���>���>�&�>��z@4�?n��?ԩ�=a�?���>�a?@�p?Ժ>�A�=�`�.`>"%�>l��@WIt?�2�>H+U?�@�ߵ>.9y?k�@��>.LH>�V�>��?�� ?��8>�>R?H|_?[��=y$x>GF? �t?+U�@H�?8|?�׏>E��?ts�>�9?^*�>d�?��?�֨>��=-��<���>8��= I�>�
q>k�>ߊ? :y?�I�?���?�i?��?(��>�$�>r��@;*=>G�?�F�=��@�|>�Ʃ?k��>�|�>���>:��@�T0>���?���?֠�?��?Ot?8A�?�,?p�>��->�\>"J>5�K=+�Y>%��>}V�?4\"?B�%?!J?�>���>jC<>��8=�)�@�(�<�i�>�x�>�c�?���>���=y�q>�}%?���?�H?�>��~>*
dtype0
�
NFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/moving_variance/readIdentityIFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/moving_variance*\
_classR
PNloc:@FeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/moving_variance*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/add/yConst^FeatureExtractor/Assert/Assert*
valueB
 *o�:*
dtype0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/addAddNFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/moving_variance/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/add/y*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/RsqrtRsqrtSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/add*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/mulMulUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/RsqrtDFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/gamma/read*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/mul_1MulEFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/depthwiseSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/mul*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/mul_2MulJFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/moving_mean/readSFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/mul*
T0
�
SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/subSubCFeatureExtractor/MobilenetV1/Conv2d_4_depthwise/BatchNorm/beta/readUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/mul_2*
T0
�
UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/add_1AddUFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/mul_1SFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/sub*
T0
�
AFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/Relu6Relu6UFeatureExtractor/MobilenetV1/MobilenetV1/Conv2d_4_depthwise/BatchNorm/batchnorm/add_1*
T0
��
7FeatureExtractor/MobilenetV1/Conv2d_4_pointwise/weightsConst*��
value��B����"��@�*<����Y
�<�".��d��<�����=�_�����=2�M=/���ơ=(]�< i=փ#=sY=�[1���׼�>>��#=H�<2�ʻT�<bV���&���H�"F��罆����Q^0�hS��*���WP�Bm&��0�7���=9�
�{�-��;��>��=?Rq����<>�<���<>��=o���R%�v^t�䷏=�s�=��<�c�=�ݐ��EW=vٖ��ޓ�DF̽�5�;'���˽�#����.>��G�6=Jg(>_���
 ��
���."��b����9<!ת����=�����/�r�ۼ�0X��5���ۼ�$��C�=�3=B�<��=R���>>5
��N���� �<��=!¼K
;z����@=����x�=]�:�Uz<�m&=G��C��<���<M�{<c�
>7��;ꊳ=v =0<��o���b>eH���v�˩b�b��=󽟼��=N���2ü��>���
�<�y���>�ߑ=Q�.=�h�=�c_=�O�<��[�Yt=��u=���>hQS=�Žf#ƽ$�����=\�)��w>�=S>c���\=F��=��\��n=�ҏ<�	&<�4�b'��j�����͡=�AZ�#��=��
<
�w=6�ǽ�P�	|��*�=��W��4s�K��?�|=O�	=�,Y>d�?��{�Ћ=	�U��#�:�i�<�/�=2r=[�U�}H�؁�|��{�=|(=���:��9~k,=V"=�]=�}J������J=X�p=��H�����aF �=�=�>rj�:�ͼ#�ὲ�c>���>������<�K�>���=�Ò�|?�<cS�=��)�=�N��H�=#e<P� �c����9�<a��;���5|$��V�=�n;@��=��w=(Yf��>
UG=5��<Fx���52=yʣ��m��K9>�K�<Ӣ���=�I=*V\��5�;��ʏ ���v`���-;�d��< �>[f�<�|�=����զ=)�
�{�'�^)�<��-��w���=�Rʾ|K�?m���e��.���9Ž �d=/�}=X
����<�+Ƽ����z�\=
9��ߵ�=��'=/gļ�/<��=�`�_�&<,X̼{
>`%�s�=x�<$]�<�'<+
�<�	�;���������;Ey��.���X<L�+=)18��n�<�C�Á�;y�,=Gˣ<E>	;�>B=z�b<$�Խx>�M��=
��:��<���<�뫻B�,�(�1��J�:�T=�Hv<��=Z�?=u`�d;Z�=��'i
�n=�
h;Jw��ԨP<�
�<ڸ+��.<��'�<L6%?ٺ�=V駼���=t�I<���}5 =zaG�@�n=6��;S�=�BN<F�`<�9Y� ����9H=埏���=r����<L��<rbp=#9<�G?�-�=^+�������iE��(��_�<�7M/�*7�H\<��<UP<��4<S�C�"Aӻ� ><I�="�">��ļ���=�W�=�Ő�_ȁ�!eg<�����@=l�l;]��=�{2>��+�\ɲ��ּ�À<Er��Ϗ<�N����
�N�=�HV=g��<P�s9%\�<��<��Z=��;	Z��ϓ�|�y�}E
<�>��_����\<�="��=?���E!?>�s�mhd��z/�Ɍ�����;�ꧽ����ͼ ������;H)½������*;��9<�^̼9쩽w}�ZͻT�����=홐�J��#=a����5"=+���꽵���M��	�5=���=ِƼ�x�w9�og9�Y7>p����Y��<W�;Wh����>�M���K���s��7�<;��&t��:<��%>128��<�=���=�����K=��>,b����<���<0�<
�p���T���>o\`�ɢ>�?&<�Ԃ���<eO���5?Nщ=���<TT?��=�Ћ=�X����<~>D�Z�6��f���%��X�>��<�����뽚��<������=0E�=).��w͈�����y�������=ҵ2��(;�ؠ��Y�vq�:�!>I
��"��,�j�>��=���:�hȼ�׼�KM=��
=N��Udx=�^>�^=c)��V嚻^�J<}�
=�����ã>m��:�N���I>�k>���<�M�=6V���{=������;��R��Eƻ7͖�$���5����}��x�<�E=�,A>ͧ��d��<���<5���iӻNV�瑿�gZg��z>|�4=0�<[01=]�
�!3�=�"=jQ���]K=��B�C;�=7���q�,�xa='J�g�=�e�n��<�p�=�F>��ܽ}dg�%?	<R���!��=O瓾�=S���n �>]�=�>� vq=Cg��=���	=.-��.�=
�$�"���!�����=]ȼa~˻���=�#��<ƽ�P�7Ui��<�~�<ھ��N�>���>��<=��>d��<�T=��<����bs�������=���=�<�<`l�=��;=�%<�UὛ��<bS�<�*ؽpz��0�>��=�tQ�z�_>ʱ<��e=%o%�Le�=3½7��>��3���;7�Z������)�����=���= ����:>4<���l�D>���&(�K2���zj���< R�=v�e���>� �;}�`�F���=����$>pA�:��J��~k���<E��=��:L^ �%���@��JW�<P;<�?�;�)�<;�Q=�F<#{۹��=�0/=4�=Ս½��=�Þ�q���E%=��=ڊ<�Q���\���i��{_�3!�<<�0��q>r�<�E�;����ۏ:�p�=0M���>6QY=��>� �;>]��g���v>?���s(��g>,�۽~>v��Ǜ�;��<���={O�<�Ѱ��K��e;�X�<�
P�y�	��cR>�o߼�i=4���؁��8�=3��pMżzU)�Q1��@=:-�`=ҍ�<�üW5�<C�<O������<[B�=fd�>/�$=��<�׆=4M������Q
�z�y��>�<�%�T0�?�;�n�<%)+>�
�<��>=�3S=��ݽ�w��T硽�/��>�8=Ö�$
��ﺼ�kC=�D�k�0��~6=�J��o;
�=�r
=����ϼj��=���+��<p�7�?˻=5ǻ��<��q���<	��\���V�<�S=�ǽ�|�=���TjP���E;G3����2�39g=n��V��=�|�����(���~l�>r�B=3��>Er�<D'=nI��kF;ݿx��X/�����@;�;�=�����<�+S�����2�=�c��\5=K@�뫍>\�A�tp�u֙=��/��<��:��D���O�S<J�X>-�(>�z,>@�n>>����n��:E���\=����>;����c�<?�+=��7�@Y��-�c�Ƚ@"��B����9�#���Hb=��?=R�>��d=�JW>db���p�»�=�/�sg�e�=JL��-��\>��=GD��I+=ݜ����z���K>��h�{� �V6�<�u���k=�]��2���_�<��D>��=c���{+����>(�Լ
�?�����z�Cà���=������4�o�� @>�ֽ��;O�޽O6ӻ,;�>�w������1_6>7w�=�k�wL���=2�=n�N=D����6�*��<��=�E>9�%����<�4T=�.O>ucཚ�K=��ռ�B�=�ݮ���3�'�֮����<�+r�.zc=�����<�����2j��c=���>\߻��߻���2=��3�����D��K!���C=m�_�[�<r�<���H��G4�aqj=YM>�6˼/!�X�>�h�=�� =���=���;����(T�>�	>z7�ci�ٶw='(�=���/߼C;-�3�2��=8�����0>�h=Z=R>�5C=��V=�")>��=����K=�Y�|��=�y�<?�q=�3�>��;��	Q�	��=�L�2
��[u��4�=a;=����
>�
�<F��.G��Q�,>�Ľ��ڽ`�����<^�X�U�*<�_>J�x���Ȼl�"?8�ٽ������<�?0�������;�=H i�O���r��>I�<��C�gr�=sQ�5ټ:�f�V���$}=z��7�a�UĽv�=Sň=�41���ӻ�)�>�Z��G��=`��h!=2��<swa<�׉�&���	�=0`��Ig"��=�=�	I�L���+f�0[!��ż�O%=����;��=m��=��y=�����;��8��=���=��u�2|=6g=N� =��<�ͥ���<t�<�ٽ��z�-��=n��=��wO�=ϥ��S��꧑���=Ғ����=�%�\�����=�]=��<�����R��6��}2�ʁ�<��<���>�Pl= vS<��=ћ��Z�o=�j�>*nC=�v@���.>�5�<�
E�6~�ˡݼXU�����o漷
��X�ݘ�7�*;��9=���<�E=?"W�藖:�=� ��3N:=�#3�9*�<�`�=d.�<�+��ǽ,�W��B>}U�=������<D�����<!�=2�,�Q����><�(�<�y��-iлE�r�f�=p�5<��!�O��zȂ=���UZ]�Oy�<`�<�jd=G'=�
���<�Z�=�r�=o�->�Q�=��i���<$'w>��Z�<���l>�p�52d=�`��Ш�+���T2=�=�M��=�<=S��=�W<w�J�1��<�9��ey�����h��>nK�=T�Ľ9�n=��f<a��<?xz��A��^ڼ�Q=���A=ӡ��d�=��=/����c���μM�=
��,��>�ʼ�pf��y]<�Ɣ=��%>���=\�Y=�N�<{��R��U�S=�=�gi�)�=X�I��A>�~�=VE=�z��+��{�k=�b
�m�;J�W>l-'=�
���ǻ��!�(;��C�o�=̨n��\(�>'����ʻ@+B=��м|=c�޻d����X��=f$��ޜ�<����V%�~�¼��?��?��A�A=Bƺ<������<�|=t
o>�o��逼2b����1=!����P=Q;x�Y���������=��˽�=7w��E��=B]= �T�?�ҽԵ
>Q�>�TԹ�
�ޕ��� �r�D<�Խ�s��W2�<�>���K�n=�H<Y�<)�ü� ��o9��]N<��#�� ���>>bڋ�����U���B>9��<�ὛU<��q�CϦ=��>d����νq�==4�=�0��j�c��<<{z������(�$8y<#�=BC@�>�>FZ�����=f]��>=�>p2��3���
��p\>A:>��>>f��<��>�
˾0��>��=�v���H>�;�=�z=�ۡ���:#�;H>
��<w�w�-�qK=�T=<'9J=�^ɼY�<?Y�>߄_=�vؽ_�ɻ�t�>����@��c�
��m�КV�ŵp��,>�T:>d��=W�=>c����V��;=�j=��q>��c=�ګ�T����l�^m<���<_������<�p�<%��=��==w��ʼ:����<�)C�[D3=S�>���=�2��� ?w��=��ѽ� ^��c�=I!=
�	�v�
��	�i$վk�T=�J�=g�\����<�G%>�����Z���H;��B�Sǉ=
e�=�L��>�=ja�����~��婟=�=��=,�=�����<��z7�=$�"=M
 =A�ؼ)܁�|��=�1v=J�L�~�=bP�b���E>|aI=�{#�&ƍ��AR=�$:�؞j=���=&��=��~=m����#=@l>�q9=s��<�G���Nl=�
<��=Y�ͼ��N��=2�M�~�?��`�=>��>C�m�eY^=��=k����e=	�9v=c=3
�=E:>ˠƽ���=��[�A�P><�g�v>�6�=��;�\�D>��>&$�>	�=*���@2������=�͝>�rO�eU��7DF���ڼ�?��c�f��X%<��}�֎�h�0=��<�v+<�W=<�6=<�=����F����h>B�<�T�<�v/��"�;�վe"�>����f鷽�a��|;�<4C����	>��=�P½�!ؽe�!=oܺ��!��TG>1/=,�>�7�<J�=m��;�C��W�=�=��M<�2پ��>�Z��K�V=��=�?]>�ܾ�}��Bܽ��4>�?1��z >b��9�hh�uG�=洼o������=<2=�����L�>X6Y��0>�_k�EC?�_6�q�<����<�i�"�>�B>�X�>��=>���;saf=t�=���=e�=�P��JE���=�{�2��=H>V�jr���XD�s�=�ϼxB~�=�+>"��=��>B촽54@��J�=(|��hb=bKq=���/G�-��ڥ8���0�=���i�I�+�ýb*�=��a=wP�=��=	�a<7'-<;��=���=��Z��������=3*λ0�F=<��=���<�s���:�=/�*>��λ\��<.��`��=@c%�������=�2=�R��_g��ۚü�P�=�\�;�'�>��=��=��=��=�_�<�r��B�=�E��ѽ�;눽���<0�Y��� �~���6
��R��V����=���N��"d��f��4�^�����s�0�;���p]o>	�^=_�7>�VT>_>��6½/�_��$�=�2:<_O��9+=��-�� 9���I��V�;<q\=���=���<���=�J�>)�6={�p>(?ᢃ���	�ߩ�<�м�S�M鶽���/�;�z���_=O��.0�ח=������-�(��X�<��ռĹļ�A��ֽ�<v13<r��6�^<SM=���=�\�ڞ=�(?���<qR�.��=q&q�t b=5U�.�?����=�kμ��=��<j]���ڽ����~h��v����=x:=�}�>!���K����=�-%;I��J��=f�5> *t��!<R|�>o��<�HI=���<w��<�$�=�F����<�ry=R�� ؠ���F�mD�<ħ��QM�KH3�W�;�w�=?F=��=�&ȼH&3�ě�Eq�ٝ��Q�={Y���'߽�6˾�4�=3���Κ<�,=��̼Gq=�m=��~�����3W��Xɽ D�a��=�\���<�0Q���{=���:�ͼ�
x:��I>:K��L3='\�=��F�,T�>�^I�5��qB3?0ż�2��w�J>ػO����<#Xȼ�=�v�=�e<}��<E�R���f=�H�߹Z�<�=ٰ�<�
��`�^�>P������8��r�;�	=�O&=i0�;W��=zr�G:I�]A~=�8>�B\>�����ۨ=�����X�S$_���5���;�Y׼����=̊b<��W<U���Ak��9���~I���U��v�Ž�:>��/�-+�>ȳb��K"=�s=�A�4~��O1��	�<��󻯸�����;(�=�p=��ڽ~��=�CF</�%l,��
�b��5/=��N����<G{����;�b�<]dW�qA�8�F��� >�y����<J�> '�[��<�G����q�&^���'�ʒ$<�ݼ	�<�SH>w �="�^)?='u��k��ֆ�Ȑ	�	�ռ)�>��E;�����>�b�����=y�־L��<���<���;��=�?�J�F+Y�ARy=n�=>�����<��=�
���0�x2�`7�=o��<c�<+(P=�L�=��=�0 �4�$�&�ʾ�N�=��������D����e�cs���W�ZK)����J?�=���J{=�
���S>U,�<�`���%%=Z�<*A���h�=�[�o��DL�ˡA= ӾM��*���q=�$=�����3�=�Ϟ<*xZ��\
�~�=�?�<��<�5l>=;��*�m���n=�'/=l�Y��	;��=T�<- w<ޥ�I
μ\�v=�⚼4��(��=�$��%���`=C2��ܶ7��,>K/�=����i7I���D;��>h�1<���3�:��=N��<1ɽ�ۜ��
�<\=���<1��=˚��7c�;��=:�=��r=�}E��!=�����x�=��s:l����nh�������=��<ު�;T�>�=E�{=P����y�<�7�:�������=��j�6Q������M	�o�F=�k7��E>�]��-�f=�SZ�rx���t�=@�l>7�r=�č=���<p�=r?>�==�6=sF�PZl=p�'�F��=e��$�d��?��ƅ�<��e���&�5�l;��>��վO�=o
>��1��B?�X���/��3����=�.�=7���AWG��ބ>�A˼�ۥ=&�d��@-�k֙=6I�>ݴѽ�Ur<}��b4x�щ���y�z�ļ���<��T=@�=��n��󒽖�<�|[��2��xj���������� >�D�Hr�<�h������=�Y��T�=HJ����>ڿ�;�x�=�.��Ҏr>�%�����<Y=9�B>~�[=��=b�ĺY�^�����}k�=[���ȵj��Ֆ�o�_>�x�=*���, =Q�޽��u<Ȍ?��=-u�����>��>�ۂ�RFk�5���w��=���@��<}a����=�����E��b>��K=<���<�n�:�X�>�x��!�J=ć1��)7=��	>���=��(=�>κ���ڽ��}�z6�=��{��ܙ<A��=RɽQ�X>��I=t��:���<�+��xr	�T�E��<=�0�>���;^J;TH����=�Y=�0n=�uv>����������ċ>
���x��^X�XK���J�˸�<)��T��`~���n$�j���N ;p
�٠�V������<��=� �>��2<]���m���*����=�|��$�W�=��=*μ5Q��,�c�ߓ�<�a<�ӳ<��⽴v�=m���ۼ�Ի�T��=m���������3,�ѱ�>�2�����>�¸�D�����V����=Ʒ�=���R��;ivd>�
#>a7�;K"�>/��<��;��=4�9�ۊ��D�>n�=��=�ҳ��t�>YA�<���<�$<�f�<��B>� b�f�껁$�<_�彯_]�g���@���k�<,	���J=ƺI�>�: >!�<rÂ���̼Q%=�(=���=aPb>�𽋖�Z��;dt�=���E�=�Ɏ=�d�=��� O6>zD�|o���#�=FgK�9��=|����
= R<��;c>�1�;�"`=x$����7�ffǼ��D�sU���eX�6S���K��u<�<�>��=�>���C�K>�l�<!Ѕ��lM=ಀ=��h�^�<>1>�E�=��ٽ:��N���b}<$����xș>vP,=3��%3='��<_:��l��o{C�7�.>;�R��A>�8_��ɏ�"-*>sF�=��{>�;F`��Q�>l����=-`�=^Z
>�w���h$<ѮR��x�~������=,Ц�����}���K>2i�=�%=���="G�Q`��`Ҽo��=��5��5=��c�O��>�/��!ܾZ�f�`-��!�<�����N<��^����=��n�7�E4�>���<�3ƽ���;��B��L�:|�>ݬ�>���2����Ͻ臱>Օ>�1�+d���kǽ��ɾ� S>���=��-��W���;�V3G��Y=���
@�������>����2=�b>S�x=��=c٥���I��.�=V�{���>p�[�֓���8�<l����q�=���B�ּ�	�����}���+=Z��=n�����<3��=�FM=�JF�%�����=��D�3=m���j6�=�A(�� =��A��k�f<��v8�(}=�ڟ�+R�A���}���������<Z�
�h7q=�ŋ>�S6��)w�ݔ=��5�`4*>�ގ>�j���<@��<�c�=�|����=kw��vӻ,OI�8�@=$�Ͻӕ8�Sb>w'��l^B��W���A=Itq�G�!��*>/��=
�<L�X=3SB�l>k�f=���=��=v9:�h�\�"�{�*>+�=�s�=e洽�\=��j>�P�<ƾ���=ù(�N=�@r�iQ�=��=���5��>ļ�� ���`��>,=3��b����<��u��Ƚ��ӽ����&>��s���|=�q���D=�~�Rk&=�}8=[G�;"pf�bI�2�l�﬷=7P?��=gA�<|�d��I=�_X=0�a>��>Y-�=��p��O)>ɿ�=�?���#=��=\�J=�0<�up=3�@<I%�<ρ�=����>�ļ�(E<�I׽�W�</��Z�T=86m�
�5=� ���=n�=��9��K�տ-=��/�3��=��;K2�=�k�>P�=�|��?P< �i>T�=���=�x�<��7��S>8�e��(=h����6�cM=��K�D��%Q��� ��z�����u֕<L�C��U�<-����q=>�R���Y�>1K���_6>8�>MܽwBl>�e��4�z<�<p��=��'�I/��%=����L<���<U��=$�=��a<܄�=o����l�_��=E��K@�q8�=#��=��&�Usɼ��ؽa+#=00>���=�\�=�/
>h_i�Ք�>�3���)=�P�=5F^>��W<-���Sw?<w�=����^�=���=q*�<@%�=v�������*�������=�[�����<o�>x���nF���,>��<���O>��=fYO=�����m>�#�<(�>c�ܽ��$��%I�w�/����= i�=Q5���;��=�QM=
C��yD=�q"��=����7^�%ΰ�G�->+׹=�;Q����<1�<nl�=ӆv����a1�=�-�;��i=O'�=�K����>����=�v>��+�	��<喔=�U�<�z��م�KY����
>	�s���� ����<�Q^����t���+~l�1�=d]�<�=��t`�st�=��>����>��1>?aE>�$�=����j���i>Y�,�+>��=V:=k���'�=�<�X�>���2�=s�=u>sc�=)ԍ<k�'>��=45=���>����D>�>�*!=0��
�?=�ei="9�=�.���qG��`�?,>�'�;�(=Pl��V)o>eK	�=J����֫=��E>�PH=���/�c�:U=".=��1���<=��3�q��qn�<5�=B⻻���ܒ�=Oƭ�_ޤ�B����gɽ��S�b�u;�	������|<�'�=0�ǽ�����=� =;3���2��Q�Fke=�kD=���=�.E�6"f;���nM���<��½�Et��</
X>R�k�
��<&=A��f=K�,����<�>y���8W�����G��T�<!g�<� ��jk�=v\���^��ѩ�=Z���s=P��<1�=���=5F�>ՉX>
d=[�b=x�>1�:=h���cG=��S�ʸ&=ge�=,��>�E���=��<oPk��O�=>-(=e��=(�>ސ��T2��
�<�p =�"t����<���;�+&��S�=L�<���<Њ��{�2
��C[<����$����ό�=��>*g�=oK�=nڽ����-߼��h=y�i��z=Tt����<�ჼ�=� ���]�-��������A>��u>��� ��r�?���廆~|�髽Ē=�P�=�~�<R堽�Ž`�E>	�=���V*��ƌ��q�<Р�I��<e*�������K�+b˽�a���A[�{�l�����+Ը��y�;`�==ƃ�<>��
��<l���o�l=� e�ϧ׼4x���D�t��<�y¼D_$=��o<J��%��l�~��(����=O�S���@����;��"� i�>p:"�y>��)��Rb�p�о�ą<��˽���<��=H�?�иڼ���]P4=�r�)ѽ2�M�\�(>b9�	�=���=Vr���{f;&�<&���~��=�>����P;�;�O">V���B}m=@AP��;�2������=+'=���(g����<0Z��C<Vu�<I�"<�uQ��L���y<7��;���=�_M=�;g<�C>�󼵔���K��<�	��JT~<Zґ=Sxͼdej=����r%���<^ɼ���<v�v=o?:�E@=ĐK=�{�A(;;vZ=��rݺ�5*��α;$��GV˽#z�<�Qݼ^
��t7=�=�;
�ܼ8E>���d�����?�=�B<=�޽Q
>����l�<[?=�K���������o �A��<�w�=g��u�>��A��T��O�9�h����=�U-<�ýt�T=�=��/�	�{�\=��=S
��?�'����<r�gzq�P.�=�*#=t����`>����A����ޙ��:cƽo}X=�]>��>��6;�
��m�=�U�>Nۂ<�8Ӿ,���6<=@<	�"�!�=�o���"	��)��<�Y��!?�KU=�<��S��=$:��<�y��U�=ip'>;2��\X=�z�n6=�Un=J0�=�i��#���н�Ƽ��<�p*�D�`��R��=?=�zD������<�~׽�B���E�=�R��+w�=0��ˤ�B.Y<'�Z=1�+�l >S�W��?>8茽7
�vDѹ	�=s��<<�>Pm�=~��i[�l�ƽ۰*>�u���<h��<��L�v�X�c}=db
=�Ǹ��м���=�sż��=��L���۽_�j=��н=����_�����`>�nC�L+�:�u�>���=]��9����>/��/5M<kW����=� \<D�=����9�B�2v��"�=��0�=�,��k;B��j��J��>�f�閰=��M=�j���L|=�,�="઼��sz���#?��?Ѽ)U�>c����>>�ԽXn;�*(X=�C4����=U��=_�<�
_�
A�<���LԽN��;����7��>t�<̅��V��,ͺ-鵽[F�<)��;������;R�c=42���f=;�>�䏽�O=��7u=�@J���G=�ϼt�ֽ`�
�
{��3�3�(=�|<�G���{=���Q�z=.�M�f<q�D=�bнq9T��?<R�>�=�<>��<�M==��=��<JE��4�<j��=ܙj�'G'<��ݼte�<I�<{����F?<�gܼ�k�=�4��k�
=!)r=�8���r����=-�Z=_�=�L�<�%�<����b�c�X�!	�<��,�{`=�5=�Pa;��=p��<Ɍ��N/t��gK�dI���g=JHW>�n�={�=�VT>�E��ɕ�>*��ѹ�=���uW��y2<؜�%hP=���ޕG���?��	��Tչ��&=�5��7'=���=�H��Ջ��|C���K<n��=�C��w=�Oy��U�P~d�3ip�b�j=���=�X����{<*
��o�<�?(��8r�TI��������Y��wټ�^�5�T����=R��=���8��=xm�=㍐;�<p�=��	=�@����	�M=�^e=h3m=���=Tʽ�<�I����=��
�����t�;�V�H���.i���[��*��=��-=p;��v���z=}0x=��.=C�D=��ܼ[S�Ż�[v�7�d�ԍ��X7>>�b��n�>=���*���([���)<莐<���$�*�M
���^���"����|?
>��@�����=��<,���=(>񒓽��G�8=+D�=($m=\}U<R.�=��C<ݮ컡C�=L�����~���V��u��j�<�O�>B��=�l3=�(>!d�<@W>��=���=6��=q�:��F>{���߽�u�<���l�s���	=Y�.=.�I=a���p< ���;�]�=�NH�v�"��85�=�<51�;b0B�ak��̐�+[���H"�9��v�=X�d<s�B�����=�����S�:tۼ1J
���<�ܹ��ɽ�r��Ֆ��j_�������=��$	�=0&�=��e< ��=���=Ί`�W��<�j��7z=K?=c�<�~4?��i9jM�����!�=>>ϡ��\1=й>?޳�=�;����Dz
>1�z���=ך>�8�<X=�=�6[=�s�)e�>����>a�,�٘���ƽ����{蝽���<�� ��1�>`�;��]����9�E�O3�=��O��nA>U<����&<J�=�ӵ:Υ�=+�X=��
��l�=���<��E<���>�Ry��E����T�AU->%ݳ��g">��g�pK!=����"
>�ȼm�b��Q=��#��M��(�M���@= �����]��\�����<���;}ɼ�<��(U=a�U=>Ǐ<��<F4�<
j��V[D<�o=j M=.���EG=���=.3�:�
#�l��=󏑼-m��)�<��=�'=q!����<�<׽=�t�=� �=�����5���B���a<�nü�/=7#<E�
�==����Y>Y�����=ᐽ<�wI����<���=f���ޫ=t�<=n��m�u��U�����������(��h������<.� Qa��
���޼�ټ�zP�b�ȼ�B�;@�>�K�>Գ$�m��N�9�<D������n>j+B<������H�R�.2��������=�F�=���<0�,����=HV�>�Ժ�]�ǽ	��@�<̆�����<�q�����=#d����.�H�����=���=s-6��N-<�i�;�|Z=�(�;��D>Jh1>˞+=���<	��,=���
u�=9�=N�L=��=�Q >����ļ��#�N�Ƚ����$ �M�S��M�������;�� >��<\�=q������;��(>ͣ�;#�g���!�T,���k>�0>�Œ>�ݬ�5�7�
��<�*��a)=��Ľ^�;O�Ӿ��(���k=p���.�>D$#���>�l�����<��۽��G��9B����=�/�=*u�;��2��P�;�;��=@�0>�?>�}��~	��*>���X�7>�a�=*˟<I��=<ӱ<����=%-g��C=��=�����=P����Z��_��s0�<A#���=����#!h<���<�l4>�+g���S��M���7��<��G��[h=�����8�>ɺ�wY��~�=i7�<M6=:��<E�=Ғ�=
 V��+E;r��:~,=���<�i�;�q>�,q�h�
���=,��=�==Ҙ=

�=uN��༃\�=v��=;zb="�K�Ij�<1E��R�T�������
��=a�>��/=DC>�]�EA=d'*��xZ�x�l=�Y���D���9=�n��ݡ9=���<3�;-���݋����;)�P�Q��ڢ?��&�(V��b���m4�F
�(�d=5v�ϙ(���;�ƽ������=�#b���=ux����>��=�1�=�H���u��ǿ���Qh=On��I�<���<��?�a�TϽ=�-G��Յ�:u�<���=_�<\W��ĺs�Dg���=�ז>M3�=��=�:�<2Ø�+N?�q>�u���3�dO�'�h��F-��>�=��=�]�<�fw�Qѩ��">! +>�s��HM>��Ž�1l>�h��T�>�lk>�t#>=���P�=�?=�O>����� ���U>���=�f�<���q�����G>��v=��Q<��)>3I<tS����>�Zu=(��H�<���S�k=�0�������_��h>����2�='�<��K���1�%����o6=�:�ѽǼxy�<�M��1�������|�">��<0ˁ<V\��]%�a��=z�!;�Φ;$w�n|(>fX�<���y����\>�vý�^����=�:o�C��=��!=w�K��ǽ孼�9v�=�*�=G3=]��=����6�cs�<�i�� ���Y��-U����=�O >���2a�l�=*�
>��S<0Z[����k/>��$����QCx��`.<��>��j=��W=�	����=�[��N\�>���=�����>����<YX��o�l�W�½��"<���=x,<��d&�>�����W8��kD=��:���F���5��8Y=��)��s��=xY����=�<�_�>qh�<
b�=%}>t��7���؄>��=�=�=* ������r;��U�`>0>�	��>�=>�:�E陾޵;���;*#=�;`)�=�:�=0��=���=Wt+�z�!��(Ƽ�����a��LM �m౾�u/�oB�=x���y�3�	y[=7����6�<������=kip>��
=�a�Չ�<�7��"���=�O6�i���V��)��=�L�A�>�c�<T=�9���?J�@c4�PW��y~�<��<+5q>�.ν�>�kE�
���l�;s=�)��\�c==#�=�}Q�P���=M��쌗�C�=I�=����&>��@='n�.�T;�Q^=@><�>y�>�On<��:x��<v[=�ې�o>�=�ż�8Ի����4������=@_���i<�`����<�aӽ�KA;��r>Ўս
9ּ���<8zr�KZ�<��=x�B��fɼ�����e�=�}����=>ޓ=���£-���Ǿ0w=hkL��p`<>�!�r+4���H��;*<��#>XR
=Vb�=�_���6�=��e����I�R����=d�ڽ<�����<*�#�}뒼[N=�ӽW{���"e<Rj<���C͠=J*׽�p��+�����=������a�aE�>�G���
�uO�����=wN=��>:�A<�5��`�=�w;���:�:�$)<	��=�&>��7�fyy���A=����v�=��]>@�=~�;� �=��=�GG=z�ʽ�;�?����>]Zս/����ͼ�&�e�U������%�v��JP�
>AO=�]��%��=e|W�Dۺ=k׿=H�=IR�9����Ŷ�i�μ�Ĺ7P�=���<��=q̃=
?>�8�=A#�=Cܨ<!U>������p=Ù
=����!�;�c����=��>�N�5�8����=%�M>��=r݂�o��=hZ����a�_�=k��՛�=uL��g<˽��7�&�̽��=R�;��O$��k8���?Ƚ3���y�R���_�=E�)��汽l�F=��=>M�T��n�<g28=��=��;�<F�˽@�1>�5h��&=�	=yh>k��iw=f]r>u�(>ŉ<��>���3e={2/=���<� x�;yF='�>~��=3D;P3q>>X���h=^Y[�a�ʻ0Jb�&t�� y\������=�ּ�<6,��-�=�ǽ�E����н��Ӽ�qE>���:C=93=�� ��[����=�>�����L�YD<(��<����a��<3`��P@I=�=����μ���v�)��ၽ�����W�=����`=��� X�,:��p���2��u��Qы�8�3<��>7��9��$7��Qd=�ǈ�;~:�Jڈ�"�%����;����y,=l��<�&�t+��=6
>Nv�}�7�2��>��Z=p�:b�#���=��$��Y��o���y)����ܛ�=��G=�5��}��=��z����$���
�.W�elb=}V�<��t���>�)���I�:g�A�{	�������5<MD)��E.�`�¹���=�k��� ��;�������Fa����<��r=E���?vN�=WNO���.��"���=�0�>�p���e��\�<�R�=�p�=��[ʑ=�����j�O1�\�������4�;�r>M>���9�K�9�=���-4=F��<ϴ&��7N���3=����D�+=�x�& ��^#�ޯt�/�>�~�=.��<E
(�
�T=�<��7��;�=��
��ɕ=���=���=����~��=�ڦ�I
Q�/dƾd~�=ဉ;,h*� b�n�}��?���绽U;cW��,,>�f��G��X�=gOM�^�,=!�%>h�=�E='��>t�.������& �K��<����8~=z�=+��=��P��<f>��Q=�6����<:�=6�߻���PQV>���=����l��i��kz=`�N=T~����b��)��r�)=a>B<b�0=�v=�r�=&7�=�~d=
)���\����<m7B<-кR�=��q=��=w�=���=˪�=c��<���=�u��)Ļ���=,��=�ц�SB6��+a=%���i޼���=�+Ͻ�fl<#�#>G��7�A�
p����<�]?��"��/���7=�V�=|S=ʧD<��D���~<9�>wA<U���n
½���<����'�;
}=�-<h3���|���,�mL >�Ο��#<D��=@�N=Zw<kX�>x�e=�ރ����e��<�o��Y��A�*�4��S�(�%=:�ȓ	>��=�#�>�z�=t�+�=� =��<��,.�j���kLϽ	�t��R�W ���3=�c���=z�t�JY��#B����=���7ഽ�B��9(>���SP"=��a����:�R�=G����Z=���<�B3=HV=�D��⽸c����X[�=P�ۼ�ӽ�$�ӎL��~��ũ=��=��Ӽݿ5���V�z�;�=�=�I�6F���c�=4��=/���;=����o��='�<ut�=��>-���q&��i½O�=b����>�=�<�����_�D�=�5�d줽��a��U*=�<缫N���׻>8�-�ġ�����<o��<�_��=r����=~�����=�!<�������=h�e�Dc;�G��1�l�d3�=s餽�s�=�8s���G���+�,��<n3<ѢH�s�>�o�=��=�&`w�� �<N"��<��]N��\=5�=t�=B�r�|*�Nq�<�i�<��I�F[�>Q���4ҽ;[">�,8�82�=L{�<���
?;�+�h<`2�=��r����=N">bd�=F��嫽u_~�]�t�gz=�M-�Bg��9���˽�K�=��P>υ>�����"����d[�:��.>��?�>?
���;����'��)�=3��<hY'�E3p�S��P�J��_p��?�<fVP����
Q>���y�g��0���z�=�k>�ٽ���<Ĩ���ս���<J�Y>���<$zu=����-�>�̩�+Y�Lڬ<�U=�;�%>���-��-�����=-g=]h?�J_�9���̼=��r>Kp�;*��>�?=K�{=e����*�M��<u�>�×�ą�͔�;uoP�����!<�{<_����T�=D2�<7ýcnҽ�c�>�u��y&��>��=f��=>]k�];ýh�b=�FJ�rp��z;��<����=�'����<rA2�L��=���<t=�����<�߽�������=�dQ=L�={NF��~ �Q\��Xp��24��bj=G�:�;�=����wȽ�e��x]>V�<N@2=z�)�`m�t;w=̃ۺx���	�=���{� =��;�UT�ױ{���<�@(���r=a��6K��S�'>0}O�����==X+�3C>��=�Ͻ��H=i��=�v�<(�.�!c�=�C�%�><!�����4�=�G�2<>O������=�L=k���=��>�U�<�g.=1�Z=����=�n�ܚ>����$ǽWG���>�>}d�<�y:���|>���=2T�=I
Ͻ�X�=��Q=d�9=ޭ =�cE>e��>��.�1ë=o4)>��
v���E�=z���PT��q��ƴ��P��㳽u����8�_�v��>��*I9=��ּ�{>G9�`�.��kϼد����=�0>>/6�;� >>LD;�(��T;= N�=�w�[�=�ټ:p�=�[=�+�=VU>��2�K���f>v3�=�|+�m���b�<򐘼ハ<�^=��=;YN>��ɾ<tI>4�<��o�D�h=7q�F����<�[�=ѷ�=����2;޽��J�p<P=�<t�=�7�<1W1<f�;�:>2�1����=���=;�B=�Y�=���tD�=�P�= r->Α=��]�%#?�_��Uk>�Z��2s�:�
�=.Ԇ���==݄��:�>~#���*��2�����=�;5=�+b=����yL=�ᕽ�X�>��=r��>rE��{��<��0=�v�<�:�� ��S�ýN*��X= N��C��=�W�=!�<�����7,<	U�����=�<}�!>D:b��=�4I=���U�̽TF��is�4����!�<��A�6z:?1E
>��鼊��=Ԍ��7p=�a> �U��i�����������<�!Ҽ��@�l��=,�L>7.����=�i7=���bͽ�*�=�XZ=�w>T݆�<Mʼg=��=.�r>��#>:�=B
�Հ�=E��q�=���=#q�J#>�'>s><�c�=�B=�G=i���ݻW�I=��{�A��<�ۜ�A�+��P��{7��
�>��[�Z8����=�1܇<0��=�g�M��<
2>�
�=�)��xx�T��f�=�>�=��&=6�;|}'���b=,O�=?˖<�n���p=5�ɼ��={���r�b���<A���kI\������;p��=u�H�kdB�i�_>�u��	����>��>�#�$�Cm�}�'������=I�$����=�o��Y�=`�;F�*>MG>E8Ӽ=���.>��:�]���ۿ����=f >N�>l�C�r|��d���.�;�f��Q�f�+��+>�껾�ϣ�
D>||�Я�<�k�0���>Ǿ����>��;��O��Y����=C�~=�GD=Gc=`��>��#��%�J�n�ʕӽ��	�qݻ�6��K˺=�;��C��z<�̗����%k�=�S!;s,�M�ؽ��=#��mɐ=�Nf��kѽan=C5=��=�WD��s1��^�=E�H�	=RMn��M�=����,�ǽ7%�>��<ѽ��>R����/X>m�1�,�<ݾ;Y�h����땽a\=7K=w����Ľ�A�<��W��Ѩ�m ;�J�Q��
��H�1���'>��=�����>�j�6���2��o�<�t�>��=���=W��z�= �<����>)�=m�a=��>��;� m��:,=�ɽ,�������T=V#����>�A��������bz�=>�߼�("=
۽=�?ƼD>jg�=&�a=[��<���w�>��:ܽ���;�<���(Ż%K�� vH=p��=��6>4�,=swR9��=����V�=��P=K�=Gb_>>)���l�<8C�胕�A�.=<>Z����ᢽ
�=���q���(�=���=rJ/�A=�}"�u$����1�>��<<�=��i>��Q=@�꿴�*t��?�~#���>[ǡ;���׳<[o��4U�u弋g�=�)#��E��Ls�<�m������=Āù�vj>� ؼN蛽F��>����W�=��
�9[s�`u�������9�Qh�=��e=҆l�~��:bk�<\��=b=�>�Aʆ�Wo�=A�J�8�ݻ@�����L�C遾� Ҽ���<O�2�gɬ<#���4Q =��>��_�=�4޽�{�;�&��fv�<0Dh>bE�<� <�x,�T2���=qx>z�̽�����=�"���=8v=s�=��K���
>��=�8<��=�L=;+�=���=�a>h@�=ale��cc>���
�> 8�>��;�$���=/=��"����ʞ=���<�|�=^z�=:�F�?r�9^Z>	tT�Л��9�>r�r�'�a=�Hi�ZP	>/��=�$��IOC��=���J>
���=9E½/��xk�
([=�m�=�}Ľ�(�>������Խ<��� <D>�z=��w�Cv�=�`=o������-����C���V����������<!���{���>6�)>��`>��>{�q���G�А㽞ژ<dC!���z�x��N����<ʹG;<�ν�y,�!�����������r�T<7�
�B��b�5���=�$�_�>�Ӯ��C<��K��q�=�>�rv�C�=�����ռ6�|2	�Ư= ���Ym���&�,�=[�T!��,F-�=�f<.R=�ph�< \,�Yꀾ����8�I=�ƽ���=' �;̍���X:=\�q�e�=:i���Z=���cK��k���R�߽%u&=��M!���P��9G>�����2Q�>��$�I��<�G3��{r>d�ۀ-��O��2;�P�ΑA�t���S>�{�T<<�>\U��> ?>��˼3�#�q�ӽdS�P*>g(>�8>1H>3���wu����U�I~ʼ�sE��i�>x�ܽ�Rf>Fǃ����<6��<)����`��$�<N�5=s�1<}�$=�c�>q�Y�k�a���;��>��x�B?Q=�����;�=�,<��>)�=|�<��:L��Z�k�8���ƛC>��K<�>�k�B[�<�=�˜<lX��U�=(i�����<�[����>��\>�9%=CD����w=��z�f���~�Qe�=��|�u׼�G8��cЉ��$X=Z܇=�����w=�	����=V�A�쭽&��E�U=qi��>/ڽ7�I���N�H�]=&�Y�5�˾��=d�j>[�;�r�;Mt��l�
��BK%>�k�g�>TG,�5�н!m���r>p_�>+��="�P�ݲż�����}>Xu����\>G��=�2>��½̀g=j�>WK
> K��`z
���<D�����<�Ƚ=��'4�5�&��&#�K���Q�<�_�(`�璂=��K=�E;�F��<�tB��]F>o��K8N����<>Mѽ�
f�&<?��p�2ļS%>h⼈�N����y�=x�l�Z�L�����V>��%�3���]�:�u�;��� ���3/=��}�O�˽�#>��>�e'=X��>^��g��B:e>�d������I��>;&j=bx�=:J(<�&y�m�>��J���&=HX4=��Q==�t���u�� ��Ҽ�]Ҽ1WT=.�=�#k=��r=#�
��e�;/���G�=��h�c�L>�s�=�fk=��y=�=��`����;�
���<Fʍ:�2���+��Q"��g=7ť�u�L��࠻{ㆽ��<0.="g�>�k�E�=,閽�>??�=D[2=�����S<��x=}Z����@?$g�HzJ�=�����[7��=���-?��&�Kb�<K�=��ھ�>�`�< ��=eZĽ�x�b<m�ҽ�2�;���>��⼫n#����%��o��>�<��>�b�F-	�b
