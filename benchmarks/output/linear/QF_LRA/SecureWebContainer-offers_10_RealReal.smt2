(set-info :smt-lib-version 2.6)
(set-logic QF_LRA)
(set-info :source |
Generated by: Mădălina Erașcu, Răzvan Meteș 
Generated on: 2019-04-26
Application: SecureWebContainer
Target solver: Z3
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :minimum 11611/1000

(declare-fun C1_VM1 () Real)
(declare-fun C1_VM2 () Real)
(declare-fun C1_VM3 () Real)
(declare-fun C1_VM4 () Real)
(declare-fun C1_VM5 () Real)
(declare-fun C1_VM6 () Real)
(declare-fun C2_VM1 () Real)
(declare-fun C2_VM2 () Real)
(declare-fun C2_VM3 () Real)
(declare-fun C2_VM4 () Real)
(declare-fun C2_VM5 () Real)
(declare-fun C2_VM6 () Real)
(declare-fun C3_VM1 () Real)
(declare-fun C3_VM2 () Real)
(declare-fun C3_VM3 () Real)
(declare-fun C3_VM4 () Real)
(declare-fun C3_VM5 () Real)
(declare-fun C3_VM6 () Real)
(declare-fun C4_VM1 () Real)
(declare-fun C4_VM2 () Real)
(declare-fun C4_VM3 () Real)
(declare-fun C4_VM4 () Real)
(declare-fun C4_VM5 () Real)
(declare-fun C4_VM6 () Real)
(declare-fun C5_VM1 () Real)
(declare-fun C5_VM2 () Real)
(declare-fun C5_VM3 () Real)
(declare-fun C5_VM4 () Real)
(declare-fun C5_VM5 () Real)
(declare-fun C5_VM6 () Real)
(declare-fun VM1Type () Real)
(declare-fun VM2Type () Real)
(declare-fun VM3Type () Real)
(declare-fun VM4Type () Real)
(declare-fun VM5Type () Real)
(declare-fun VM6Type () Real)
(declare-fun PriceProv1 () Real)
(declare-fun PriceProv2 () Real)
(declare-fun PriceProv3 () Real)
(declare-fun PriceProv4 () Real)
(declare-fun PriceProv5 () Real)
(declare-fun PriceProv6 () Real)
(declare-fun StorageProv1 () Real)
(declare-fun MemProv1 () Real)
(declare-fun ProcProv1 () Real)
(declare-fun StorageProv2 () Real)
(declare-fun MemProv2 () Real)
(declare-fun ProcProv2 () Real)
(declare-fun StorageProv3 () Real)
(declare-fun MemProv3 () Real)
(declare-fun ProcProv3 () Real)
(declare-fun StorageProv4 () Real)
(declare-fun MemProv4 () Real)
(declare-fun ProcProv4 () Real)
(declare-fun StorageProv5 () Real)
(declare-fun MemProv5 () Real)
(declare-fun ProcProv5 () Real)
(declare-fun StorageProv6 () Real)
(declare-fun MemProv6 () Real)
(declare-fun ProcProv6 () Real)
(assert (or (= C1_VM1 0.0) (= C1_VM1 1.0)))
(assert (or (= C1_VM2 0.0) (= C1_VM2 1.0)))
(assert (or (= C1_VM3 0.0) (= C1_VM3 1.0)))
(assert (or (= C1_VM4 0.0) (= C1_VM4 1.0)))
(assert (or (= C1_VM5 0.0) (= C1_VM5 1.0)))
(assert (or (= C1_VM6 0.0) (= C1_VM6 1.0)))
(assert (or (= C2_VM1 0.0) (= C2_VM1 1.0)))
(assert (or (= C2_VM2 0.0) (= C2_VM2 1.0)))
(assert (or (= C2_VM3 0.0) (= C2_VM3 1.0)))
(assert (or (= C2_VM4 0.0) (= C2_VM4 1.0)))
(assert (or (= C2_VM5 0.0) (= C2_VM5 1.0)))
(assert (or (= C2_VM6 0.0) (= C2_VM6 1.0)))
(assert (or (= C3_VM1 0.0) (= C3_VM1 1.0)))
(assert (or (= C3_VM2 0.0) (= C3_VM2 1.0)))
(assert (or (= C3_VM3 0.0) (= C3_VM3 1.0)))
(assert (or (= C3_VM4 0.0) (= C3_VM4 1.0)))
(assert (or (= C3_VM5 0.0) (= C3_VM5 1.0)))
(assert (or (= C3_VM6 0.0) (= C3_VM6 1.0)))
(assert (or (= C4_VM1 0.0) (= C4_VM1 1.0)))
(assert (or (= C4_VM2 0.0) (= C4_VM2 1.0)))
(assert (or (= C4_VM3 0.0) (= C4_VM3 1.0)))
(assert (or (= C4_VM4 0.0) (= C4_VM4 1.0)))
(assert (or (= C4_VM5 0.0) (= C4_VM5 1.0)))
(assert (or (= C4_VM6 0.0) (= C4_VM6 1.0)))
(assert (or (= C5_VM1 0.0) (= C5_VM1 1.0)))
(assert (or (= C5_VM2 0.0) (= C5_VM2 1.0)))
(assert (or (= C5_VM3 0.0) (= C5_VM3 1.0)))
(assert (or (= C5_VM4 0.0) (= C5_VM4 1.0)))
(assert (or (= C5_VM5 0.0) (= C5_VM5 1.0)))
(assert (or (= C5_VM6 0.0) (= C5_VM6 1.0)))
(assert (or (= VM1Type 1.0)
    (= VM1Type 2.0)
    (= VM1Type 3.0)
    (= VM1Type 4.0)
    (= VM1Type 5.0)
    (= VM1Type 6.0)
    (= VM1Type 7.0)
    (= VM1Type 8.0)
    (= VM1Type 9.0)
    (= VM1Type 10.0)))
(assert (or (= VM2Type 1.0)
    (= VM2Type 2.0)
    (= VM2Type 3.0)
    (= VM2Type 4.0)
    (= VM2Type 5.0)
    (= VM2Type 6.0)
    (= VM2Type 7.0)
    (= VM2Type 8.0)
    (= VM2Type 9.0)
    (= VM2Type 10.0)))
(assert (or (= VM3Type 1.0)
    (= VM3Type 2.0)
    (= VM3Type 3.0)
    (= VM3Type 4.0)
    (= VM3Type 5.0)
    (= VM3Type 6.0)
    (= VM3Type 7.0)
    (= VM3Type 8.0)
    (= VM3Type 9.0)
    (= VM3Type 10.0)))
(assert (or (= VM4Type 1.0)
    (= VM4Type 2.0)
    (= VM4Type 3.0)
    (= VM4Type 4.0)
    (= VM4Type 5.0)
    (= VM4Type 6.0)
    (= VM4Type 7.0)
    (= VM4Type 8.0)
    (= VM4Type 9.0)
    (= VM4Type 10.0)))
(assert (or (= VM5Type 1.0)
    (= VM5Type 2.0)
    (= VM5Type 3.0)
    (= VM5Type 4.0)
    (= VM5Type 5.0)
    (= VM5Type 6.0)
    (= VM5Type 7.0)
    (= VM5Type 8.0)
    (= VM5Type 9.0)
    (= VM5Type 10.0)))
(assert (or (= VM6Type 1.0)
    (= VM6Type 2.0)
    (= VM6Type 3.0)
    (= VM6Type 4.0)
    (= VM6Type 5.0)
    (= VM6Type 6.0)
    (= VM6Type 7.0)
    (= VM6Type 8.0)
    (= VM6Type 9.0)
    (= VM6Type 10.0)))
(assert (=> (= (+ 0.0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 0.0) (= PriceProv1 0.0)))
(assert (=> (= (+ 0.0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 0.0) (= PriceProv2 0.0)))
(assert (=> (= (+ 0.0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 0.0) (= PriceProv3 0.0)))
(assert (=> (= (+ 0.0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 0.0) (= PriceProv4 0.0)))
(assert (=> (= (+ 0.0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 0.0) (= PriceProv5 0.0)))
(assert (=> (= (+ 0.0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 0.0) (= PriceProv6 0.0)))
(assert (=> (and (>= (+ 0.0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1.0) (= VM1Type 1.0))
    (and (= PriceProv1 (/ 8403.0 1000.0))
         (= ProcProv1 64.0)
         (= MemProv1 976.0)
         (= StorageProv1 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1.0) (= VM2Type 1.0))
    (and (= PriceProv2 (/ 8403.0 1000.0))
         (= ProcProv2 64.0)
         (= MemProv2 976.0)
         (= StorageProv2 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1.0) (= VM3Type 1.0))
    (and (= PriceProv3 (/ 8403.0 1000.0))
         (= ProcProv3 64.0)
         (= MemProv3 976.0)
         (= StorageProv3 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1.0) (= VM4Type 1.0))
    (and (= PriceProv4 (/ 8403.0 1000.0))
         (= ProcProv4 64.0)
         (= MemProv4 976.0)
         (= StorageProv4 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1.0) (= VM5Type 1.0))
    (and (= PriceProv5 (/ 8403.0 1000.0))
         (= ProcProv5 64.0)
         (= MemProv5 976.0)
         (= StorageProv5 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1.0) (= VM6Type 1.0))
    (and (= PriceProv6 (/ 8403.0 1000.0))
         (= ProcProv6 64.0)
         (= MemProv6 976.0)
         (= StorageProv6 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1.0) (= VM1Type 2.0))
    (and (= PriceProv1 (/ 1144.0 125.0))
         (= ProcProv1 64.0)
         (= MemProv1 488.0)
         (= StorageProv1 8.0))))
(assert (=> (and (>= (+ 0.0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1.0) (= VM2Type 2.0))
    (and (= PriceProv2 (/ 1144.0 125.0))
         (= ProcProv2 64.0)
         (= MemProv2 488.0)
         (= StorageProv2 8.0))))
(assert (=> (and (>= (+ 0.0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1.0) (= VM3Type 2.0))
    (and (= PriceProv3 (/ 1144.0 125.0))
         (= ProcProv3 64.0)
         (= MemProv3 488.0)
         (= StorageProv3 8.0))))
(assert (=> (and (>= (+ 0.0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1.0) (= VM4Type 2.0))
    (and (= PriceProv4 (/ 1144.0 125.0))
         (= ProcProv4 64.0)
         (= MemProv4 488.0)
         (= StorageProv4 8.0))))
(assert (=> (and (>= (+ 0.0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1.0) (= VM5Type 2.0))
    (and (= PriceProv5 (/ 1144.0 125.0))
         (= ProcProv5 64.0)
         (= MemProv5 488.0)
         (= StorageProv5 8.0))))
(assert (=> (and (>= (+ 0.0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1.0) (= VM6Type 2.0))
    (and (= PriceProv6 (/ 1144.0 125.0))
         (= ProcProv6 64.0)
         (= MemProv6 488.0)
         (= StorageProv6 8.0))))
(assert (=> (and (>= (+ 0.0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1.0) (= VM1Type 3.0))
    (and (= PriceProv1 (/ 351.0 125.0))
         (= ProcProv1 32.0)
         (= MemProv1 60.0)
         (= StorageProv1 2.0))))
(assert (=> (and (>= (+ 0.0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1.0) (= VM2Type 3.0))
    (and (= PriceProv2 (/ 351.0 125.0))
         (= ProcProv2 32.0)
         (= MemProv2 60.0)
         (= StorageProv2 2.0))))
(assert (=> (and (>= (+ 0.0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1.0) (= VM3Type 3.0))
    (and (= PriceProv3 (/ 351.0 125.0))
         (= ProcProv3 32.0)
         (= MemProv3 60.0)
         (= StorageProv3 2.0))))
(assert (=> (and (>= (+ 0.0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1.0) (= VM4Type 3.0))
    (and (= PriceProv4 (/ 351.0 125.0))
         (= ProcProv4 32.0)
         (= MemProv4 60.0)
         (= StorageProv4 2.0))))
(assert (=> (and (>= (+ 0.0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1.0) (= VM5Type 3.0))
    (and (= PriceProv5 (/ 351.0 125.0))
         (= ProcProv5 32.0)
         (= MemProv5 60.0)
         (= StorageProv5 2.0))))
(assert (=> (and (>= (+ 0.0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1.0) (= VM6Type 3.0))
    (and (= PriceProv6 (/ 351.0 125.0))
         (= ProcProv6 32.0)
         (= MemProv6 60.0)
         (= StorageProv6 2.0))))
(assert (=> (and (>= (+ 0.0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1.0) (= VM1Type 4.0))
    (and (= PriceProv1 (/ 8.0 5.0))
         (= ProcProv1 16.0)
         (= MemProv1 122.0)
         (= StorageProv1 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1.0) (= VM2Type 4.0))
    (and (= PriceProv2 (/ 8.0 5.0))
         (= ProcProv2 16.0)
         (= MemProv2 122.0)
         (= StorageProv2 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1.0) (= VM3Type 4.0))
    (and (= PriceProv3 (/ 8.0 5.0))
         (= ProcProv3 16.0)
         (= MemProv3 122.0)
         (= StorageProv3 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1.0) (= VM4Type 4.0))
    (and (= PriceProv4 (/ 8.0 5.0))
         (= ProcProv4 16.0)
         (= MemProv4 122.0)
         (= StorageProv4 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1.0) (= VM5Type 4.0))
    (and (= PriceProv5 (/ 8.0 5.0))
         (= ProcProv5 16.0)
         (= MemProv5 122.0)
         (= StorageProv5 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1.0) (= VM6Type 4.0))
    (and (= PriceProv6 (/ 8.0 5.0))
         (= ProcProv6 16.0)
         (= MemProv6 122.0)
         (= StorageProv6 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1.0) (= VM1Type 5.0))
    (and (= PriceProv1 (/ 138.0 25.0))
         (= ProcProv1 17.0)
         (= MemProv1 117.0)
         (= StorageProv1 24.0))))
(assert (=> (and (>= (+ 0.0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1.0) (= VM2Type 5.0))
    (and (= PriceProv2 (/ 138.0 25.0))
         (= ProcProv2 17.0)
         (= MemProv2 117.0)
         (= StorageProv2 24.0))))
(assert (=> (and (>= (+ 0.0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1.0) (= VM3Type 5.0))
    (and (= PriceProv3 (/ 138.0 25.0))
         (= ProcProv3 17.0)
         (= MemProv3 117.0)
         (= StorageProv3 24.0))))
(assert (=> (and (>= (+ 0.0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1.0) (= VM4Type 5.0))
    (and (= PriceProv4 (/ 138.0 25.0))
         (= ProcProv4 17.0)
         (= MemProv4 117.0)
         (= StorageProv4 24.0))))
(assert (=> (and (>= (+ 0.0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1.0) (= VM5Type 5.0))
    (and (= PriceProv5 (/ 138.0 25.0))
         (= ProcProv5 17.0)
         (= MemProv5 117.0)
         (= StorageProv5 24.0))))
(assert (=> (and (>= (+ 0.0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1.0) (= VM6Type 5.0))
    (and (= PriceProv6 (/ 138.0 25.0))
         (= ProcProv6 17.0)
         (= MemProv6 117.0)
         (= StorageProv6 24.0))))
(assert (=> (and (>= (+ 0.0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1.0) (= VM1Type 6.0))
    (and (= PriceProv1 (/ 86.0 125.0))
         (= ProcProv1 8.0)
         (= MemProv1 61.0)
         (= StorageProv1 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1.0) (= VM2Type 6.0))
    (and (= PriceProv2 (/ 86.0 125.0))
         (= ProcProv2 8.0)
         (= MemProv2 61.0)
         (= StorageProv2 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1.0) (= VM3Type 6.0))
    (and (= PriceProv3 (/ 86.0 125.0))
         (= ProcProv3 8.0)
         (= MemProv3 61.0)
         (= StorageProv3 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1.0) (= VM4Type 6.0))
    (and (= PriceProv4 (/ 86.0 125.0))
         (= ProcProv4 8.0)
         (= MemProv4 61.0)
         (= StorageProv4 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1.0) (= VM5Type 6.0))
    (and (= PriceProv5 (/ 86.0 125.0))
         (= ProcProv5 8.0)
         (= MemProv5 61.0)
         (= StorageProv5 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1.0) (= VM6Type 6.0))
    (and (= PriceProv6 (/ 86.0 125.0))
         (= ProcProv6 8.0)
         (= MemProv6 61.0)
         (= StorageProv6 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1.0) (= VM1Type 7.0))
    (and (= PriceProv1 (/ 1209.0 1000.0))
         (= ProcProv1 4.0)
         (= MemProv1 122.0)
         (= StorageProv1 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1.0) (= VM2Type 7.0))
    (and (= PriceProv2 (/ 1209.0 1000.0))
         (= ProcProv2 4.0)
         (= MemProv2 122.0)
         (= StorageProv2 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1.0) (= VM3Type 7.0))
    (and (= PriceProv3 (/ 1209.0 1000.0))
         (= ProcProv3 4.0)
         (= MemProv3 122.0)
         (= StorageProv3 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1.0) (= VM4Type 7.0))
    (and (= PriceProv4 (/ 1209.0 1000.0))
         (= ProcProv4 4.0)
         (= MemProv4 122.0)
         (= StorageProv4 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1.0) (= VM5Type 7.0))
    (and (= PriceProv5 (/ 1209.0 1000.0))
         (= ProcProv5 4.0)
         (= MemProv5 122.0)
         (= StorageProv5 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1.0) (= VM6Type 7.0))
    (and (= PriceProv6 (/ 1209.0 1000.0))
         (= ProcProv6 4.0)
         (= MemProv6 122.0)
         (= StorageProv6 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1.0) (= VM1Type 8.0))
    (and (= PriceProv1 (/ 379.0 1000.0))
         (= ProcProv1 4.0)
         (= MemProv1 (/ 61.0 2.0))
         (= StorageProv1 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1.0) (= VM2Type 8.0))
    (and (= PriceProv2 (/ 379.0 1000.0))
         (= ProcProv2 4.0)
         (= MemProv2 (/ 61.0 2.0))
         (= StorageProv2 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1.0) (= VM3Type 8.0))
    (and (= PriceProv3 (/ 379.0 1000.0))
         (= ProcProv3 4.0)
         (= MemProv3 (/ 61.0 2.0))
         (= StorageProv3 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1.0) (= VM4Type 8.0))
    (and (= PriceProv4 (/ 379.0 1000.0))
         (= ProcProv4 4.0)
         (= MemProv4 (/ 61.0 2.0))
         (= StorageProv4 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1.0) (= VM5Type 8.0))
    (and (= PriceProv5 (/ 379.0 1000.0))
         (= ProcProv5 4.0)
         (= MemProv5 (/ 61.0 2.0))
         (= StorageProv5 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1.0) (= VM6Type 8.0))
    (and (= PriceProv6 (/ 379.0 1000.0))
         (= ProcProv6 4.0)
         (= MemProv6 (/ 61.0 2.0))
         (= StorageProv6 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1.0) (= VM1Type 9.0))
    (and (= PriceProv1 (/ 73.0 500.0))
         (= ProcProv1 2.0)
         (= MemProv1 (/ 15.0 2.0))
         (= StorageProv1 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1.0) (= VM2Type 9.0))
    (and (= PriceProv2 (/ 73.0 500.0))
         (= ProcProv2 2.0)
         (= MemProv2 (/ 15.0 2.0))
         (= StorageProv2 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1.0) (= VM3Type 9.0))
    (and (= PriceProv3 (/ 73.0 500.0))
         (= ProcProv3 2.0)
         (= MemProv3 (/ 15.0 2.0))
         (= StorageProv3 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1.0) (= VM4Type 9.0))
    (and (= PriceProv4 (/ 73.0 500.0))
         (= ProcProv4 2.0)
         (= MemProv4 (/ 15.0 2.0))
         (= StorageProv4 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1.0) (= VM5Type 9.0))
    (and (= PriceProv5 (/ 73.0 500.0))
         (= ProcProv5 2.0)
         (= MemProv5 (/ 15.0 2.0))
         (= StorageProv5 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1.0) (= VM6Type 9.0))
    (and (= PriceProv6 (/ 73.0 500.0))
         (= ProcProv6 2.0)
         (= MemProv6 (/ 15.0 2.0))
         (= StorageProv6 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1.0) (= VM1Type 10.0))
    (and (= PriceProv1 (/ 67.0 500.0))
         (= ProcProv1 1.0)
         (= MemProv1 (/ 15.0 4.0))
         (= StorageProv1 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1.0) (= VM2Type 10.0))
    (and (= PriceProv2 (/ 67.0 500.0))
         (= ProcProv2 1.0)
         (= MemProv2 (/ 15.0 4.0))
         (= StorageProv2 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1.0) (= VM3Type 10.0))
    (and (= PriceProv3 (/ 67.0 500.0))
         (= ProcProv3 1.0)
         (= MemProv3 (/ 15.0 4.0))
         (= StorageProv3 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1.0) (= VM4Type 10.0))
    (and (= PriceProv4 (/ 67.0 500.0))
         (= ProcProv4 1.0)
         (= MemProv4 (/ 15.0 4.0))
         (= StorageProv4 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1.0) (= VM5Type 10.0))
    (and (= PriceProv5 (/ 67.0 500.0))
         (= ProcProv5 1.0)
         (= MemProv5 (/ 15.0 4.0))
         (= StorageProv5 1.0))))
(assert (=> (and (>= (+ 0.0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1.0) (= VM6Type 10.0))
    (and (= PriceProv6 (/ 67.0 500.0))
         (= ProcProv6 1.0)
         (= MemProv6 (/ 15.0 4.0))
         (= StorageProv6 1.0))))
(assert (<= (+ 0.0 C1_VM1 C2_VM1) 1.0))
(assert (<= (+ 0.0 C1_VM1 C3_VM1) 1.0))
(assert (<= (+ 0.0 C1_VM1 C4_VM1) 1.0))
(assert (<= (+ 0.0 C1_VM1 C5_VM1) 1.0))
(assert (<= (+ 0.0 C1_VM2 C2_VM2) 1.0))
(assert (<= (+ 0.0 C1_VM2 C3_VM2) 1.0))
(assert (<= (+ 0.0 C1_VM2 C4_VM2) 1.0))
(assert (<= (+ 0.0 C1_VM2 C5_VM2) 1.0))
(assert (<= (+ 0.0 C1_VM3 C2_VM3) 1.0))
(assert (<= (+ 0.0 C1_VM3 C3_VM3) 1.0))
(assert (<= (+ 0.0 C1_VM3 C4_VM3) 1.0))
(assert (<= (+ 0.0 C1_VM3 C5_VM3) 1.0))
(assert (<= (+ 0.0 C1_VM4 C2_VM4) 1.0))
(assert (<= (+ 0.0 C1_VM4 C3_VM4) 1.0))
(assert (<= (+ 0.0 C1_VM4 C4_VM4) 1.0))
(assert (<= (+ 0.0 C1_VM4 C5_VM4) 1.0))
(assert (<= (+ 0.0 C1_VM5 C2_VM5) 1.0))
(assert (<= (+ 0.0 C1_VM5 C3_VM5) 1.0))
(assert (<= (+ 0.0 C1_VM5 C4_VM5) 1.0))
(assert (<= (+ 0.0 C1_VM5 C5_VM5) 1.0))
(assert (<= (+ 0.0 C1_VM6 C2_VM6) 1.0))
(assert (<= (+ 0.0 C1_VM6 C3_VM6) 1.0))
(assert (<= (+ 0.0 C1_VM6 C4_VM6) 1.0))
(assert (<= (+ 0.0 C1_VM6 C5_VM6) 1.0))
(assert (<= (+ 0.0 C2_VM1 C3_VM1) 1.0))
(assert (<= (+ 0.0 C2_VM2 C3_VM2) 1.0))
(assert (<= (+ 0.0 C2_VM3 C3_VM3) 1.0))
(assert (<= (+ 0.0 C2_VM4 C3_VM4) 1.0))
(assert (<= (+ 0.0 C2_VM5 C3_VM5) 1.0))
(assert (<= (+ 0.0 C2_VM6 C3_VM6) 1.0))
(assert (= (+ 0.0 C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6) 1.0))
(assert (>= (+ 0.0
       C2_VM1
       C2_VM2
       C2_VM3
       C2_VM4
       C2_VM5
       C2_VM6
       C3_VM1
       C3_VM2
       C3_VM3
       C3_VM4
       C3_VM5
       C3_VM6)
    3.0))
(assert (<= (+ 0.0 C4_VM1 C1_VM1) 1.0))
(assert (<= (+ 0.0 C4_VM1 C2_VM1) 1.0))
(assert (<= (+ 0.0 C4_VM1 C3_VM1) 1.0))
(assert (<= (+ 0.0 C4_VM1 C5_VM1) 1.0))
(assert (<= (+ 0.0 C4_VM2 C1_VM2) 1.0))
(assert (<= (+ 0.0 C4_VM2 C2_VM2) 1.0))
(assert (<= (+ 0.0 C4_VM2 C3_VM2) 1.0))
(assert (<= (+ 0.0 C4_VM2 C5_VM2) 1.0))
(assert (<= (+ 0.0 C4_VM3 C1_VM3) 1.0))
(assert (<= (+ 0.0 C4_VM3 C2_VM3) 1.0))
(assert (<= (+ 0.0 C4_VM3 C3_VM3) 1.0))
(assert (<= (+ 0.0 C4_VM3 C5_VM3) 1.0))
(assert (<= (+ 0.0 C4_VM4 C1_VM4) 1.0))
(assert (<= (+ 0.0 C4_VM4 C2_VM4) 1.0))
(assert (<= (+ 0.0 C4_VM4 C3_VM4) 1.0))
(assert (<= (+ 0.0 C4_VM4 C5_VM4) 1.0))
(assert (<= (+ 0.0 C4_VM5 C1_VM5) 1.0))
(assert (<= (+ 0.0 C4_VM5 C2_VM5) 1.0))
(assert (<= (+ 0.0 C4_VM5 C3_VM5) 1.0))
(assert (<= (+ 0.0 C4_VM5 C5_VM5) 1.0))
(assert (<= (+ 0.0 C4_VM6 C1_VM6) 1.0))
(assert (<= (+ 0.0 C4_VM6 C2_VM6) 1.0))
(assert (<= (+ 0.0 C4_VM6 C3_VM6) 1.0))
(assert (<= (+ 0.0 C4_VM6 C5_VM6) 1.0))
(assert (let ((a!1 (to_real (ite (>= (+ 0.0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1.0)
                         1
                         0))))
  (= (+ 0.0 C5_VM1 C4_VM1 C1_VM1) a!1)))
(assert (let ((a!1 (to_real (ite (>= (+ 0.0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1.0)
                         1
                         0))))
  (= (+ 0.0 C5_VM2 C4_VM2 C1_VM2) a!1)))
(assert (let ((a!1 (to_real (ite (>= (+ 0.0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1.0)
                         1
                         0))))
  (= (+ 0.0 C5_VM3 C4_VM3 C1_VM3) a!1)))
(assert (let ((a!1 (to_real (ite (>= (+ 0.0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1.0)
                         1
                         0))))
  (= (+ 0.0 C5_VM4 C4_VM4 C1_VM4) a!1)))
(assert (let ((a!1 (to_real (ite (>= (+ 0.0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1.0)
                         1
                         0))))
  (= (+ 0.0 C5_VM5 C4_VM5 C1_VM5) a!1)))
(assert (let ((a!1 (to_real (ite (>= (+ 0.0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1.0)
                         1
                         0))))
  (= (+ 0.0 C5_VM6 C4_VM6 C1_VM6) a!1)))
(assert (>= (- (* 10.0 (+ 0.0 C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5 C4_VM6))
       (+ 0.0 C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6))
    0.0))
(assert (< (- (* 10.0 (+ 0.0 C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5 C4_VM6))
      (+ 0.0 C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6))
   10.0))
(assert (>= (+ 0.0 C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6) 1.0))
(assert (>= (+ 0.0 C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5 C2_VM6) 1.0))
(assert (>= (+ 0.0 C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6) 1.0))
(assert (>= (+ 0.0 C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5 C4_VM6) 1.0))
(assert (>= (+ 0.0 C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6) 1.0))
(assert (<= (+ 0.0
       (* C1_VM1 4.0)
       (* C2_VM1 2.0)
       (* C3_VM1 4.0)
       (* C4_VM1 8.0)
       (* C5_VM1 1.0))
    ProcProv1))
(assert (<= (+ 0.0
       (* C1_VM2 4.0)
       (* C2_VM2 2.0)
       (* C3_VM2 4.0)
       (* C4_VM2 8.0)
       (* C5_VM2 1.0))
    ProcProv2))
(assert (<= (+ 0.0
       (* C1_VM3 4.0)
       (* C2_VM3 2.0)
       (* C3_VM3 4.0)
       (* C4_VM3 8.0)
       (* C5_VM3 1.0))
    ProcProv3))
(assert (<= (+ 0.0
       (* C1_VM4 4.0)
       (* C2_VM4 2.0)
       (* C3_VM4 4.0)
       (* C4_VM4 8.0)
       (* C5_VM4 1.0))
    ProcProv4))
(assert (<= (+ 0.0
       (* C1_VM5 4.0)
       (* C2_VM5 2.0)
       (* C3_VM5 4.0)
       (* C4_VM5 8.0)
       (* C5_VM5 1.0))
    ProcProv5))
(assert (<= (+ 0.0
       (* C1_VM6 4.0)
       (* C2_VM6 2.0)
       (* C3_VM6 4.0)
       (* C4_VM6 8.0)
       (* C5_VM6 1.0))
    ProcProv6))
(assert (<= (+ 0.0
       (* C1_VM1 (/ 256.0 125.0))
       (* C2_VM1 (/ 64.0 125.0))
       (* C3_VM1 (/ 256.0 125.0))
       (* C4_VM1 16.0)
       (* C5_VM1 (/ 32.0 125.0)))
    MemProv1))
(assert (<= (+ 0.0
       (* C1_VM2 (/ 256.0 125.0))
       (* C2_VM2 (/ 64.0 125.0))
       (* C3_VM2 (/ 256.0 125.0))
       (* C4_VM2 16.0)
       (* C5_VM2 (/ 32.0 125.0)))
    MemProv2))
(assert (<= (+ 0.0
       (* C1_VM3 (/ 256.0 125.0))
       (* C2_VM3 (/ 64.0 125.0))
       (* C3_VM3 (/ 256.0 125.0))
       (* C4_VM3 16.0)
       (* C5_VM3 (/ 32.0 125.0)))
    MemProv3))
(assert (<= (+ 0.0
       (* C1_VM4 (/ 256.0 125.0))
       (* C2_VM4 (/ 64.0 125.0))
       (* C3_VM4 (/ 256.0 125.0))
       (* C4_VM4 16.0)
       (* C5_VM4 (/ 32.0 125.0)))
    MemProv4))
(assert (<= (+ 0.0
       (* C1_VM5 (/ 256.0 125.0))
       (* C2_VM5 (/ 64.0 125.0))
       (* C3_VM5 (/ 256.0 125.0))
       (* C4_VM5 16.0)
       (* C5_VM5 (/ 32.0 125.0)))
    MemProv5))
(assert (<= (+ 0.0
       (* C1_VM6 (/ 256.0 125.0))
       (* C2_VM6 (/ 64.0 125.0))
       (* C3_VM6 (/ 256.0 125.0))
       (* C4_VM6 16.0)
       (* C5_VM6 (/ 32.0 125.0)))
    MemProv6))
(assert (<= (+ 0.0
       (* C1_VM1 (/ 1.0 2.0))
       (* C2_VM1 1.0)
       (* C3_VM1 1.0)
       (* C4_VM1 2.0)
       (* C5_VM1 (/ 1.0 4.0)))
    StorageProv1))
(assert (<= (+ 0.0
       (* C1_VM2 (/ 1.0 2.0))
       (* C2_VM2 1.0)
       (* C3_VM2 1.0)
       (* C4_VM2 2.0)
       (* C5_VM2 (/ 1.0 4.0)))
    StorageProv2))
(assert (<= (+ 0.0
       (* C1_VM3 (/ 1.0 2.0))
       (* C2_VM3 1.0)
       (* C3_VM3 1.0)
       (* C4_VM3 2.0)
       (* C5_VM3 (/ 1.0 4.0)))
    StorageProv3))
(assert (<= (+ 0.0
       (* C1_VM4 (/ 1.0 2.0))
       (* C2_VM4 1.0)
       (* C3_VM4 1.0)
       (* C4_VM4 2.0)
       (* C5_VM4 (/ 1.0 4.0)))
    StorageProv4))
(assert (<= (+ 0.0
       (* C1_VM5 (/ 1.0 2.0))
       (* C2_VM5 1.0)
       (* C3_VM5 1.0)
       (* C4_VM5 2.0)
       (* C5_VM5 (/ 1.0 4.0)))
    StorageProv5))
(assert (<= (+ 0.0
       (* C1_VM6 (/ 1.0 2.0))
       (* C2_VM6 1.0)
       (* C3_VM6 1.0)
       (* C4_VM6 2.0)
       (* C5_VM6 (/ 1.0 4.0)))
    StorageProv6))
(minimize (+ 0.0 PriceProv1 PriceProv2 PriceProv3 PriceProv4 PriceProv5 PriceProv6))
(check-sat)
(get-objectives)
(exit)