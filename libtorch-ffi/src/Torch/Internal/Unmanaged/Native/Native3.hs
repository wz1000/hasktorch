
-- generated by using spec/Declarations.yaml

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}

module Torch.Internal.Unmanaged.Native.Native3 where


import Foreign.C.String
import Foreign.C.Types
import Foreign
import Torch.Internal.Type


import qualified Language.C.Inline.Cpp as C
import qualified Language.C.Inline.Cpp.Exceptions as C
import qualified Language.C.Inline.Context as C
import qualified Language.C.Types as C
import qualified Data.Map as Map

C.context $ C.cppCtx <> mempty { C.ctxTypesTable = typeTable }

C.include "<vector>"
C.include "<ATen/Tensor.h>"
C.include "<ATen/Functions.h>"


_embedding_bag_ttt
  :: Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr (StdTuple '(Tensor,Tensor,Tensor,Tensor)))
_embedding_bag_ttt _weight _indices _offsets =
  [C.throwBlock| std::tuple<at::Tensor,at::Tensor,at::Tensor,at::Tensor>* { return new std::tuple<at::Tensor,at::Tensor,at::Tensor,at::Tensor>(at::_embedding_bag(
    *$(at::Tensor* _weight)
  , *$(at::Tensor* _indices)
  , *$(at::Tensor* _offsets)));
  }|]

_embedding_bag_backward_ttttttlblbt
  :: Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Int64
  -> CBool
  -> Int64
  -> CBool
  -> Ptr Tensor
  -> IO (Ptr Tensor)
_embedding_bag_backward_ttttttlblbt _grad _indices _offsets _offset2bag _bag_size _maximum_indices _num_weights _scale_grad_by_freq _mode _sparse _per_sample_weights =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_embedding_bag_backward(
    *$(at::Tensor* _grad)
  , *$(at::Tensor* _indices)
  , *$(at::Tensor* _offsets)
  , *$(at::Tensor* _offset2bag)
  , *$(at::Tensor* _bag_size)
  , *$(at::Tensor* _maximum_indices)
  , $(int64_t _num_weights)
  , $(bool _scale_grad_by_freq)
  , $(int64_t _mode)
  , $(bool _sparse)
  , *$(at::Tensor* _per_sample_weights)));
  }|]

_embedding_bag_sparse_backward_tttttlblt
  :: Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Int64
  -> CBool
  -> Int64
  -> Ptr Tensor
  -> IO (Ptr Tensor)
_embedding_bag_sparse_backward_tttttlblt _grad _indices _offsets _offset2bag _bag_size _num_weights _scale_grad_by_freq _mode _per_sample_weights =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_embedding_bag_sparse_backward(
    *$(at::Tensor* _grad)
  , *$(at::Tensor* _indices)
  , *$(at::Tensor* _offsets)
  , *$(at::Tensor* _offset2bag)
  , *$(at::Tensor* _bag_size)
  , $(int64_t _num_weights)
  , $(bool _scale_grad_by_freq)
  , $(int64_t _mode)
  , *$(at::Tensor* _per_sample_weights)));
  }|]

_embedding_bag_dense_backward_ttttttlblt
  :: Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Int64
  -> CBool
  -> Int64
  -> Ptr Tensor
  -> IO (Ptr Tensor)
_embedding_bag_dense_backward_ttttttlblt _grad _indices _offsets _offset2bag _bag_size _maximum_indices _num_weights _scale_grad_by_freq _mode _per_sample_weights =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_embedding_bag_dense_backward(
    *$(at::Tensor* _grad)
  , *$(at::Tensor* _indices)
  , *$(at::Tensor* _offsets)
  , *$(at::Tensor* _offset2bag)
  , *$(at::Tensor* _bag_size)
  , *$(at::Tensor* _maximum_indices)
  , $(int64_t _num_weights)
  , $(bool _scale_grad_by_freq)
  , $(int64_t _mode)
  , *$(at::Tensor* _per_sample_weights)));
  }|]

_embedding_bag_per_sample_weights_backward_tttttl
  :: Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Int64
  -> IO (Ptr Tensor)
_embedding_bag_per_sample_weights_backward_tttttl _grad _weight _indices _offsets _offset2bag _mode =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_embedding_bag_per_sample_weights_backward(
    *$(at::Tensor* _grad)
  , *$(at::Tensor* _weight)
  , *$(at::Tensor* _indices)
  , *$(at::Tensor* _offsets)
  , *$(at::Tensor* _offset2bag)
  , $(int64_t _mode)));
  }|]

empty_lNoM
  :: Ptr IntArray
  -> Ptr DimnameList
  -> Ptr TensorOptions
  -> MemoryFormat
  -> IO (Ptr Tensor)
empty_lNoM _size _names _options _memory_format =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty(
    *$(std::vector<int64_t>* _size)
  , *$(std::vector<at::Dimname>* _names)
  , *$(at::TensorOptions* _options)
  , $(at::MemoryFormat _memory_format)));
  }|]

