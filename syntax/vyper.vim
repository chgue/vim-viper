" Vim syntax file
" Language:             Vyper (https://github.com/ethereum/vyper)
" Author:               chgue (https://github.com/chgue)
" URL:                  https://github.com/chgue/vim-viper
" Last Change:          2017-11-14
" Filenames:            *.vy

if exists("b:current_syntax")
      finish
  endif

"Keywords
syn keyword viperStatement return
syn keyword viperStatement assert
syn keyword viperStatement def nextgroup=viperFunction skipwhite
syn keyword viperRepeat for while
syn keyword viperConditional if else
syn keyword viperOperator and in not or
syn keyword viperBoolean True False
syn keyword viperStatement return public
syn keyword viperTypes address bool decimal num bytes32 int128 uint256 bytes
syn keyword viperTypes wei_value timestamp timedelta
syn keyword viperBuiltin as_unitless_number as_wei_value bitwise_and bitwise_not bitwise_or bitwise_xor blockhash ceil concat convert create_with_code_of ecadd ecmul ecrecover extract32 floor keccak256 len max method_id min raw_call RLPList sha3 shift slice uint256_addmod uint256_mulmod
syn keyword viperBuiltin self

"Functions
syn match viperFunction "[a-zA-Z_][a-zA-Z0-9_]*" display contained

"Operators
syn match viperOperator "\(=\|+\|-\|*\|\/\|%\|!\|<\|>\)"

"Decorators
syn match viperDecorator "@" display nextgroup=viperDecoratorName skipwhite
syn match viperDecoratorName "\(payable\|constant\|internal\|public\)$" display contained

"Comments
syn match viperComment "#.*$"

"Literals
syn match viperNumber "\<\d\>" display
syn match viperNumber "\<[1-9]\d\+\>" display
syn match viperNumberError "\<0\d\+\>" display
syn match viperAddress "\<0x\x\{40}\>" display
syn match viperAddressError "\<0x\x\{0,39}\>" display
syn match viperAddressError "\<0x\x\{41,}\>" display
syn match viperAddressError "\<0x\x*\X\+.\+\>" display
syn match viperDecimal "\<\d*\.\d\+\>" display 
"String (String inside a string doesn't work properly!)
syn match viperString +".\{-}"+ display
syn match viperString +'.\{-}'+ display
syn match viperStringError +".\{-}'+ display
syn match viperStringError +'.\{-}"+ display

"Highlighting
hi link viperStatement Statement
hi link viperConditional Conditional
hi link viperRepeat Repeat
hi link viperOperator Operator
hi link viperBooleani Boolean
hi link viperDecorator Define
hi link viperDecoratorName Function
hi link viperComment Comment
hi link viperTypes Type
hi link viperNumber Number
hi link viperAddress Number
hi link viperAddressError Error
hi link viperDecimal Float
hi link viperFunction Function
hi link viperBuiltin Function
hi link viperStringError Error
hi link viperString String
