set lang "C++"
set moduleName "backsub"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortName4 "nframes"
set BitWidth4 "32"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "0"
set Reference4 "0"
set Initializer4 ""
set External4 0
set Dims4 [list 0]
set Interface4 "wire"
set NameSpace4 [list ]
set DataType4 "int"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4 $Initializer4 $External4 $NameSpace4]
lappend globalVariable $Port4
set PortName5 "frame_out_glob"
set BitWidth5 "20480"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "0"
set Reference5 "0"
set Initializer5 ""
set External5 0
set Dims5 [list  2560]
set Interface5 "wire"
set NameSpace5 [list ]
set DataType5 "unsigned char"
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5 $Initializer5 $External5 $NameSpace5]
lappend globalVariable $Port5
set PortName6 "frame_in_glob"
set BitWidth6 "20480"
set ArrayOpt6 ""
set Const6 "0"
set Volatile6 "0"
set Pointer6 "0"
set Reference6 "0"
set Initializer6 ""
set External6 0
set Dims6 [list  2560]
set Interface6 "wire"
set NameSpace6 [list ]
set DataType6 "unsigned char"
set Port6 [list $PortName6 $Interface6 $DataType6 $Pointer6 $Dims6 $Const6 $Volatile6 $ArrayOpt6 $Initializer6 $External6 $NameSpace6]
lappend globalVariable $Port6
set PortName7 "bgmo"
set BitWidth7 "655360"
set ArrayOpt7 ""
set Const7 "0"
set Volatile7 "0"
set Pointer7 "0"
set Reference7 "0"
set Initializer7 ""
set External7 0
set Dims7 [list  5120]
set Interface7 "wire"
set NameSpace7 [list ]
set structMem7 ""
set PortName70 "sortKey"
set BitWidth70 "32"
set ArrayOpt70 ""
set Const70 "0"
set Volatile70 "0"
set Pointer70 "0"
set Reference70 "0"
set Dims70 [list 0]
set Interface70 "wire"
set DataType70 "float"
set Port70 [list $PortName70 $Interface70 $DataType70 $Pointer70 $Dims70 $Const70 $Volatile70 $ArrayOpt70]
lappend structMem7 $Port70
set PortName71 "weight"
set BitWidth71 "32"
set ArrayOpt71 ""
set Const71 "0"
set Volatile71 "0"
set Pointer71 "0"
set Reference71 "0"
set Dims71 [list 0]
set Interface71 "wire"
set DataType71 "float"
set Port71 [list $PortName71 $Interface71 $DataType71 $Pointer71 $Dims71 $Const71 $Volatile71 $ArrayOpt71]
lappend structMem7 $Port71
set PortName72 "mean"
set BitWidth72 "32"
set ArrayOpt72 ""
set Const72 "0"
set Volatile72 "0"
set Pointer72 "0"
set Reference72 "0"
set Dims72 [list 0]
set Interface72 "wire"
set DataType72 "float"
set Port72 [list $PortName72 $Interface72 $DataType72 $Pointer72 $Dims72 $Const72 $Volatile72 $ArrayOpt72]
lappend structMem7 $Port72
set PortName73 "var"
set BitWidth73 "32"
set ArrayOpt73 ""
set Const73 "0"
set Volatile73 "0"
set Pointer73 "0"
set Reference73 "0"
set Dims73 [list 0]
set Interface73 "wire"
set DataType73 "float"
set Port73 [list $PortName73 $Interface73 $DataType73 $Pointer73 $Dims73 $Const73 $Volatile73 $ArrayOpt73]
lappend structMem7 $Port73
set structParameter7 [list ]
set structArgument7 [list ]
set NameSpace7 [list ]
set structIsPacked7 "0"
set DataType7 [list "MixData" "struct MixData" $structMem7 1 0 $structParameter7 $structArgument7 $NameSpace7 $structIsPacked7]
set Port7 [list $PortName7 $Interface7 $DataType7 $Pointer7 $Dims7 $Const7 $Volatile7 $ArrayOpt7 $Initializer7 $External7 $NameSpace7]
lappend globalVariable $Port7
set PortList ""
set PortName0 "frame_i"
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
set PortName1 "frame_o"
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
set PortName2 "learningRate"
set BitWidth2 "32"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "0"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set DataType2 "float"
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