empty_lNo
  :: Ptr IntArray
  -> Ptr DimnameList
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
empty_lNo _size _names _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty(
    *$(std::vector<int64_t>* _size)
  , *$(std::vector<at::Dimname>* _names)
  , *$(at::TensorOptions* _options)));
  }|]

empty_lN
  :: Ptr IntArray
  -> Ptr DimnameList
  -> IO (Ptr Tensor)
empty_lN _size _names =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty(
    *$(std::vector<int64_t>* _size)
  , *$(std::vector<at::Dimname>* _names)));
  }|]

empty_loM
  :: Ptr IntArray
  -> Ptr TensorOptions
  -> MemoryFormat
  -> IO (Ptr Tensor)
empty_loM _size _options _memory_format =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty(
    *$(std::vector<int64_t>* _size)
  , *$(at::TensorOptions* _options)
  , $(at::MemoryFormat _memory_format)));
  }|]

empty_lo
  :: Ptr IntArray
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
empty_lo _size _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty(
    *$(std::vector<int64_t>* _size)
  , *$(at::TensorOptions* _options)));
  }|]

empty_l
  :: Ptr IntArray
  -> IO (Ptr Tensor)
empty_l _size =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty(
    *$(std::vector<int64_t>* _size)));
  }|]

_empty_affine_quantized_lodlM
  :: Ptr IntArray
  -> Ptr TensorOptions
  -> CDouble
  -> Int64
  -> MemoryFormat
  -> IO (Ptr Tensor)
_empty_affine_quantized_lodlM _size _options _scale _zero_point _memory_format =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_empty_affine_quantized(
    *$(std::vector<int64_t>* _size)
  , *$(at::TensorOptions* _options)
  , $(double _scale)
  , $(int64_t _zero_point)
  , $(at::MemoryFormat _memory_format)));
  }|]

_empty_affine_quantized_lodl
  :: Ptr IntArray
  -> Ptr TensorOptions
  -> CDouble
  -> Int64
  -> IO (Ptr Tensor)
_empty_affine_quantized_lodl _size _options _scale _zero_point =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_empty_affine_quantized(
    *$(std::vector<int64_t>* _size)
  , *$(at::TensorOptions* _options)
  , $(double _scale)
  , $(int64_t _zero_point)));
  }|]

_empty_affine_quantized_lod
  :: Ptr IntArray
  -> Ptr TensorOptions
  -> CDouble
  -> IO (Ptr Tensor)
_empty_affine_quantized_lod _size _options _scale =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_empty_affine_quantized(
    *$(std::vector<int64_t>* _size)
  , *$(at::TensorOptions* _options)
  , $(double _scale)));
  }|]

_empty_affine_quantized_lo
  :: Ptr IntArray
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
_empty_affine_quantized_lo _size _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_empty_affine_quantized(
    *$(std::vector<int64_t>* _size)
  , *$(at::TensorOptions* _options)));
  }|]

_empty_affine_quantized_l
  :: Ptr IntArray
  -> IO (Ptr Tensor)
_empty_affine_quantized_l _size =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_empty_affine_quantized(
    *$(std::vector<int64_t>* _size)));
  }|]

_empty_per_channel_affine_quantized_lttloM
  :: Ptr IntArray
  -> Ptr Tensor
  -> Ptr Tensor
  -> Int64
  -> Ptr TensorOptions
  -> MemoryFormat
  -> IO (Ptr Tensor)
_empty_per_channel_affine_quantized_lttloM _size _scales _zero_points _axis _options _memory_format =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_empty_per_channel_affine_quantized(
    *$(std::vector<int64_t>* _size)
  , *$(at::Tensor* _scales)
  , *$(at::Tensor* _zero_points)
  , $(int64_t _axis)
  , *$(at::TensorOptions* _options)
  , $(at::MemoryFormat _memory_format)));
  }|]

_empty_per_channel_affine_quantized_lttlo
  :: Ptr IntArray
  -> Ptr Tensor
  -> Ptr Tensor
  -> Int64
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
_empty_per_channel_affine_quantized_lttlo _size _scales _zero_points _axis _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_empty_per_channel_affine_quantized(
    *$(std::vector<int64_t>* _size)
  , *$(at::Tensor* _scales)
  , *$(at::Tensor* _zero_points)
  , $(int64_t _axis)
  , *$(at::TensorOptions* _options)));
  }|]

_empty_per_channel_affine_quantized_lttl
  :: Ptr IntArray
  -> Ptr Tensor
  -> Ptr Tensor
  -> Int64
  -> IO (Ptr Tensor)
_empty_per_channel_affine_quantized_lttl _size _scales _zero_points _axis =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_empty_per_channel_affine_quantized(
    *$(std::vector<int64_t>* _size)
  , *$(at::Tensor* _scales)
  , *$(at::Tensor* _zero_points)
  , $(int64_t _axis)));
  }|]

empty_out_tlM
  :: Ptr Tensor
  -> Ptr IntArray
  -> MemoryFormat
  -> IO (Ptr Tensor)
empty_out_tlM _out _size _memory_format =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty_out(
    *$(at::Tensor* _out)
  , *$(std::vector<int64_t>* _size)
  , $(at::MemoryFormat _memory_format)));
  }|]

