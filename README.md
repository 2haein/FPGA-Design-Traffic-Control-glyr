# FPGA-Design-Traffic-Control-glyr
신호등 제어기 회로를 참고삼아, G(녹색), L(좌회전), Y(황색), R(적색) 출력을 갖는 신호등 제어기를 VHDL 언어로 작성하고, 시뮬레이션 할 것 조건 : 신호등 제어기 Truth Table

______________________
## 현재|____다음____
 G L Y R | G' L' Y' R'  
 
=======|=======

 0 0 0 0 | 0  0  0  1  
 0 0 0 1 | 1  1  0  0  
 1 1 0 0 | 1  0  0  0  
 1 0 0 0 | 0  0  1  0  
 0 0 1 0 | 0  0  0  1
----------------------  

![test](https://user-images.githubusercontent.com/46235778/183836416-49afc67d-e8d9-4669-b7ad-e432c7a99ccd.PNG)
