" Vim syntax file
" Language:             Vyper (https://github.com/ethereum/vyper)
" Author:               chgue (https://github.com/chgue)
" URL:                  https://github.com/chgue/vim-viper
" Last Change:          2019-06-06
" Filenames:            *.vy

if exists("b:current_syntax")
  finish
endif

"Keywords
syn keyword vyperStatement return
syn keyword vyperStatement assert @version
syn keyword vyperStatement struct
syn keyword vyperStatement contract def nextgroup=vyperFunction skipwhite
syn keyword vyperRepeat for while
syn keyword vyperConditional if else
syn keyword vyperOperator and in not or
syn keyword vyperBoolean True False
syn keyword vyperStatement return public private nonreentrant
syn keyword vyperTypes address bool decimal num bytes32 int128 uint256 bytes string
syn keyword vyperTypes wei_value timestamp timedelta
syn keyword vyperBuiltin as_unitless_number as_wei_value bitwise_and bitwise_not bitwise_or bitwise_xor blockhash ceil concat
syn keyword vyperBuiltin convert create_with_code_of ecadd ecmul ecrecover extract32 floor keccak256 len max method_id min raw_call
syn keyword vyperBuiltin RLPList sha3 shift slice uint256_addmod uint256_mulmod
syn keyword vyperBuiltin map event
syn keyword vyperTodo TODO FIXME NOTE contained

"Functions
syn match vyperFunction "[a-zA-Z_][a-zA-Z0-9_]*" display contained

"Operators
syn match vyperOperator "\(=\|+\|-\|*\|\/\|%\|!\|<\|>\)"

"Decorators
syn match vyperDecorator "@" display nextgroup=vyperDecoratorName skipwhite
syn match vyperDecoratorName "\(payable\|constant\|internal\|public\)$" display contained

"Comments
syn match vyperComment "#.*$" contains=vyperTodo

"Literals
syn match vyperNumber "\<\d\>" display
syn match vyperNumber "\<[1-9]\d\+\>" display
syn match vyperNumberError "\<0\d\+\>" display
syn match vyperAddress "\<0x\x\{40}\>" display
syn match vyperAddressError "\<0x\x\{0,39}\>" display
syn match vyperAddressError "\<0x\x\{41,}\>" display
syn match vyperAddressError "\<0x\x*\X\+.\+\>" display
syn match vyperDecimal "\<\d*\.\d\+\>" display 
"String (String inside a string doesn't work properly!)
syn match vyperString +".\{-}"+ display
syn match vyperString +'.\{-}'+ display
"Docstrings
syn region vyperString start=+[uU]\=\z('''\|"""\)+ end="\z1" keepend

syn match vyperStringError +".\{-}'+ display
syn match vyperStringError +'.\{-}"+ display

"We need to sync at each def so that docstrings don't spill into other methods
syn sync match vyperSync grouphere NONE "^\%(def\)\s\+\h\w*\s*[(:]"

"Highlighting
hi link vyperStatement Statement
hi link vyperConditional Conditional
hi link vyperRepeat Repeat
hi link vyperOperator Operator
hi link vyperBoolean Boolean
hi link vyperDecorator Define
hi link vyperDecoratorName Function
hi link vyperComment Comment
hi link vyperTypes Type
hi link vyperNumber Number
hi link vyperAddress Number
hi link vyperAddressError Error
hi link vyperDecimal Float
hi link vyperFunction Function
hi link vyperBuiltin Function
hi link vyperStringError Error
hi link vyperString String
hi link vyperTodo todo