empty_out_tl
  :: Ptr Tensor
  -> Ptr IntArray
  -> IO (Ptr Tensor)
empty_out_tl _out _size =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty_out(
    *$(at::Tensor* _out)
  , *$(std::vector<int64_t>* _size)));
  }|]

empty_like_toM
  :: Ptr Tensor
  -> Ptr TensorOptions
  -> MemoryFormat
  -> IO (Ptr Tensor)
empty_like_toM _self _options _memory_format =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty_like(
    *$(at::Tensor* _self)
  , *$(at::TensorOptions* _options)
  , $(at::MemoryFormat _memory_format)));
  }|]

empty_like_to
  :: Ptr Tensor
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
empty_like_to _self _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty_like(
    *$(at::Tensor* _self)
  , *$(at::TensorOptions* _options)));
  }|]

empty_like_t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
empty_like_t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty_like(
    *$(at::Tensor* _self)));
  }|]

empty_strided_llo
  :: Ptr IntArray
  -> Ptr IntArray
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
empty_strided_llo _size _stride _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty_strided(
    *$(std::vector<int64_t>* _size)
  , *$(std::vector<int64_t>* _stride)
  , *$(at::TensorOptions* _options)));
  }|]

empty_strided_ll
  :: Ptr IntArray
  -> Ptr IntArray
  -> IO (Ptr Tensor)
empty_strided_ll _size _stride =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::empty_strided(
    *$(std::vector<int64_t>* _size)
  , *$(std::vector<int64_t>* _stride)));
  }|]

erf_t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
erf_t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::erf(
    *$(at::Tensor* _self)));
  }|]

erf__t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
erf__t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::erf_(
    *$(at::Tensor* _self)));
  }|]

erf_out_tt
  :: Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
erf_out_tt _out _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::erf_out(
    *$(at::Tensor* _out)
  , *$(at::Tensor* _self)));
  }|]

erfc_t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
erfc_t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::erfc(
    *$(at::Tensor* _self)));
  }|]

erfc__t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
erfc__t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::erfc_(
    *$(at::Tensor* _self)));
  }|]

erfc_out_tt
  :: Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
erfc_out_tt _out _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::erfc_out(
    *$(at::Tensor* _out)
  , *$(at::Tensor* _self)));
  }|]

exp_t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
exp_t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::exp(
    *$(at::Tensor* _self)));
  }|]

exp__t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
exp__t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::exp_(
    *$(at::Tensor* _self)));
  }|]

exp_out_tt
  :: Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
exp_out_tt _out _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::exp_out(
    *$(at::Tensor* _out)
  , *$(at::Tensor* _self)));
  }|]

expm1_t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
expm1_t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::expm1(
    *$(at::Tensor* _self)));
  }|]

expm1__t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
expm1__t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::expm1_(
    *$(at::Tensor* _self)));
  }|]

expm1_out_tt
  :: Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
expm1_out_tt _out _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::expm1_out(
    *$(at::Tensor* _out)
  , *$(at::Tensor* _self)));
  }|]

eye_lo
  :: Int64
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
eye_lo _n _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::eye(
    $(int64_t _n)
  , *$(at::TensorOptions* _options)));
  }|]

eye_l
  :: Int64
  -> IO (Ptr Tensor)
eye_l _n =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::eye(
    $(int64_t _n)));
  }|]

eye_llo
  :: Int64
  -> Int64
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
eye_llo _n _m _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::eye(
    $(int64_t _n)
  , $(int64_t _m)
  , *$(at::TensorOptions* _options)));
  }|]

eye_ll
  :: Int64
  -> Int64
  -> IO (Ptr Tensor)
eye_ll _n _m =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::eye(
    $(int64_t _n)
  , $(int64_t _m)));
  }|]

eye_out_tl
  :: Ptr Tensor
  -> Int64
  -> IO (Ptr Tensor)
eye_out_tl _out _n =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::eye_out(
    *$(at::Tensor* _out)
  , $(int64_t _n)));
  }|]

eye_out_tll
  :: Ptr Tensor
  -> Int64
  -> Int64
  -> IO (Ptr Tensor)
eye_out_tll _out _n _m =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::eye_out(
    *$(at::Tensor* _out)
  , $(int64_t _n)
  , $(int64_t _m)));
  }|]

flatten_tll
  :: Ptr Tensor
  -> Int64
  -> Int64
  -> IO (Ptr Tensor)
flatten_tll _self _start_dim _end_dim =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::flatten(
    *$(at::Tensor* _self)
  , $(int64_t _start_dim)
  , $(int64_t _end_dim)));
  }|]

flatten_tl
  :: Ptr Tensor
  -> Int64
  -> IO (Ptr Tensor)
flatten_tl _self _start_dim =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::flatten(
    *$(at::Tensor* _self)
  , $(int64_t _start_dim)));
  }|]

flatten_t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
flatten_t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::flatten(
    *$(at::Tensor* _self)));
  }|]

flatten_tlln
  :: Ptr Tensor
  -> Int64
  -> Int64
  -> Ptr Dimname
  -> IO (Ptr Tensor)
