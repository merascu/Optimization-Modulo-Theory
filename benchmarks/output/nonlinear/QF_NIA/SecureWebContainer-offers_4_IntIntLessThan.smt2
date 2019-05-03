(set-info :smt-lib-version 2.6)
(set-logic QF_NIA)
(set-info :source |
Generated by: Mădălina Erașcu, Răzvan Meteș 
Generated on: 2019-05-03
Application: SecureWebContainer
Target solver: Z3
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :minimum 12832/1000)

(declare-fun C1_VM1 () Int)
(declare-fun C1_VM2 () Int)
(declare-fun C1_VM3 () Int)
(declare-fun C1_VM4 () Int)
(declare-fun C1_VM5 () Int)
(declare-fun C1_VM6 () Int)
(declare-fun C2_VM1 () Int)
(declare-fun C2_VM2 () Int)
(declare-fun C2_VM3 () Int)
(declare-fun C2_VM4 () Int)
(declare-fun C2_VM5 () Int)
(declare-fun C2_VM6 () Int)
(declare-fun C3_VM1 () Int)
(declare-fun C3_VM2 () Int)
(declare-fun C3_VM3 () Int)
(declare-fun C3_VM4 () Int)
(declare-fun C3_VM5 () Int)
(declare-fun C3_VM6 () Int)
(declare-fun C4_VM1 () Int)
(declare-fun C4_VM2 () Int)
(declare-fun C4_VM3 () Int)
(declare-fun C4_VM4 () Int)
(declare-fun C4_VM5 () Int)
(declare-fun C4_VM6 () Int)
(declare-fun C5_VM1 () Int)
(declare-fun C5_VM2 () Int)
(declare-fun C5_VM3 () Int)
(declare-fun C5_VM4 () Int)
(declare-fun C5_VM5 () Int)
(declare-fun C5_VM6 () Int)
(declare-fun VM1Type () Int)
(declare-fun VM2Type () Int)
(declare-fun VM3Type () Int)
(declare-fun VM4Type () Int)
(declare-fun VM5Type () Int)
(declare-fun VM6Type () Int)
(declare-fun PriceProv1 () Int)
(declare-fun PriceProv2 () Int)
(declare-fun PriceProv3 () Int)
(declare-fun PriceProv4 () Int)
(declare-fun PriceProv5 () Int)
(declare-fun PriceProv6 () Int)
(declare-fun StorageProv1 () Int)
(declare-fun MemProv1 () Int)
(declare-fun ProcProv1 () Int)
(declare-fun StorageProv2 () Int)
(declare-fun MemProv2 () Int)
(declare-fun ProcProv2 () Int)
(declare-fun StorageProv3 () Int)
(declare-fun MemProv3 () Int)
(declare-fun ProcProv3 () Int)
(declare-fun StorageProv4 () Int)
(declare-fun MemProv4 () Int)
(declare-fun ProcProv4 () Int)
(declare-fun StorageProv5 () Int)
(declare-fun MemProv5 () Int)
(declare-fun ProcProv5 () Int)
(declare-fun StorageProv6 () Int)
(declare-fun MemProv6 () Int)
(declare-fun ProcProv6 () Int)
(assert (and (>= C1_VM1 0) (<= C1_VM1 1)))
(assert (and (>= C1_VM2 0) (<= C1_VM2 1)))
(assert (and (>= C1_VM3 0) (<= C1_VM3 1)))
(assert (and (>= C1_VM4 0) (<= C1_VM4 1)))
(assert (and (>= C1_VM5 0) (<= C1_VM5 1)))
(assert (and (>= C1_VM6 0) (<= C1_VM6 1)))
(assert (and (>= C2_VM1 0) (<= C2_VM1 1)))
(assert (and (>= C2_VM2 0) (<= C2_VM2 1)))
(assert (and (>= C2_VM3 0) (<= C2_VM3 1)))
(assert (and (>= C2_VM4 0) (<= C2_VM4 1)))
(assert (and (>= C2_VM5 0) (<= C2_VM5 1)))
(assert (and (>= C2_VM6 0) (<= C2_VM6 1)))
(assert (and (>= C3_VM1 0) (<= C3_VM1 1)))
(assert (and (>= C3_VM2 0) (<= C3_VM2 1)))
(assert (and (>= C3_VM3 0) (<= C3_VM3 1)))
(assert (and (>= C3_VM4 0) (<= C3_VM4 1)))
(assert (and (>= C3_VM5 0) (<= C3_VM5 1)))
(assert (and (>= C3_VM6 0) (<= C3_VM6 1)))
(assert (and (>= C4_VM1 0) (<= C4_VM1 1)))
(assert (and (>= C4_VM2 0) (<= C4_VM2 1)))
(assert (and (>= C4_VM3 0) (<= C4_VM3 1)))
(assert (and (>= C4_VM4 0) (<= C4_VM4 1)))
(assert (and (>= C4_VM5 0) (<= C4_VM5 1)))
(assert (and (>= C4_VM6 0) (<= C4_VM6 1)))
(assert (and (>= C5_VM1 0) (<= C5_VM1 1)))
(assert (and (>= C5_VM2 0) (<= C5_VM2 1)))
(assert (and (>= C5_VM3 0) (<= C5_VM3 1)))
(assert (and (>= C5_VM4 0) (<= C5_VM4 1)))
(assert (and (>= C5_VM5 0) (<= C5_VM5 1)))
(assert (and (>= C5_VM6 0) (<= C5_VM6 1)))
(assert (or (= VM1Type 1) (= VM1Type 2) (= VM1Type 3) (= VM1Type 4)))
(assert (or (= VM2Type 1) (= VM2Type 2) (= VM2Type 3) (= VM2Type 4)))
(assert (or (= VM3Type 1) (= VM3Type 2) (= VM3Type 3) (= VM3Type 4)))
(assert (or (= VM4Type 1) (= VM4Type 2) (= VM4Type 3) (= VM4Type 4)))
(assert (or (= VM5Type 1) (= VM5Type 2) (= VM5Type 3) (= VM5Type 4)))
(assert (or (= VM6Type 1) (= VM6Type 2) (= VM6Type 3) (= VM6Type 4)))
(assert (=> (= (+ 0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 0) (= PriceProv1 0)))
(assert (=> (= (+ 0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 0) (= PriceProv2 0)))
(assert (=> (= (+ 0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 0) (= PriceProv3 0)))
(assert (=> (= (+ 0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 0) (= PriceProv4 0)))
(assert (=> (= (+ 0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 0) (= PriceProv5 0)))
(assert (=> (= (+ 0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 0) (= PriceProv6 0)))
(assert (=> (and (>= (+ 0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1) (= VM1Type 1))
    (and (= PriceProv1 8403)
         (= ProcProv1 64)
         (= MemProv1 976000)
         (= StorageProv1 1000))))
(assert (=> (and (>= (+ 0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1) (= VM2Type 1))
    (and (= PriceProv2 8403)
         (= ProcProv2 64)
         (= MemProv2 976000)
         (= StorageProv2 1000))))
(assert (=> (and (>= (+ 0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1) (= VM3Type 1))
    (and (= PriceProv3 8403)
         (= ProcProv3 64)
         (= MemProv3 976000)
         (= StorageProv3 1000))))
(assert (=> (and (>= (+ 0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1) (= VM4Type 1))
    (and (= PriceProv4 8403)
         (= ProcProv4 64)
         (= MemProv4 976000)
         (= StorageProv4 1000))))
(assert (=> (and (>= (+ 0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1) (= VM5Type 1))
    (and (= PriceProv5 8403)
         (= ProcProv5 64)
         (= MemProv5 976000)
         (= StorageProv5 1000))))
(assert (=> (and (>= (+ 0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1) (= VM6Type 1))
    (and (= PriceProv6 8403)
         (= ProcProv6 64)
         (= MemProv6 976000)
         (= StorageProv6 1000))))
(assert (=> (and (>= (+ 0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1) (= VM1Type 2))
    (and (= PriceProv1 9152)
         (= ProcProv1 64)
         (= MemProv1 488000)
         (= StorageProv1 8000))))
(assert (=> (and (>= (+ 0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1) (= VM2Type 2))
    (and (= PriceProv2 9152)
         (= ProcProv2 64)
         (= MemProv2 488000)
         (= StorageProv2 8000))))
(assert (=> (and (>= (+ 0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1) (= VM3Type 2))
    (and (= PriceProv3 9152)
         (= ProcProv3 64)
         (= MemProv3 488000)
         (= StorageProv3 8000))))
(assert (=> (and (>= (+ 0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1) (= VM4Type 2))
    (and (= PriceProv4 9152)
         (= ProcProv4 64)
         (= MemProv4 488000)
         (= StorageProv4 8000))))
(assert (=> (and (>= (+ 0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1) (= VM5Type 2))
    (and (= PriceProv5 9152)
         (= ProcProv5 64)
         (= MemProv5 488000)
         (= StorageProv5 8000))))
(assert (=> (and (>= (+ 0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1) (= VM6Type 2))
    (and (= PriceProv6 9152)
         (= ProcProv6 64)
         (= MemProv6 488000)
         (= StorageProv6 8000))))
(assert (=> (and (>= (+ 0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1) (= VM1Type 3))
    (and (= PriceProv1 2808)
         (= ProcProv1 32)
         (= MemProv1 60000)
         (= StorageProv1 2000))))
(assert (=> (and (>= (+ 0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1) (= VM2Type 3))
    (and (= PriceProv2 2808)
         (= ProcProv2 32)
         (= MemProv2 60000)
         (= StorageProv2 2000))))
(assert (=> (and (>= (+ 0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1) (= VM3Type 3))
    (and (= PriceProv3 2808)
         (= ProcProv3 32)
         (= MemProv3 60000)
         (= StorageProv3 2000))))
(assert (=> (and (>= (+ 0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1) (= VM4Type 3))
    (and (= PriceProv4 2808)
         (= ProcProv4 32)
         (= MemProv4 60000)
         (= StorageProv4 2000))))
(assert (=> (and (>= (+ 0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1) (= VM5Type 3))
    (and (= PriceProv5 2808)
         (= ProcProv5 32)
         (= MemProv5 60000)
         (= StorageProv5 2000))))
(assert (=> (and (>= (+ 0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1) (= VM6Type 3))
    (and (= PriceProv6 2808)
         (= ProcProv6 32)
         (= MemProv6 60000)
         (= StorageProv6 2000))))
(assert (=> (and (>= (+ 0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1) (= VM1Type 4))
    (and (= PriceProv1 1600)
         (= ProcProv1 16)
         (= MemProv1 122000)
         (= StorageProv1 1000))))
(assert (=> (and (>= (+ 0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1) (= VM2Type 4))
    (and (= PriceProv2 1600)
         (= ProcProv2 16)
         (= MemProv2 122000)
         (= StorageProv2 1000))))
(assert (=> (and (>= (+ 0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1) (= VM3Type 4))
    (and (= PriceProv3 1600)
         (= ProcProv3 16)
         (= MemProv3 122000)
         (= StorageProv3 1000))))
(assert (=> (and (>= (+ 0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1) (= VM4Type 4))
    (and (= PriceProv4 1600)
         (= ProcProv4 16)
         (= MemProv4 122000)
         (= StorageProv4 1000))))
(assert (=> (and (>= (+ 0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1) (= VM5Type 4))
    (and (= PriceProv5 1600)
         (= ProcProv5 16)
         (= MemProv5 122000)
         (= StorageProv5 1000))))
(assert (=> (and (>= (+ 0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1) (= VM6Type 4))
    (and (= PriceProv6 1600)
         (= ProcProv6 16)
         (= MemProv6 122000)
         (= StorageProv6 1000))))
(assert (= (+ 0 (* C1_VM1 C2_VM1) (* C1_VM1 C3_VM1) (* C1_VM1 C4_VM1) (* C1_VM1 C5_VM1))
   0))
(assert (= (+ 0 (* C1_VM1 C2_VM1) (* C1_VM1 C3_VM1) (* C1_VM1 C4_VM1) (* C1_VM1 C5_VM1))
   0))
(assert (= (+ 0 (* C1_VM1 C2_VM1) (* C1_VM1 C3_VM1) (* C1_VM1 C4_VM1) (* C1_VM1 C5_VM1))
   0))
(assert (= (+ 0 (* C1_VM1 C2_VM1) (* C1_VM1 C3_VM1) (* C1_VM1 C4_VM1) (* C1_VM1 C5_VM1))
   0))
(assert (= (+ 0 (* C1_VM2 C2_VM2) (* C1_VM2 C3_VM2) (* C1_VM2 C4_VM2) (* C1_VM2 C5_VM2))
   0))
(assert (= (+ 0 (* C1_VM2 C2_VM2) (* C1_VM2 C3_VM2) (* C1_VM2 C4_VM2) (* C1_VM2 C5_VM2))
   0))
(assert (= (+ 0 (* C1_VM2 C2_VM2) (* C1_VM2 C3_VM2) (* C1_VM2 C4_VM2) (* C1_VM2 C5_VM2))
   0))
(assert (= (+ 0 (* C1_VM2 C2_VM2) (* C1_VM2 C3_VM2) (* C1_VM2 C4_VM2) (* C1_VM2 C5_VM2))
   0))
(assert (= (+ 0 (* C1_VM3 C2_VM3) (* C1_VM3 C3_VM3) (* C1_VM3 C4_VM3) (* C1_VM3 C5_VM3))
   0))
(assert (= (+ 0 (* C1_VM3 C2_VM3) (* C1_VM3 C3_VM3) (* C1_VM3 C4_VM3) (* C1_VM3 C5_VM3))
   0))
(assert (= (+ 0 (* C1_VM3 C2_VM3) (* C1_VM3 C3_VM3) (* C1_VM3 C4_VM3) (* C1_VM3 C5_VM3))
   0))
(assert (= (+ 0 (* C1_VM3 C2_VM3) (* C1_VM3 C3_VM3) (* C1_VM3 C4_VM3) (* C1_VM3 C5_VM3))
   0))
(assert (= (+ 0 (* C1_VM4 C2_VM4) (* C1_VM4 C3_VM4) (* C1_VM4 C4_VM4) (* C1_VM4 C5_VM4))
   0))
(assert (= (+ 0 (* C1_VM4 C2_VM4) (* C1_VM4 C3_VM4) (* C1_VM4 C4_VM4) (* C1_VM4 C5_VM4))
   0))
(assert (= (+ 0 (* C1_VM4 C2_VM4) (* C1_VM4 C3_VM4) (* C1_VM4 C4_VM4) (* C1_VM4 C5_VM4))
   0))
(assert (= (+ 0 (* C1_VM4 C2_VM4) (* C1_VM4 C3_VM4) (* C1_VM4 C4_VM4) (* C1_VM4 C5_VM4))
   0))
(assert (= (+ 0 (* C1_VM5 C2_VM5) (* C1_VM5 C3_VM5) (* C1_VM5 C4_VM5) (* C1_VM5 C5_VM5))
   0))
(assert (= (+ 0 (* C1_VM5 C2_VM5) (* C1_VM5 C3_VM5) (* C1_VM5 C4_VM5) (* C1_VM5 C5_VM5))
   0))
(assert (= (+ 0 (* C1_VM5 C2_VM5) (* C1_VM5 C3_VM5) (* C1_VM5 C4_VM5) (* C1_VM5 C5_VM5))
   0))
(assert (= (+ 0 (* C1_VM5 C2_VM5) (* C1_VM5 C3_VM5) (* C1_VM5 C4_VM5) (* C1_VM5 C5_VM5))
   0))
(assert (= (+ 0 (* C1_VM6 C2_VM6) (* C1_VM6 C3_VM6) (* C1_VM6 C4_VM6) (* C1_VM6 C5_VM6))
   0))
(assert (= (+ 0 (* C1_VM6 C2_VM6) (* C1_VM6 C3_VM6) (* C1_VM6 C4_VM6) (* C1_VM6 C5_VM6))
   0))
(assert (= (+ 0 (* C1_VM6 C2_VM6) (* C1_VM6 C3_VM6) (* C1_VM6 C4_VM6) (* C1_VM6 C5_VM6))
   0))
(assert (= (+ 0 (* C1_VM6 C2_VM6) (* C1_VM6 C3_VM6) (* C1_VM6 C4_VM6) (* C1_VM6 C5_VM6))
   0))
(assert (= (+ 0 (* C2_VM1 C3_VM1)) 0))
(assert (= (+ 0 (* C2_VM2 C3_VM2)) 0))
(assert (= (+ 0 (* C2_VM3 C3_VM3)) 0))
(assert (= (+ 0 (* C2_VM4 C3_VM4)) 0))
(assert (= (+ 0 (* C2_VM5 C3_VM5)) 0))
(assert (= (+ 0 (* C2_VM6 C3_VM6)) 0))
(assert (= (+ 0 C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6) 1))
(assert (>= (+ 0
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
    3))
(assert (= (+ 0 (* C4_VM1 C1_VM1) (* C4_VM1 C2_VM1) (* C4_VM1 C3_VM1) (* C4_VM1 C5_VM1))
   0))
(assert (= (+ 0 (* C4_VM1 C1_VM1) (* C4_VM1 C2_VM1) (* C4_VM1 C3_VM1) (* C4_VM1 C5_VM1))
   0))
(assert (= (+ 0 (* C4_VM1 C1_VM1) (* C4_VM1 C2_VM1) (* C4_VM1 C3_VM1) (* C4_VM1 C5_VM1))
   0))
(assert (= (+ 0 (* C4_VM1 C1_VM1) (* C4_VM1 C2_VM1) (* C4_VM1 C3_VM1) (* C4_VM1 C5_VM1))
   0))
(assert (= (+ 0 (* C4_VM2 C1_VM2) (* C4_VM2 C2_VM2) (* C4_VM2 C3_VM2) (* C4_VM2 C5_VM2))
   0))
(assert (= (+ 0 (* C4_VM2 C1_VM2) (* C4_VM2 C2_VM2) (* C4_VM2 C3_VM2) (* C4_VM2 C5_VM2))
   0))
(assert (= (+ 0 (* C4_VM2 C1_VM2) (* C4_VM2 C2_VM2) (* C4_VM2 C3_VM2) (* C4_VM2 C5_VM2))
   0))
(assert (= (+ 0 (* C4_VM2 C1_VM2) (* C4_VM2 C2_VM2) (* C4_VM2 C3_VM2) (* C4_VM2 C5_VM2))
   0))
(assert (= (+ 0 (* C4_VM3 C1_VM3) (* C4_VM3 C2_VM3) (* C4_VM3 C3_VM3) (* C4_VM3 C5_VM3))
   0))
(assert (= (+ 0 (* C4_VM3 C1_VM3) (* C4_VM3 C2_VM3) (* C4_VM3 C3_VM3) (* C4_VM3 C5_VM3))
   0))
(assert (= (+ 0 (* C4_VM3 C1_VM3) (* C4_VM3 C2_VM3) (* C4_VM3 C3_VM3) (* C4_VM3 C5_VM3))
   0))
(assert (= (+ 0 (* C4_VM3 C1_VM3) (* C4_VM3 C2_VM3) (* C4_VM3 C3_VM3) (* C4_VM3 C5_VM3))
   0))
(assert (= (+ 0 (* C4_VM4 C1_VM4) (* C4_VM4 C2_VM4) (* C4_VM4 C3_VM4) (* C4_VM4 C5_VM4))
   0))
(assert (= (+ 0 (* C4_VM4 C1_VM4) (* C4_VM4 C2_VM4) (* C4_VM4 C3_VM4) (* C4_VM4 C5_VM4))
   0))
(assert (= (+ 0 (* C4_VM4 C1_VM4) (* C4_VM4 C2_VM4) (* C4_VM4 C3_VM4) (* C4_VM4 C5_VM4))
   0))
(assert (= (+ 0 (* C4_VM4 C1_VM4) (* C4_VM4 C2_VM4) (* C4_VM4 C3_VM4) (* C4_VM4 C5_VM4))
   0))
(assert (= (+ 0 (* C4_VM5 C1_VM5) (* C4_VM5 C2_VM5) (* C4_VM5 C3_VM5) (* C4_VM5 C5_VM5))
   0))
(assert (= (+ 0 (* C4_VM5 C1_VM5) (* C4_VM5 C2_VM5) (* C4_VM5 C3_VM5) (* C4_VM5 C5_VM5))
   0))
(assert (= (+ 0 (* C4_VM5 C1_VM5) (* C4_VM5 C2_VM5) (* C4_VM5 C3_VM5) (* C4_VM5 C5_VM5))
   0))
(assert (= (+ 0 (* C4_VM5 C1_VM5) (* C4_VM5 C2_VM5) (* C4_VM5 C3_VM5) (* C4_VM5 C5_VM5))
   0))
(assert (= (+ 0 (* C4_VM6 C1_VM6) (* C4_VM6 C2_VM6) (* C4_VM6 C3_VM6) (* C4_VM6 C5_VM6))
   0))
(assert (= (+ 0 (* C4_VM6 C1_VM6) (* C4_VM6 C2_VM6) (* C4_VM6 C3_VM6) (* C4_VM6 C5_VM6))
   0))
(assert (= (+ 0 (* C4_VM6 C1_VM6) (* C4_VM6 C2_VM6) (* C4_VM6 C3_VM6) (* C4_VM6 C5_VM6))
   0))
(assert (= (+ 0 (* C4_VM6 C1_VM6) (* C4_VM6 C2_VM6) (* C4_VM6 C3_VM6) (* C4_VM6 C5_VM6))
   0))
(assert (= (+ 0 C5_VM1 C4_VM1 C1_VM1)
   (ite (>= (+ 0 C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) 1) 1 0)))
(assert (= (+ 0 C5_VM2 C4_VM2 C1_VM2)
   (ite (>= (+ 0 C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) 1) 1 0)))
(assert (= (+ 0 C5_VM3 C4_VM3 C1_VM3)
   (ite (>= (+ 0 C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) 1) 1 0)))
(assert (= (+ 0 C5_VM4 C4_VM4 C1_VM4)
   (ite (>= (+ 0 C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) 1) 1 0)))
(assert (= (+ 0 C5_VM5 C4_VM5 C1_VM5)
   (ite (>= (+ 0 C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) 1) 1 0)))
(assert (= (+ 0 C5_VM6 C4_VM6 C1_VM6)
   (ite (>= (+ 0 C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) 1) 1 0)))
(assert (>= (- (* 10 (+ 0 C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5 C4_VM6))
       (+ 0 C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6))
    0))
(assert (< (- (* 10 (+ 0 C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5 C4_VM6))
      (+ 0 C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6))
   10))
(assert (>= (+ 0 C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6) 1))
(assert (>= (+ 0 C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5 C2_VM6) 1))
(assert (>= (+ 0 C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6) 1))
(assert (>= (+ 0 C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5 C4_VM6) 1))
(assert (>= (+ 0 C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6) 1))
(assert (<= (+ 0 (* C1_VM1 4) (* C2_VM1 2) (* C3_VM1 4) (* C4_VM1 8) (* C5_VM1 1))
    ProcProv1))
(assert (<= (+ 0 (* C1_VM2 4) (* C2_VM2 2) (* C3_VM2 4) (* C4_VM2 8) (* C5_VM2 1))
    ProcProv2))
(assert (<= (+ 0 (* C1_VM3 4) (* C2_VM3 2) (* C3_VM3 4) (* C4_VM3 8) (* C5_VM3 1))
    ProcProv3))
(assert (<= (+ 0 (* C1_VM4 4) (* C2_VM4 2) (* C3_VM4 4) (* C4_VM4 8) (* C5_VM4 1))
    ProcProv4))
(assert (<= (+ 0 (* C1_VM5 4) (* C2_VM5 2) (* C3_VM5 4) (* C4_VM5 8) (* C5_VM5 1))
    ProcProv5))
(assert (<= (+ 0 (* C1_VM6 4) (* C2_VM6 2) (* C3_VM6 4) (* C4_VM6 8) (* C5_VM6 1))
    ProcProv6))
(assert (<= (+ 0
       (* C1_VM1 2048)
       (* C2_VM1 512)
       (* C3_VM1 2048)
       (* C4_VM1 16000)
       (* C5_VM1 256))
    MemProv1))
(assert (<= (+ 0
       (* C1_VM2 2048)
       (* C2_VM2 512)
       (* C3_VM2 2048)
       (* C4_VM2 16000)
       (* C5_VM2 256))
    MemProv2))
(assert (<= (+ 0
       (* C1_VM3 2048)
       (* C2_VM3 512)
       (* C3_VM3 2048)
       (* C4_VM3 16000)
       (* C5_VM3 256))
    MemProv3))
(assert (<= (+ 0
       (* C1_VM4 2048)
       (* C2_VM4 512)
       (* C3_VM4 2048)
       (* C4_VM4 16000)
       (* C5_VM4 256))
    MemProv4))
(assert (<= (+ 0
       (* C1_VM5 2048)
       (* C2_VM5 512)
       (* C3_VM5 2048)
       (* C4_VM5 16000)
       (* C5_VM5 256))
    MemProv5))
(assert (<= (+ 0
       (* C1_VM6 2048)
       (* C2_VM6 512)
       (* C3_VM6 2048)
       (* C4_VM6 16000)
       (* C5_VM6 256))
    MemProv6))
(assert (<= (+ 0
       (* C1_VM1 500)
       (* C2_VM1 1000)
       (* C3_VM1 1000)
       (* C4_VM1 2000)
       (* C5_VM1 250))
    StorageProv1))
(assert (<= (+ 0
       (* C1_VM2 500)
       (* C2_VM2 1000)
       (* C3_VM2 1000)
       (* C4_VM2 2000)
       (* C5_VM2 250))
    StorageProv2))
(assert (<= (+ 0
       (* C1_VM3 500)
       (* C2_VM3 1000)
       (* C3_VM3 1000)
       (* C4_VM3 2000)
       (* C5_VM3 250))
    StorageProv3))
(assert (<= (+ 0
       (* C1_VM4 500)
       (* C2_VM4 1000)
       (* C3_VM4 1000)
       (* C4_VM4 2000)
       (* C5_VM4 250))
    StorageProv4))
(assert (<= (+ 0
       (* C1_VM5 500)
       (* C2_VM5 1000)
       (* C3_VM5 1000)
       (* C4_VM5 2000)
       (* C5_VM5 250))
    StorageProv5))
(assert (<= (+ 0
       (* C1_VM6 500)
       (* C2_VM6 1000)
       (* C3_VM6 1000)
       (* C4_VM6 2000)
       (* C5_VM6 250))
    StorageProv6))
(minimize (+ 0 PriceProv1 PriceProv2 PriceProv3 PriceProv4 PriceProv5 PriceProv6))
(check-sat)
(get-objectives)
(exit)