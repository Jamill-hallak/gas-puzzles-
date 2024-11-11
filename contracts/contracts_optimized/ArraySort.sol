// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract OptimizedArraySort  {
    function sortArray(uint256[] memory _data) external pure returns (uint256[] memory) {
        uint256 dataLen = _data.length;
        uint256 temp ;
        uint256 temp1 ;
        
        // // Create 'working' copy
        // uint[] memory _data = new uint256[](dataLen);
        // for (uint256 k = 0; k < _data.length; k++) {
        //     _data[k] = data[k];
        // }
        
            
        unchecked {
            
        
        for (uint256 i = 0; i < dataLen; i++) {
            for (uint256 j = i+1; j < dataLen; j++) {
                    temp = _data[i];
                    temp1 = _data[j];
                    if(temp >=temp1 ){
                        _data[i]=temp1;
                        _data[j]=temp;
                    }
                
            }
        }
        } 
        return _data;
    }
}