flatten_tlln _self _start_dim _end_dim _out_dim =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::flatten(
    *$(at::Tensor* _self)
  , $(int64_t _start_dim)
  , $(int64_t _end_dim)
  , *$(at::Dimname* _out_dim)));
  }|]

flatten_tnnn
  :: Ptr Tensor
  -> Ptr Dimname
  -> Ptr Dimname
  -> Ptr Dimname
  -> IO (Ptr Tensor)
flatten_tnnn _self _start_dim _end_dim _out_dim =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::flatten(
    *$(at::Tensor* _self)
  , *$(at::Dimname* _start_dim)
  , *$(at::Dimname* _end_dim)
  , *$(at::Dimname* _out_dim)));
  }|]

flatten_tNn
  :: Ptr Tensor
  -> Ptr DimnameList
  -> Ptr Dimname
  -> IO (Ptr Tensor)
flatten_tNn _self _dims _out_dim =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::flatten(
    *$(at::Tensor* _self)
  , *$(std::vector<at::Dimname>* _dims)
  , *$(at::Dimname* _out_dim)));
  }|]

fill__ts
  :: Ptr Tensor
  -> Ptr Scalar
  -> IO (Ptr Tensor)
fill__ts _self _value =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::fill_(
    *$(at::Tensor* _self)
  , *$(at::Scalar* _value)));
  }|]

fill__tt
  :: Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
fill__tt _self _value =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::fill_(
    *$(at::Tensor* _self)
  , *$(at::Tensor* _value)));
  }|]

floor_t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
floor_t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::floor(
    *$(at::Tensor* _self)));
  }|]

floor__t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
floor__t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::floor_(
    *$(at::Tensor* _self)));
  }|]

floor_out_tt
  :: Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
floor_out_tt _out _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::floor_out(
    *$(at::Tensor* _out)
  , *$(at::Tensor* _self)));
  }|]

floor_divide_tt
  :: Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
floor_divide_tt _self _other =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::floor_divide(
    *$(at::Tensor* _self)
  , *$(at::Tensor* _other)));
  }|]

floor_divide_out_ttt
  :: Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
floor_divide_out_ttt _out _self _other =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::floor_divide_out(
    *$(at::Tensor* _out)
  , *$(at::Tensor* _self)
  , *$(at::Tensor* _other)));
  }|]

floor_divide_ts
  :: Ptr Tensor
  -> Ptr Scalar
  -> IO (Ptr Tensor)
floor_divide_ts _self _other =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::floor_divide(
    *$(at::Tensor* _self)
  , *$(at::Scalar* _other)));
  }|]

frac_t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
frac_t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::frac(
    *$(at::Tensor* _self)));
  }|]

frac__t
  :: Ptr Tensor
  -> IO (Ptr Tensor)
frac__t _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::frac_(
    *$(at::Tensor* _self)));
  }|]

frac_out_tt
  :: Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
frac_out_tt _out _self =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::frac_out(
    *$(at::Tensor* _out)
  , *$(at::Tensor* _self)));
  }|]

full_lsNo
  :: Ptr IntArray
  -> Ptr Scalar
  -> Ptr DimnameList
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
full_lsNo _size _fill_value _names _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::full(
    *$(std::vector<int64_t>* _size)
  , *$(at::Scalar* _fill_value)
  , *$(std::vector<at::Dimname>* _names)
  , *$(at::TensorOptions* _options)));
  }|]

full_lsN
  :: Ptr IntArray
  -> Ptr Scalar
  -> Ptr DimnameList
  -> IO (Ptr Tensor)
full_lsN _size _fill_value _names =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::full(
    *$(std::vector<int64_t>* _size)
  , *$(at::Scalar* _fill_value)
  , *$(std::vector<at::Dimname>* _names)));
  }|]

full_lso
  :: Ptr IntArray
  -> Ptr Scalar
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
full_lso _size _fill_value _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::full(
    *$(std::vector<int64_t>* _size)
  , *$(at::Scalar* _fill_value)
  , *$(at::TensorOptions* _options)));
  }|]

full_ls
  :: Ptr IntArray
  -> Ptr Scalar
  -> IO (Ptr Tensor)
full_ls _size _fill_value =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::full(
    *$(std::vector<int64_t>* _size)
  , *$(at::Scalar* _fill_value)));
  }|]

full_out_tls
  :: Ptr Tensor
  -> Ptr IntArray
  -> Ptr Scalar
  -> IO (Ptr Tensor)
full_out_tls _out _size _fill_value =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::full_out(
    *$(at::Tensor* _out)
  , *$(std::vector<int64_t>* _size)
  , *$(at::Scalar* _fill_value)));
  }|]

full_like_tsoM
  :: Ptr Tensor
  -> Ptr Scalar
  -> Ptr TensorOptions
  -> MemoryFormat
  -> IO (Ptr Tensor)
full_like_tsoM _self _fill_value _options _memory_format =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::full_like(
    *$(at::Tensor* _self)
  , *$(at::Scalar* _fill_value)
  , *$(at::TensorOptions* _options)
  , $(at::MemoryFormat _memory_format)));
  }|]

