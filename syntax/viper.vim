" Vim syntax file
" Language:             Viper (https://github.com/ethereum/viper)
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
syn keyword viperBoolean true false True False
syn keyword viperStatement return public
syn keyword viperTypes address bool decimal num bytes32 num256 signed256
syn keyword viperTypes wei_value currency_value currency1_value currency2_value timestamp timedelta
syn keyword viperBuiltin floor as_unitless_number as_num128 as_num256 as_bytes32 slice len concat sha3 method_id keccack256 ecrecover ecadd ecmul extract32 bytes_to_num as_wei_value raw_call RLPList blockhash bitwise_and bitwise_or bitwise_xor bitwise_not num256_add num256_sub num256_mul num256_div num256_exp num256_mod num256_addmod num256_mulmod num256_gt num256_ge num256_lt num256_le shift create_with_code_of min max
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
