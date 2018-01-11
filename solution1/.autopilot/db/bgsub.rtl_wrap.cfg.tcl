set lang "C++"
set moduleName "bgsub"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "frame_in"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 76800]
set Interface0 "wire"
set DataType0 "unsigned char"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "frame_out"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "0"
set Reference1 "0"
set Dims1 [list 76800]
set Interface1 "wire"
set DataType1 "unsigned char"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "init"
set BitWidth2 "8"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "0"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set DataType2 "bool"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "bgmodel"
set BitWidth3 "64"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "0"
set Reference3 "0"
set Dims3 [list 153600]
set Interface3 "wire"
set structMem3 ""
set PortName30 "sortKey"
set BitWidth30 "32"
set ArrayOpt30 ""
set Const30 "0"
set Volatile30 "0"
set Pointer30 "0"
set Reference30 "0"
set Dims30 [list 0]
set Interface30 "wire"
set DataType30 "float"
set Port30 [list $PortName30 $Interface30 $DataType30 $Pointer30 $Dims30 $Const30 $Volatile30 $ArrayOpt30]
lappend structMem3 $Port30
set PortName31 "weight"
set BitWidth31 "32"
set ArrayOpt31 ""
set Const31 "0"
set Volatile31 "0"
set Pointer31 "0"
set Reference31 "0"
set Dims31 [list 0]
set Interface31 "wire"
set DataType31 "float"
set Port31 [list $PortName31 $Interface31 $DataType31 $Pointer31 $Dims31 $Const31 $Volatile31 $ArrayOpt31]
lappend structMem3 $Port31
set PortName32 "mean"
set BitWidth32 "32"
set ArrayOpt32 ""
set Const32 "0"
set Volatile32 "0"
set Pointer32 "0"
set Reference32 "0"
set Dims32 [list 0]
set Interface32 "wire"
set DataType32 "float"
set Port32 [list $PortName32 $Interface32 $DataType32 $Pointer32 $Dims32 $Const32 $Volatile32 $ArrayOpt32]
lappend structMem3 $Port32
set PortName33 "var"
set BitWidth33 "32"
set ArrayOpt33 ""
set Const33 "0"
set Volatile33 "0"
set Pointer33 "0"
set Reference33 "0"
set Dims33 [list 0]
set Interface33 "wire"
set DataType33 "float"
set Port33 [list $PortName33 $Interface33 $DataType33 $Pointer33 $Dims33 $Const33 $Volatile33 $ArrayOpt33]
lappend structMem3 $Port33
set structParameter3 [list ]
set structArgument3 [list ]
set NameSpace3 [list ]
set structIsPacked3 "0"
set DataType3 [list "MixData" "struct MixData" $structMem3 1 0 $structParameter3 $structArgument3 $NameSpace3 $structIsPacked3]
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 0 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