full_like_tso
  :: Ptr Tensor
  -> Ptr Scalar
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
full_like_tso _self _fill_value _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::full_like(
    *$(at::Tensor* _self)
  , *$(at::Scalar* _fill_value)
  , *$(at::TensorOptions* _options)));
  }|]

full_like_ts
  :: Ptr Tensor
  -> Ptr Scalar
  -> IO (Ptr Tensor)
full_like_ts _self _fill_value =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::full_like(
    *$(at::Tensor* _self)
  , *$(at::Scalar* _fill_value)));
  }|]

from_file_sblo
  :: Ptr StdString
  -> CBool
  -> Int64
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
from_file_sblo _filename _shared _size _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::from_file(
    *$(std::string* _filename)
  , $(bool _shared)
  , $(int64_t _size)
  , *$(at::TensorOptions* _options)));
  }|]

from_file_sbl
  :: Ptr StdString
  -> CBool
  -> Int64
  -> IO (Ptr Tensor)
from_file_sbl _filename _shared _size =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::from_file(
    *$(std::string* _filename)
  , $(bool _shared)
  , $(int64_t _size)));
  }|]

from_file_sb
  :: Ptr StdString
  -> CBool
  -> IO (Ptr Tensor)
from_file_sb _filename _shared =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::from_file(
    *$(std::string* _filename)
  , $(bool _shared)));
  }|]

from_file_s
  :: Ptr StdString
  -> IO (Ptr Tensor)
from_file_s _filename =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::from_file(
    *$(std::string* _filename)));
  }|]

grid_sampler_ttllb
  :: Ptr Tensor
  -> Ptr Tensor
  -> Int64
  -> Int64
  -> CBool
  -> IO (Ptr Tensor)
grid_sampler_ttllb _input _grid _interpolation_mode _padding_mode _align_corners =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::grid_sampler(
    *$(at::Tensor* _input)
  , *$(at::Tensor* _grid)
  , $(int64_t _interpolation_mode)
  , $(int64_t _padding_mode)
  , $(bool _align_corners)));
  }|]

grid_sampler_2d_ttllb
  :: Ptr Tensor
  -> Ptr Tensor
  -> Int64
  -> Int64
  -> CBool
  -> IO (Ptr Tensor)
grid_sampler_2d_ttllb _input _grid _interpolation_mode _padding_mode _align_corners =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::grid_sampler_2d(
    *$(at::Tensor* _input)
  , *$(at::Tensor* _grid)
  , $(int64_t _interpolation_mode)
  , $(int64_t _padding_mode)
  , $(bool _align_corners)));
  }|]

grid_sampler_2d_backward_tttllb
  :: Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Int64
  -> Int64
  -> CBool
  -> IO (Ptr (StdTuple '(Tensor,Tensor)))
grid_sampler_2d_backward_tttllb _grad_output _input _grid _interpolation_mode _padding_mode _align_corners =
  [C.throwBlock| std::tuple<at::Tensor,at::Tensor>* { return new std::tuple<at::Tensor,at::Tensor>(at::grid_sampler_2d_backward(
    *$(at::Tensor* _grad_output)
  , *$(at::Tensor* _input)
  , *$(at::Tensor* _grid)
  , $(int64_t _interpolation_mode)
  , $(int64_t _padding_mode)
  , $(bool _align_corners)));
  }|]

grid_sampler_3d_ttllb
  :: Ptr Tensor
  -> Ptr Tensor
  -> Int64
  -> Int64
  -> CBool
  -> IO (Ptr Tensor)
grid_sampler_3d_ttllb _input _grid _interpolation_mode _padding_mode _align_corners =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::grid_sampler_3d(
    *$(at::Tensor* _input)
  , *$(at::Tensor* _grid)
  , $(int64_t _interpolation_mode)
  , $(int64_t _padding_mode)
  , $(bool _align_corners)));
  }|]

grid_sampler_3d_backward_tttllb
  :: Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> Int64
  -> Int64
  -> CBool
  -> IO (Ptr (StdTuple '(Tensor,Tensor)))
grid_sampler_3d_backward_tttllb _grad_output _input _grid _interpolation_mode _padding_mode _align_corners =
  [C.throwBlock| std::tuple<at::Tensor,at::Tensor>* { return new std::tuple<at::Tensor,at::Tensor>(at::grid_sampler_3d_backward(
    *$(at::Tensor* _grad_output)
  , *$(at::Tensor* _input)
  , *$(at::Tensor* _grid)
  , $(int64_t _interpolation_mode)
  , $(int64_t _padding_mode)
  , $(bool _align_corners)));
  }|]

hann_window_lo
  :: Int64
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
hann_window_lo _window_length _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hann_window(
    $(int64_t _window_length)
  , *$(at::TensorOptions* _options)));
  }|]

hann_window_l
  :: Int64
  -> IO (Ptr Tensor)
hann_window_l _window_length =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hann_window(
    $(int64_t _window_length)));
  }|]

hann_window_lbo
  :: Int64
  -> CBool
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
hann_window_lbo _window_length _periodic _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hann_window(
    $(int64_t _window_length)
  , $(bool _periodic)
  , *$(at::TensorOptions* _options)));
  }|]

hann_window_lb
  :: Int64
  -> CBool
  -> IO (Ptr Tensor)
hann_window_lb _window_length _periodic =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hann_window(
    $(int64_t _window_length)
  , $(bool _periodic)));
  }|]

hamming_window_lo
  :: Int64
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
hamming_window_lo _window_length _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hamming_window(
    $(int64_t _window_length)
  , *$(at::TensorOptions* _options)));
  }|]

hamming_window_l
  :: Int64
  -> IO (Ptr Tensor)
hamming_window_l _window_length =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hamming_window(
    $(int64_t _window_length)));
  }|]

hamming_window_lbo
  :: Int64
  -> CBool
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
hamming_window_lbo _window_length _periodic _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hamming_window(
    $(int64_t _window_length)
  , $(bool _periodic)
  , *$(at::TensorOptions* _options)));
  }|]

hamming_window_lb
  :: Int64
  -> CBool
  -> IO (Ptr Tensor)
hamming_window_lb _window_length _periodic =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hamming_window(
    $(int64_t _window_length)
  , $(bool _periodic)));
  }|]

hamming_window_lbdo
  :: Int64
  -> CBool
  -> CDouble
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
hamming_window_lbdo _window_length _periodic _alpha _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hamming_window(
    $(int64_t _window_length)
  , $(bool _periodic)
  , $(double _alpha)
  , *$(at::TensorOptions* _options)));
  }|]

hamming_window_lbd
  :: Int64
  -> CBool
  -> CDouble
  -> IO (Ptr Tensor)
hamming_window_lbd _window_length _periodic _alpha =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hamming_window(
    $(int64_t _window_length)
  , $(bool _periodic)
  , $(double _alpha)));
  }|]

hamming_window_lbddo
  :: Int64
  -> CBool
  -> CDouble
  -> CDouble
  -> Ptr TensorOptions
  -> IO (Ptr Tensor)
hamming_window_lbddo _window_length _periodic _alpha _beta _options =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hamming_window(
    $(int64_t _window_length)
  , $(bool _periodic)
  , $(double _alpha)
  , $(double _beta)
  , *$(at::TensorOptions* _options)));
  }|]

hamming_window_lbdd
  :: Int64
  -> CBool
  -> CDouble
  -> CDouble
  -> IO (Ptr Tensor)
hamming_window_lbdd _window_length _periodic _alpha _beta =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hamming_window(
    $(int64_t _window_length)
  , $(bool _periodic)
  , $(double _alpha)
  , $(double _beta)));
  }|]

hinge_embedding_loss_ttdl
  :: Ptr Tensor
  -> Ptr Tensor
  -> CDouble
  -> Int64
  -> IO (Ptr Tensor)
hinge_embedding_loss_ttdl _self _target _margin _reduction =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hinge_embedding_loss(
    *$(at::Tensor* _self)
  , *$(at::Tensor* _target)
  , $(double _margin)
  , $(int64_t _reduction)));
  }|]

hinge_embedding_loss_ttd
  :: Ptr Tensor
  -> Ptr Tensor
  -> CDouble
  -> IO (Ptr Tensor)
hinge_embedding_loss_ttd _self _target _margin =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hinge_embedding_loss(
    *$(at::Tensor* _self)
  , *$(at::Tensor* _target)
  , $(double _margin)));
  }|]

hinge_embedding_loss_tt
  :: Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
hinge_embedding_loss_tt _self _target =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::hinge_embedding_loss(
    *$(at::Tensor* _self)
  , *$(at::Tensor* _target)));
  }|]

ger_tt
  :: Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
ger_tt _self _vec2 =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::ger(
    *$(at::Tensor* _self)
  , *$(at::Tensor* _vec2)));
  }|]

ger_out_ttt
  :: Ptr Tensor
  -> Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
ger_out_ttt _out _self _vec2 =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::ger_out(
    *$(at::Tensor* _out)
  , *$(at::Tensor* _self)
  , *$(at::Tensor* _vec2)));
  }|]

group_norm_tlttdb
  :: Ptr Tensor
  -> Int64
  -> Ptr Tensor
  -> Ptr Tensor
  -> CDouble
  -> CBool
  -> IO (Ptr Tensor)
group_norm_tlttdb _input _num_groups _weight _bias _eps _cudnn_enabled =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::group_norm(
    *$(at::Tensor* _input)
  , $(int64_t _num_groups)
  , *$(at::Tensor* _weight)
  , *$(at::Tensor* _bias)
  , $(double _eps)
  , $(bool _cudnn_enabled)));
  }|]

group_norm_tlttd
  :: Ptr Tensor
  -> Int64
  -> Ptr Tensor
  -> Ptr Tensor
  -> CDouble
  -> IO (Ptr Tensor)
group_norm_tlttd _input _num_groups _weight _bias _eps =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::group_norm(
    *$(at::Tensor* _input)
  , $(int64_t _num_groups)
  , *$(at::Tensor* _weight)
  , *$(at::Tensor* _bias)
  , $(double _eps)));
  }|]

group_norm_tltt
  :: Ptr Tensor
  -> Int64
  -> Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
group_norm_tltt _input _num_groups _weight _bias =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::group_norm(
    *$(at::Tensor* _input)
  , $(int64_t _num_groups)
  , *$(at::Tensor* _weight)
  , *$(at::Tensor* _bias)));
  }|]

group_norm_tlt
  :: Ptr Tensor
  -> Int64
  -> Ptr Tensor
  -> IO (Ptr Tensor)
group_norm_tlt _input _num_groups _weight =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::group_norm(
    *$(at::Tensor* _input)
  , $(int64_t _num_groups)
  , *$(at::Tensor* _weight)));
  }|]

group_norm_tl
  :: Ptr Tensor
  -> Int64
  -> IO (Ptr Tensor)
group_norm_tl _input _num_groups =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::group_norm(
    *$(at::Tensor* _input)
  , $(int64_t _num_groups)));
  }|]

fft_tlb
  :: Ptr Tensor
  -> Int64
  -> CBool
  -> IO (Ptr Tensor)
fft_tlb _self _signal_ndim _normalized =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::fft(
    *$(at::Tensor* _self)
  , $(int64_t _signal_ndim)
  , $(bool _normalized)));
  }|]

fft_tl
  :: Ptr Tensor
  -> Int64
  -> IO (Ptr Tensor)
fft_tl _self _signal_ndim =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::fft(
    *$(at::Tensor* _self)
  , $(int64_t _signal_ndim)));
  }|]

ifft_tlb
  :: Ptr Tensor
  -> Int64
  -> CBool
  -> IO (Ptr Tensor)
ifft_tlb _self _signal_ndim _normalized =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::ifft(
    *$(at::Tensor* _self)
  , $(int64_t _signal_ndim)
  , $(bool _normalized)));
  }|]

ifft_tl
  :: Ptr Tensor
  -> Int64
  -> IO (Ptr Tensor)
ifft_tl _self _signal_ndim =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::ifft(
    *$(at::Tensor* _self)
  , $(int64_t _signal_ndim)));
  }|]

rfft_tlbb
  :: Ptr Tensor
  -> Int64
  -> CBool
  -> CBool
  -> IO (Ptr Tensor)
rfft_tlbb _self _signal_ndim _normalized _onesided =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::rfft(
    *$(at::Tensor* _self)
  , $(int64_t _signal_ndim)
  , $(bool _normalized)
  , $(bool _onesided)));
  }|]

rfft_tlb
  :: Ptr Tensor
  -> Int64
  -> CBool
  -> IO (Ptr Tensor)
rfft_tlb _self _signal_ndim _normalized =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::rfft(
    *$(at::Tensor* _self)
  , $(int64_t _signal_ndim)
  , $(bool _normalized)));
  }|]

rfft_tl
  :: Ptr Tensor
  -> Int64
  -> IO (Ptr Tensor)
rfft_tl _self _signal_ndim =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::rfft(
    *$(at::Tensor* _self)
  , $(int64_t _signal_ndim)));
  }|]

irfft_tlbbl
  :: Ptr Tensor
  -> Int64
  -> CBool
  -> CBool
  -> Ptr IntArray
  -> IO (Ptr Tensor)
irfft_tlbbl _self _signal_ndim _normalized _onesided _signal_sizes =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::irfft(
    *$(at::Tensor* _self)
  , $(int64_t _signal_ndim)
  , $(bool _normalized)
  , $(bool _onesided)
  , *$(std::vector<int64_t>* _signal_sizes)));
  }|]

irfft_tlbb
  :: Ptr Tensor
  -> Int64
  -> CBool
  -> CBool
  -> IO (Ptr Tensor)
irfft_tlbb _self _signal_ndim _normalized _onesided =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::irfft(
    *$(at::Tensor* _self)
  , $(int64_t _signal_ndim)
  , $(bool _normalized)
  , $(bool _onesided)));
  }|]

irfft_tlb
  :: Ptr Tensor
  -> Int64
  -> CBool
  -> IO (Ptr Tensor)
irfft_tlb _self _signal_ndim _normalized =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::irfft(
    *$(at::Tensor* _self)
  , $(int64_t _signal_ndim)
  , $(bool _normalized)));
  }|]

irfft_tl
  :: Ptr Tensor
  -> Int64
  -> IO (Ptr Tensor)
irfft_tl _self _signal_ndim =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::irfft(
    *$(at::Tensor* _self)
  , $(int64_t _signal_ndim)));
  }|]

_fft_with_size_tlbbblbbl
  :: Ptr Tensor
  -> Int64
  -> CBool
  -> CBool
  -> CBool
  -> Ptr IntArray
  -> CBool
  -> CBool
  -> Ptr IntArray
  -> IO (Ptr Tensor)
_fft_with_size_tlbbblbbl _self _signal_ndim _complex_input _complex_output _inverse _checked_signal_sizes _normalized _onesided _output_sizes =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_fft_with_size(
    *$(at::Tensor* _self)
  , $(int64_t _signal_ndim)
  , $(bool _complex_input)
  , $(bool _complex_output)
  , $(bool _inverse)
  , *$(std::vector<int64_t>* _checked_signal_sizes)
  , $(bool _normalized)
  , $(bool _onesided)
  , *$(std::vector<int64_t>* _output_sizes)));
  }|]

_cufft_get_plan_cache_size_l
  :: Int64
  -> IO (Int64)
_cufft_get_plan_cache_size_l _device_index =
  [C.throwBlock| int64_t { return (at::_cufft_get_plan_cache_size(
    $(int64_t _device_index)));
  }|]

_cufft_get_plan_cache_max_size_l
  :: Int64
  -> IO (Int64)
_cufft_get_plan_cache_max_size_l _device_index =
  [C.throwBlock| int64_t { return (at::_cufft_get_plan_cache_max_size(
    $(int64_t _device_index)));
  }|]

_cufft_set_plan_cache_max_size_ll
  :: Int64
  -> Int64
  -> IO (())
_cufft_set_plan_cache_max_size_ll _device_index _max_size =
  [C.throwBlock| void {  (at::_cufft_set_plan_cache_max_size(
    $(int64_t _device_index)
  , $(int64_t _max_size)));
  }|]

_cufft_clear_plan_cache_l
  :: Int64
  -> IO (())
_cufft_clear_plan_cache_l _device_index =
  [C.throwBlock| void {  (at::_cufft_clear_plan_cache(
    $(int64_t _device_index)));
  }|]

index_tl
  :: Ptr Tensor
  -> Ptr TensorList
  -> IO (Ptr Tensor)
index_tl _self _indices =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::index(
    *$(at::Tensor* _self)
  , *$(std::vector<at::Tensor>* _indices)));
  }|]

index_copy_tltt
  :: Ptr Tensor
  -> Int64
  -> Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
index_copy_tltt _self _dim _index _source =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::index_copy(
    *$(at::Tensor* _self)
  , $(int64_t _dim)
  , *$(at::Tensor* _index)
  , *$(at::Tensor* _source)));
  }|]

index_copy_tntt
  :: Ptr Tensor
  -> Ptr Dimname
  -> Ptr Tensor
  -> Ptr Tensor
  -> IO (Ptr Tensor)
index_copy_tntt _self _dim _index _source =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::index_copy(
    *$(at::Tensor* _self)
  , *$(at::Dimname* _dim)
  , *$(at::Tensor* _index)
  , *$(at::Tensor* _source)));
  }|]

index_put__tltb
  :: Ptr Tensor
  -> Ptr TensorList
  -> Ptr Tensor
  -> CBool
  -> IO (Ptr Tensor)
index_put__tltb _self _indices _values _accumulate =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::index_put_(
    *$(at::Tensor* _self)
  , *$(std::vector<at::Tensor>* _indices)
  , *$(at::Tensor* _values)
  , $(bool _accumulate)));
  }|]

index_put__tlt
  :: Ptr Tensor
  -> Ptr TensorList
  -> Ptr Tensor
  -> IO (Ptr Tensor)
index_put__tlt _self _indices _values =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::index_put_(
    *$(at::Tensor* _self)
  , *$(std::vector<at::Tensor>* _indices)
  , *$(at::Tensor* _values)));
  }|]

index_put_tltb
  :: Ptr Tensor
  -> Ptr TensorList
  -> Ptr Tensor
  -> CBool
  -> IO (Ptr Tensor)
index_put_tltb _self _indices _values _accumulate =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::index_put(
    *$(at::Tensor* _self)
  , *$(std::vector<at::Tensor>* _indices)
  , *$(at::Tensor* _values)
  , $(bool _accumulate)));
  }|]

index_put_tlt
  :: Ptr Tensor
  -> Ptr TensorList
  -> Ptr Tensor
  -> IO (Ptr Tensor)
index_put_tlt _self _indices _values =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::index_put(
    *$(at::Tensor* _self)
  , *$(std::vector<at::Tensor>* _indices)
  , *$(at::Tensor* _values)));
  }|]

_index_put_impl__tltbb
  :: Ptr Tensor
  -> Ptr TensorList
  -> Ptr Tensor
  -> CBool
  -> CBool
  -> IO (Ptr Tensor)
_index_put_impl__tltbb _self _indices _values _accumulate _unsafe =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_index_put_impl_(
    *$(at::Tensor* _self)
  , *$(std::vector<at::Tensor>* _indices)
  , *$(at::Tensor* _values)
  , $(bool _accumulate)
  , $(bool _unsafe)));
  }|]

_index_put_impl__tltb
  :: Ptr Tensor
  -> Ptr TensorList
  -> Ptr Tensor
  -> CBool
  -> IO (Ptr Tensor)
_index_put_impl__tltb _self _indices _values _accumulate =
  [C.throwBlock| at::Tensor* { return new at::Tensor(at::_index_put_impl_(
    *$(at::Tensor* _self)
  , *$(std::vector<at::Tensor>* _indices)
  , *$(at::Tensor* _values)
  , $(bool _accumulate)));
  }|]