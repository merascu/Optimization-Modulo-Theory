(declare-fun VM1Type () Real)
(declare-fun VM2Type () Real)
(declare-fun VM3Type () Real)
(declare-fun VM4Type () Real)
(declare-fun VM5Type () Real)
(declare-fun VM6Type () Real)
(declare-fun VM7Type () Real)
(declare-fun VM8Type () Real)
(declare-fun PriceProv1 () Real)
(declare-fun C5_VM1 () Bool)
(declare-fun C4_VM1 () Bool)
(declare-fun C3_VM1 () Bool)
(declare-fun C2_VM1 () Bool)
(declare-fun C1_VM1 () Bool)
(declare-fun PriceProv2 () Real)
(declare-fun C5_VM2 () Bool)
(declare-fun C4_VM2 () Bool)
(declare-fun C3_VM2 () Bool)
(declare-fun C2_VM2 () Bool)
(declare-fun C1_VM2 () Bool)
(declare-fun PriceProv3 () Real)
(declare-fun C5_VM3 () Bool)
(declare-fun C4_VM3 () Bool)
(declare-fun C3_VM3 () Bool)
(declare-fun C2_VM3 () Bool)
(declare-fun C1_VM3 () Bool)
(declare-fun PriceProv4 () Real)
(declare-fun C5_VM4 () Bool)
(declare-fun C4_VM4 () Bool)
(declare-fun C3_VM4 () Bool)
(declare-fun C2_VM4 () Bool)
(declare-fun C1_VM4 () Bool)
(declare-fun PriceProv5 () Real)
(declare-fun C5_VM5 () Bool)
(declare-fun C4_VM5 () Bool)
(declare-fun C3_VM5 () Bool)
(declare-fun C2_VM5 () Bool)
(declare-fun C1_VM5 () Bool)
(declare-fun PriceProv6 () Real)
(declare-fun C5_VM6 () Bool)
(declare-fun C4_VM6 () Bool)
(declare-fun C3_VM6 () Bool)
(declare-fun C2_VM6 () Bool)
(declare-fun C1_VM6 () Bool)
(declare-fun PriceProv7 () Real)
(declare-fun C5_VM7 () Bool)
(declare-fun C4_VM7 () Bool)
(declare-fun C3_VM7 () Bool)
(declare-fun C2_VM7 () Bool)
(declare-fun C1_VM7 () Bool)
(declare-fun PriceProv8 () Real)
(declare-fun C5_VM8 () Bool)
(declare-fun C4_VM8 () Bool)
(declare-fun C3_VM8 () Bool)
(declare-fun C2_VM8 () Bool)
(declare-fun C1_VM8 () Bool)
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
(declare-fun StorageProv7 () Real)
(declare-fun MemProv7 () Real)
(declare-fun ProcProv7 () Real)
(declare-fun StorageProv8 () Real)
(declare-fun MemProv8 () Real)
(declare-fun ProcProv8 () Real)
(assert (or (= VM1Type 1.0) (= VM1Type 2.0) (= VM1Type 3.0) (= VM1Type 4.0)))
(assert (or (= VM2Type 1.0) (= VM2Type 2.0) (= VM2Type 3.0) (= VM2Type 4.0)))
(assert (or (= VM3Type 1.0) (= VM3Type 2.0) (= VM3Type 3.0) (= VM3Type 4.0)))
(assert (or (= VM4Type 1.0) (= VM4Type 2.0) (= VM4Type 3.0) (= VM4Type 4.0)))
(assert (or (= VM5Type 1.0) (= VM5Type 2.0) (= VM5Type 3.0) (= VM5Type 4.0)))
(assert (or (= VM6Type 1.0) (= VM6Type 2.0) (= VM6Type 3.0) (= VM6Type 4.0)))
(assert (or (= VM7Type 1.0) (= VM7Type 2.0) (= VM7Type 3.0) (= VM7Type 4.0)))
(assert (or (= VM8Type 1.0) (= VM8Type 2.0) (= VM8Type 3.0) (= VM8Type 4.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1)
    (= PriceProv1 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2)
    (= PriceProv2 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3)
    (= PriceProv3 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4)
    (= PriceProv4 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5)
    (= PriceProv5 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6)
    (= PriceProv6 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7)
    (= PriceProv7 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8)
    (= PriceProv8 0.0)))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 1.0))
    (and (= PriceProv1 8403.0)
         (= ProcProv1 64.0)
         (= MemProv1 976000.0)
         (= StorageProv1 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 1.0))
    (and (= PriceProv2 8403.0)
         (= ProcProv2 64.0)
         (= MemProv2 976000.0)
         (= StorageProv2 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 1.0))
    (and (= PriceProv3 8403.0)
         (= ProcProv3 64.0)
         (= MemProv3 976000.0)
         (= StorageProv3 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 1.0))
    (and (= PriceProv4 8403.0)
         (= ProcProv4 64.0)
         (= MemProv4 976000.0)
         (= StorageProv4 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 1.0))
    (and (= PriceProv5 8403.0)
         (= ProcProv5 64.0)
         (= MemProv5 976000.0)
         (= StorageProv5 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 1.0))
    (and (= PriceProv6 8403.0)
         (= ProcProv6 64.0)
         (= MemProv6 976000.0)
         (= StorageProv6 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 1.0))
    (and (= PriceProv7 8403.0)
         (= ProcProv7 64.0)
         (= MemProv7 976000.0)
         (= StorageProv7 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 1.0))
    (and (= PriceProv8 8403.0)
         (= ProcProv8 64.0)
         (= MemProv8 976000.0)
         (= StorageProv8 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 2.0))
    (and (= PriceProv1 9152.0)
         (= ProcProv1 64.0)
         (= MemProv1 488000.0)
         (= StorageProv1 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 2.0))
    (and (= PriceProv2 9152.0)
         (= ProcProv2 64.0)
         (= MemProv2 488000.0)
         (= StorageProv2 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 2.0))
    (and (= PriceProv3 9152.0)
         (= ProcProv3 64.0)
         (= MemProv3 488000.0)
         (= StorageProv3 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 2.0))
    (and (= PriceProv4 9152.0)
         (= ProcProv4 64.0)
         (= MemProv4 488000.0)
         (= StorageProv4 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 2.0))
    (and (= PriceProv5 9152.0)
         (= ProcProv5 64.0)
         (= MemProv5 488000.0)
         (= StorageProv5 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 2.0))
    (and (= PriceProv6 9152.0)
         (= ProcProv6 64.0)
         (= MemProv6 488000.0)
         (= StorageProv6 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 2.0))
    (and (= PriceProv7 9152.0)
         (= ProcProv7 64.0)
         (= MemProv7 488000.0)
         (= StorageProv7 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 2.0))
    (and (= PriceProv8 9152.0)
         (= ProcProv8 64.0)
         (= MemProv8 488000.0)
         (= StorageProv8 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 3.0))
    (and (= PriceProv1 2808.0)
         (= ProcProv1 32.0)
         (= MemProv1 60000.0)
         (= StorageProv1 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 3.0))
    (and (= PriceProv2 2808.0)
         (= ProcProv2 32.0)
         (= MemProv2 60000.0)
         (= StorageProv2 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 3.0))
    (and (= PriceProv3 2808.0)
         (= ProcProv3 32.0)
         (= MemProv3 60000.0)
         (= StorageProv3 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 3.0))
    (and (= PriceProv4 2808.0)
         (= ProcProv4 32.0)
         (= MemProv4 60000.0)
         (= StorageProv4 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 3.0))
    (and (= PriceProv5 2808.0)
         (= ProcProv5 32.0)
         (= MemProv5 60000.0)
         (= StorageProv5 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 3.0))
    (and (= PriceProv6 2808.0)
         (= ProcProv6 32.0)
         (= MemProv6 60000.0)
         (= StorageProv6 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 3.0))
    (and (= PriceProv7 2808.0)
         (= ProcProv7 32.0)
         (= MemProv7 60000.0)
         (= StorageProv7 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 3.0))
    (and (= PriceProv8 2808.0)
         (= ProcProv8 32.0)
         (= MemProv8 60000.0)
         (= StorageProv8 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 4.0))
    (and (= PriceProv1 1600.0)
         (= ProcProv1 16.0)
         (= MemProv1 122000.0)
         (= StorageProv1 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 4.0))
    (and (= PriceProv2 1600.0)
         (= ProcProv2 16.0)
         (= MemProv2 122000.0)
         (= StorageProv2 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 4.0))
    (and (= PriceProv3 1600.0)
         (= ProcProv3 16.0)
         (= MemProv3 122000.0)
         (= StorageProv3 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 4.0))
    (and (= PriceProv4 1600.0)
         (= ProcProv4 16.0)
         (= MemProv4 122000.0)
         (= StorageProv4 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 4.0))
    (and (= PriceProv5 1600.0)
         (= ProcProv5 16.0)
         (= MemProv5 122000.0)
         (= StorageProv5 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 4.0))
    (and (= PriceProv6 1600.0)
         (= ProcProv6 16.0)
         (= MemProv6 122000.0)
         (= StorageProv6 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 4.0))
    (and (= PriceProv7 1600.0)
         (= ProcProv7 16.0)
         (= MemProv7 122000.0)
         (= StorageProv7 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 4.0))
    (and (= PriceProv8 1600.0)
         (= ProcProv8 16.0)
         (= MemProv8 122000.0)
         (= StorageProv8 1000.0))))
(assert ((_ at-least 3) C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6 C1_VM7 C1_VM8))
(assert ((_ at-least 2) C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5 C2_VM6 C2_VM7 C2_VM8))
(assert ((_ at-least 2) C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6 C5_VM7 C5_VM8))
(assert ((_ pble 0 7 7 7 7 7 7 7 7 -1 -1 -1 -1 -1 -1 -1 -1)
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8))
(assert ((_ at-most 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8))
(assert ((_ pble 0 3 3 3 3 3 3 3 3 -1 -1 -1 -1 -1 -1 -1 -1)
  C4_VM1
  C4_VM2
  C4_VM3
  C4_VM4
  C4_VM5
  C4_VM6
  C4_VM7
  C4_VM8
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8))
(assert ((_ pble 0 2 2 2 2 2 2 2 2 -3 -3 -3 -3 -3 -3 -3 -3)
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8
  C2_VM1
  C2_VM2
  C2_VM3
  C2_VM4
  C2_VM5
  C2_VM6
  C2_VM7
  C2_VM8))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C4_VM1
      C4_VM2
      C4_VM3
      C4_VM4
      C4_VM5
      C4_VM6
      C4_VM7
      C4_VM8)
    ((_ at-least 1) C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5 C4_VM6 C4_VM7 C4_VM8)))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C3_VM1
      C3_VM2
      C3_VM3
      C3_VM4
      C3_VM5
      C3_VM6
      C3_VM7
      C3_VM8)
    ((_ at-least 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8)))
(assert ((_ at-least 1)
  C4_VM1
  C4_VM2
  C4_VM3
  C4_VM4
  C4_VM5
  C4_VM6
  C4_VM7
  C4_VM8
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C5_VM1
      C5_VM2
      C5_VM3
      C5_VM4
      C5_VM5
      C5_VM6
      C5_VM7
      C5_VM8)
    ((_ at-least 1) C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6 C5_VM7 C5_VM8)))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C3_VM1
      C3_VM2
      C3_VM3
      C3_VM4
      C3_VM5
      C3_VM6
      C3_VM7
      C3_VM8)
    ((_ at-least 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8)))
(assert ((_ at-least 1)
  C5_VM1
  C5_VM2
  C5_VM3
  C5_VM4
  C5_VM5
  C5_VM6
  C5_VM7
  C5_VM8
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8))
(assert ((_ at-most 1) C3_VM1 C1_VM1))
(assert ((_ at-most 1) C3_VM1 C2_VM1))
(assert ((_ at-most 1) C3_VM1 C5_VM1))
(assert ((_ at-most 1) C3_VM2 C1_VM2))
(assert ((_ at-most 1) C3_VM2 C2_VM2))
(assert ((_ at-most 1) C3_VM2 C5_VM2))
(assert ((_ at-most 1) C3_VM3 C1_VM3))
(assert ((_ at-most 1) C3_VM3 C2_VM3))
(assert ((_ at-most 1) C3_VM3 C5_VM3))
(assert ((_ at-most 1) C3_VM4 C1_VM4))
(assert ((_ at-most 1) C3_VM4 C2_VM4))
(assert ((_ at-most 1) C3_VM4 C5_VM4))
(assert ((_ at-most 1) C3_VM5 C1_VM5))
(assert ((_ at-most 1) C3_VM5 C2_VM5))
(assert ((_ at-most 1) C3_VM5 C5_VM5))
(assert ((_ at-most 1) C3_VM6 C1_VM6))
(assert ((_ at-most 1) C3_VM6 C2_VM6))
(assert ((_ at-most 1) C3_VM6 C5_VM6))
(assert ((_ at-most 1) C3_VM7 C1_VM7))
(assert ((_ at-most 1) C3_VM7 C2_VM7))
(assert ((_ at-most 1) C3_VM7 C5_VM7))
(assert ((_ at-most 1) C3_VM8 C1_VM8))
(assert ((_ at-most 1) C3_VM8 C2_VM8))
(assert ((_ at-most 1) C3_VM8 C5_VM8))
(assert ((_ at-most 1) C4_VM1 C1_VM1))
(assert ((_ at-most 1) C4_VM1 C2_VM1))
(assert ((_ at-most 1) C4_VM1 C5_VM1))
(assert ((_ at-most 1) C4_VM2 C1_VM2))
(assert ((_ at-most 1) C4_VM2 C2_VM2))
(assert ((_ at-most 1) C4_VM2 C5_VM2))
(assert ((_ at-most 1) C4_VM3 C1_VM3))
(assert ((_ at-most 1) C4_VM3 C2_VM3))
(assert ((_ at-most 1) C4_VM3 C5_VM3))
(assert ((_ at-most 1) C4_VM4 C1_VM4))
(assert ((_ at-most 1) C4_VM4 C2_VM4))
(assert ((_ at-most 1) C4_VM4 C5_VM4))
(assert ((_ at-most 1) C4_VM5 C1_VM5))
(assert ((_ at-most 1) C4_VM5 C2_VM5))
(assert ((_ at-most 1) C4_VM5 C5_VM5))
(assert ((_ at-most 1) C4_VM6 C1_VM6))
(assert ((_ at-most 1) C4_VM6 C2_VM6))
(assert ((_ at-most 1) C4_VM6 C5_VM6))
(assert ((_ at-most 1) C4_VM7 C1_VM7))
(assert ((_ at-most 1) C4_VM7 C2_VM7))
(assert ((_ at-most 1) C4_VM7 C5_VM7))
(assert ((_ at-most 1) C4_VM8 C1_VM8))
(assert ((_ at-most 1) C4_VM8 C2_VM8))
(assert ((_ at-most 1) C4_VM8 C5_VM8))
(assert ((_ at-most 1) C5_VM1 C2_VM1))
(assert ((_ at-most 1) C5_VM1 C3_VM1))
(assert ((_ at-most 1) C5_VM1 C4_VM1))
(assert ((_ at-most 1) C5_VM2 C2_VM2))
(assert ((_ at-most 1) C5_VM2 C3_VM2))
(assert ((_ at-most 1) C5_VM2 C4_VM2))
(assert ((_ at-most 1) C5_VM3 C2_VM3))
(assert ((_ at-most 1) C5_VM3 C3_VM3))
(assert ((_ at-most 1) C5_VM3 C4_VM3))
(assert ((_ at-most 1) C5_VM4 C2_VM4))
(assert ((_ at-most 1) C5_VM4 C3_VM4))
(assert ((_ at-most 1) C5_VM4 C4_VM4))
(assert ((_ at-most 1) C5_VM5 C2_VM5))
(assert ((_ at-most 1) C5_VM5 C3_VM5))
(assert ((_ at-most 1) C5_VM5 C4_VM5))
(assert ((_ at-most 1) C5_VM6 C2_VM6))
(assert ((_ at-most 1) C5_VM6 C3_VM6))
(assert ((_ at-most 1) C5_VM6 C4_VM6))
(assert ((_ at-most 1) C5_VM7 C2_VM7))
(assert ((_ at-most 1) C5_VM7 C3_VM7))
(assert ((_ at-most 1) C5_VM7 C4_VM7))
(assert ((_ at-most 1) C5_VM8 C2_VM8))
(assert ((_ at-most 1) C5_VM8 C3_VM8))
(assert ((_ at-most 1) C5_VM8 C4_VM8))
(assert ((_ at-least 1) C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6 C1_VM7 C1_VM8))
(assert ((_ at-least 1) C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5 C2_VM6 C2_VM7 C2_VM8))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 2)
                       (* (ite C2_VM1 1 0) 2)
                       (* (ite C3_VM1 1 0) 4)
                       (* (ite C4_VM1 1 0) 4)
                       (* (ite C5_VM1 1 0) 4)))))
  (<= a!1 ProcProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 2)
                       (* (ite C2_VM2 1 0) 2)
                       (* (ite C3_VM2 1 0) 4)
                       (* (ite C4_VM2 1 0) 4)
                       (* (ite C5_VM2 1 0) 4)))))
  (<= a!1 ProcProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 2)
                       (* (ite C2_VM3 1 0) 2)
                       (* (ite C3_VM3 1 0) 4)
                       (* (ite C4_VM3 1 0) 4)
                       (* (ite C5_VM3 1 0) 4)))))
  (<= a!1 ProcProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 2)
                       (* (ite C2_VM4 1 0) 2)
                       (* (ite C3_VM4 1 0) 4)
                       (* (ite C4_VM4 1 0) 4)
                       (* (ite C5_VM4 1 0) 4)))))
  (<= a!1 ProcProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 2)
                       (* (ite C2_VM5 1 0) 2)
                       (* (ite C3_VM5 1 0) 4)
                       (* (ite C4_VM5 1 0) 4)
                       (* (ite C5_VM5 1 0) 4)))))
  (<= a!1 ProcProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 2)
                       (* (ite C2_VM6 1 0) 2)
                       (* (ite C3_VM6 1 0) 4)
                       (* (ite C4_VM6 1 0) 4)
                       (* (ite C5_VM6 1 0) 4)))))
  (<= a!1 ProcProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 2)
                       (* (ite C2_VM7 1 0) 2)
                       (* (ite C3_VM7 1 0) 4)
                       (* (ite C4_VM7 1 0) 4)
                       (* (ite C5_VM7 1 0) 4)))))
  (<= a!1 ProcProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 2)
                       (* (ite C2_VM8 1 0) 2)
                       (* (ite C3_VM8 1 0) 4)
                       (* (ite C4_VM8 1 0) 4)
                       (* (ite C5_VM8 1 0) 4)))))
  (<= a!1 ProcProv8)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 512)
                       (* (ite C2_VM1 1 0) 512)
                       (* (ite C3_VM1 1 0) 2048)
                       (* (ite C4_VM1 1 0) 2048)
                       (* (ite C5_VM1 1 0) 4000)))))
  (<= a!1 MemProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 512)
                       (* (ite C2_VM2 1 0) 512)
                       (* (ite C3_VM2 1 0) 2048)
                       (* (ite C4_VM2 1 0) 2048)
                       (* (ite C5_VM2 1 0) 4000)))))
  (<= a!1 MemProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 512)
                       (* (ite C2_VM3 1 0) 512)
                       (* (ite C3_VM3 1 0) 2048)
                       (* (ite C4_VM3 1 0) 2048)
                       (* (ite C5_VM3 1 0) 4000)))))
  (<= a!1 MemProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 512)
                       (* (ite C2_VM4 1 0) 512)
                       (* (ite C3_VM4 1 0) 2048)
                       (* (ite C4_VM4 1 0) 2048)
                       (* (ite C5_VM4 1 0) 4000)))))
  (<= a!1 MemProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 512)
                       (* (ite C2_VM5 1 0) 512)
                       (* (ite C3_VM5 1 0) 2048)
                       (* (ite C4_VM5 1 0) 2048)
                       (* (ite C5_VM5 1 0) 4000)))))
  (<= a!1 MemProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 512)
                       (* (ite C2_VM6 1 0) 512)
                       (* (ite C3_VM6 1 0) 2048)
                       (* (ite C4_VM6 1 0) 2048)
                       (* (ite C5_VM6 1 0) 4000)))))
  (<= a!1 MemProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 512)
                       (* (ite C2_VM7 1 0) 512)
                       (* (ite C3_VM7 1 0) 2048)
                       (* (ite C4_VM7 1 0) 2048)
                       (* (ite C5_VM7 1 0) 4000)))))
  (<= a!1 MemProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 512)
                       (* (ite C2_VM8 1 0) 512)
                       (* (ite C3_VM8 1 0) 2048)
                       (* (ite C4_VM8 1 0) 2048)
                       (* (ite C5_VM8 1 0) 4000)))))
  (<= a!1 MemProv8)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 1000)
                       (* (ite C2_VM1 1 0) 2000)
                       (* (ite C3_VM1 1 0) 500)
                       (* (ite C4_VM1 1 0) 500)
                       (* (ite C5_VM1 1 0) 500)))))
  (<= a!1 StorageProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 1000)
                       (* (ite C2_VM2 1 0) 2000)
                       (* (ite C3_VM2 1 0) 500)
                       (* (ite C4_VM2 1 0) 500)
                       (* (ite C5_VM2 1 0) 500)))))
  (<= a!1 StorageProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 1000)
                       (* (ite C2_VM3 1 0) 2000)
                       (* (ite C3_VM3 1 0) 500)
                       (* (ite C4_VM3 1 0) 500)
                       (* (ite C5_VM3 1 0) 500)))))
  (<= a!1 StorageProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 1000)
                       (* (ite C2_VM4 1 0) 2000)
                       (* (ite C3_VM4 1 0) 500)
                       (* (ite C4_VM4 1 0) 500)
                       (* (ite C5_VM4 1 0) 500)))))
  (<= a!1 StorageProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 1000)
                       (* (ite C2_VM5 1 0) 2000)
                       (* (ite C3_VM5 1 0) 500)
                       (* (ite C4_VM5 1 0) 500)
                       (* (ite C5_VM5 1 0) 500)))))
  (<= a!1 StorageProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 1000)
                       (* (ite C2_VM6 1 0) 2000)
                       (* (ite C3_VM6 1 0) 500)
                       (* (ite C4_VM6 1 0) 500)
                       (* (ite C5_VM6 1 0) 500)))))
  (<= a!1 StorageProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 1000)
                       (* (ite C2_VM7 1 0) 2000)
                       (* (ite C3_VM7 1 0) 500)
                       (* (ite C4_VM7 1 0) 500)
                       (* (ite C5_VM7 1 0) 500)))))
  (<= a!1 StorageProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 1000)
                       (* (ite C2_VM8 1 0) 2000)
                       (* (ite C3_VM8 1 0) 500)
                       (* (ite C4_VM8 1 0) 500)
                       (* (ite C5_VM8 1 0) 500)))))
  (<= a!1 StorageProv8)))
(minimize (+ 0.0
   PriceProv1
   PriceProv2
   PriceProv3
   PriceProv4
   PriceProv5
   PriceProv6
   PriceProv7
   PriceProv8))
(check-sat)
(declare-fun VM1Type () Real)
(declare-fun VM2Type () Real)
(declare-fun VM3Type () Real)
(declare-fun VM4Type () Real)
(declare-fun VM5Type () Real)
(declare-fun VM6Type () Real)
(declare-fun VM7Type () Real)
(declare-fun VM8Type () Real)
(declare-fun PriceProv1 () Real)
(declare-fun C5_VM1 () Bool)
(declare-fun C4_VM1 () Bool)
(declare-fun C3_VM1 () Bool)
(declare-fun C2_VM1 () Bool)
(declare-fun C1_VM1 () Bool)
(declare-fun PriceProv2 () Real)
(declare-fun C5_VM2 () Bool)
(declare-fun C4_VM2 () Bool)
(declare-fun C3_VM2 () Bool)
(declare-fun C2_VM2 () Bool)
(declare-fun C1_VM2 () Bool)
(declare-fun PriceProv3 () Real)
(declare-fun C5_VM3 () Bool)
(declare-fun C4_VM3 () Bool)
(declare-fun C3_VM3 () Bool)
(declare-fun C2_VM3 () Bool)
(declare-fun C1_VM3 () Bool)
(declare-fun PriceProv4 () Real)
(declare-fun C5_VM4 () Bool)
(declare-fun C4_VM4 () Bool)
(declare-fun C3_VM4 () Bool)
(declare-fun C2_VM4 () Bool)
(declare-fun C1_VM4 () Bool)
(declare-fun PriceProv5 () Real)
(declare-fun C5_VM5 () Bool)
(declare-fun C4_VM5 () Bool)
(declare-fun C3_VM5 () Bool)
(declare-fun C2_VM5 () Bool)
(declare-fun C1_VM5 () Bool)
(declare-fun PriceProv6 () Real)
(declare-fun C5_VM6 () Bool)
(declare-fun C4_VM6 () Bool)
(declare-fun C3_VM6 () Bool)
(declare-fun C2_VM6 () Bool)
(declare-fun C1_VM6 () Bool)
(declare-fun PriceProv7 () Real)
(declare-fun C5_VM7 () Bool)
(declare-fun C4_VM7 () Bool)
(declare-fun C3_VM7 () Bool)
(declare-fun C2_VM7 () Bool)
(declare-fun C1_VM7 () Bool)
(declare-fun PriceProv8 () Real)
(declare-fun C5_VM8 () Bool)
(declare-fun C4_VM8 () Bool)
(declare-fun C3_VM8 () Bool)
(declare-fun C2_VM8 () Bool)
(declare-fun C1_VM8 () Bool)
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
(declare-fun StorageProv7 () Real)
(declare-fun MemProv7 () Real)
(declare-fun ProcProv7 () Real)
(declare-fun StorageProv8 () Real)
(declare-fun MemProv8 () Real)
(declare-fun ProcProv8 () Real)
(assert (or (= VM1Type 1.0) (= VM1Type 2.0) (= VM1Type 3.0) (= VM1Type 4.0)))
(assert (or (= VM2Type 1.0) (= VM2Type 2.0) (= VM2Type 3.0) (= VM2Type 4.0)))
(assert (or (= VM3Type 1.0) (= VM3Type 2.0) (= VM3Type 3.0) (= VM3Type 4.0)))
(assert (or (= VM4Type 1.0) (= VM4Type 2.0) (= VM4Type 3.0) (= VM4Type 4.0)))
(assert (or (= VM5Type 1.0) (= VM5Type 2.0) (= VM5Type 3.0) (= VM5Type 4.0)))
(assert (or (= VM6Type 1.0) (= VM6Type 2.0) (= VM6Type 3.0) (= VM6Type 4.0)))
(assert (or (= VM7Type 1.0) (= VM7Type 2.0) (= VM7Type 3.0) (= VM7Type 4.0)))
(assert (or (= VM8Type 1.0) (= VM8Type 2.0) (= VM8Type 3.0) (= VM8Type 4.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1)
    (= PriceProv1 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2)
    (= PriceProv2 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3)
    (= PriceProv3 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4)
    (= PriceProv4 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5)
    (= PriceProv5 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6)
    (= PriceProv6 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7)
    (= PriceProv7 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8)
    (= PriceProv8 0.0)))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 1.0))
    (and (= PriceProv1 8403.0)
         (= ProcProv1 64.0)
         (= MemProv1 976000.0)
         (= StorageProv1 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 1.0))
    (and (= PriceProv2 8403.0)
         (= ProcProv2 64.0)
         (= MemProv2 976000.0)
         (= StorageProv2 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 1.0))
    (and (= PriceProv3 8403.0)
         (= ProcProv3 64.0)
         (= MemProv3 976000.0)
         (= StorageProv3 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 1.0))
    (and (= PriceProv4 8403.0)
         (= ProcProv4 64.0)
         (= MemProv4 976000.0)
         (= StorageProv4 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 1.0))
    (and (= PriceProv5 8403.0)
         (= ProcProv5 64.0)
         (= MemProv5 976000.0)
         (= StorageProv5 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 1.0))
    (and (= PriceProv6 8403.0)
         (= ProcProv6 64.0)
         (= MemProv6 976000.0)
         (= StorageProv6 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 1.0))
    (and (= PriceProv7 8403.0)
         (= ProcProv7 64.0)
         (= MemProv7 976000.0)
         (= StorageProv7 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 1.0))
    (and (= PriceProv8 8403.0)
         (= ProcProv8 64.0)
         (= MemProv8 976000.0)
         (= StorageProv8 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 2.0))
    (and (= PriceProv1 9152.0)
         (= ProcProv1 64.0)
         (= MemProv1 488000.0)
         (= StorageProv1 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 2.0))
    (and (= PriceProv2 9152.0)
         (= ProcProv2 64.0)
         (= MemProv2 488000.0)
         (= StorageProv2 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 2.0))
    (and (= PriceProv3 9152.0)
         (= ProcProv3 64.0)
         (= MemProv3 488000.0)
         (= StorageProv3 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 2.0))
    (and (= PriceProv4 9152.0)
         (= ProcProv4 64.0)
         (= MemProv4 488000.0)
         (= StorageProv4 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 2.0))
    (and (= PriceProv5 9152.0)
         (= ProcProv5 64.0)
         (= MemProv5 488000.0)
         (= StorageProv5 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 2.0))
    (and (= PriceProv6 9152.0)
         (= ProcProv6 64.0)
         (= MemProv6 488000.0)
         (= StorageProv6 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 2.0))
    (and (= PriceProv7 9152.0)
         (= ProcProv7 64.0)
         (= MemProv7 488000.0)
         (= StorageProv7 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 2.0))
    (and (= PriceProv8 9152.0)
         (= ProcProv8 64.0)
         (= MemProv8 488000.0)
         (= StorageProv8 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 3.0))
    (and (= PriceProv1 2808.0)
         (= ProcProv1 32.0)
         (= MemProv1 60000.0)
         (= StorageProv1 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 3.0))
    (and (= PriceProv2 2808.0)
         (= ProcProv2 32.0)
         (= MemProv2 60000.0)
         (= StorageProv2 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 3.0))
    (and (= PriceProv3 2808.0)
         (= ProcProv3 32.0)
         (= MemProv3 60000.0)
         (= StorageProv3 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 3.0))
    (and (= PriceProv4 2808.0)
         (= ProcProv4 32.0)
         (= MemProv4 60000.0)
         (= StorageProv4 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 3.0))
    (and (= PriceProv5 2808.0)
         (= ProcProv5 32.0)
         (= MemProv5 60000.0)
         (= StorageProv5 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 3.0))
    (and (= PriceProv6 2808.0)
         (= ProcProv6 32.0)
         (= MemProv6 60000.0)
         (= StorageProv6 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 3.0))
    (and (= PriceProv7 2808.0)
         (= ProcProv7 32.0)
         (= MemProv7 60000.0)
         (= StorageProv7 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 3.0))
    (and (= PriceProv8 2808.0)
         (= ProcProv8 32.0)
         (= MemProv8 60000.0)
         (= StorageProv8 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 4.0))
    (and (= PriceProv1 1600.0)
         (= ProcProv1 16.0)
         (= MemProv1 122000.0)
         (= StorageProv1 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 4.0))
    (and (= PriceProv2 1600.0)
         (= ProcProv2 16.0)
         (= MemProv2 122000.0)
         (= StorageProv2 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 4.0))
    (and (= PriceProv3 1600.0)
         (= ProcProv3 16.0)
         (= MemProv3 122000.0)
         (= StorageProv3 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 4.0))
    (and (= PriceProv4 1600.0)
         (= ProcProv4 16.0)
         (= MemProv4 122000.0)
         (= StorageProv4 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 4.0))
    (and (= PriceProv5 1600.0)
         (= ProcProv5 16.0)
         (= MemProv5 122000.0)
         (= StorageProv5 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 4.0))
    (and (= PriceProv6 1600.0)
         (= ProcProv6 16.0)
         (= MemProv6 122000.0)
         (= StorageProv6 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 4.0))
    (and (= PriceProv7 1600.0)
         (= ProcProv7 16.0)
         (= MemProv7 122000.0)
         (= StorageProv7 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 4.0))
    (and (= PriceProv8 1600.0)
         (= ProcProv8 16.0)
         (= MemProv8 122000.0)
         (= StorageProv8 1000.0))))
(assert ((_ at-least 3) C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6 C1_VM7 C1_VM8))
(assert ((_ at-least 2) C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5 C2_VM6 C2_VM7 C2_VM8))
(assert ((_ at-least 2) C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6 C5_VM7 C5_VM8))
(assert ((_ pble 0 7 7 7 7 7 7 7 7 -1 -1 -1 -1 -1 -1 -1 -1)
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8))
(assert ((_ at-most 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8))
(assert ((_ pble 0 3 3 3 3 3 3 3 3 -1 -1 -1 -1 -1 -1 -1 -1)
  C4_VM1
  C4_VM2
  C4_VM3
  C4_VM4
  C4_VM5
  C4_VM6
  C4_VM7
  C4_VM8
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8))
(assert ((_ pble 0 2 2 2 2 2 2 2 2 -3 -3 -3 -3 -3 -3 -3 -3)
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8
  C2_VM1
  C2_VM2
  C2_VM3
  C2_VM4
  C2_VM5
  C2_VM6
  C2_VM7
  C2_VM8))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C4_VM1
      C4_VM2
      C4_VM3
      C4_VM4
      C4_VM5
      C4_VM6
      C4_VM7
      C4_VM8)
    ((_ at-least 1) C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5 C4_VM6 C4_VM7 C4_VM8)))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C3_VM1
      C3_VM2
      C3_VM3
      C3_VM4
      C3_VM5
      C3_VM6
      C3_VM7
      C3_VM8)
    ((_ at-least 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8)))
(assert ((_ at-least 1)
  C4_VM1
  C4_VM2
  C4_VM3
  C4_VM4
  C4_VM5
  C4_VM6
  C4_VM7
  C4_VM8
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C5_VM1
      C5_VM2
      C5_VM3
      C5_VM4
      C5_VM5
      C5_VM6
      C5_VM7
      C5_VM8)
    ((_ at-least 1) C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6 C5_VM7 C5_VM8)))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C3_VM1
      C3_VM2
      C3_VM3
      C3_VM4
      C3_VM5
      C3_VM6
      C3_VM7
      C3_VM8)
    ((_ at-least 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8)))
(assert ((_ at-least 1)
  C5_VM1
  C5_VM2
  C5_VM3
  C5_VM4
  C5_VM5
  C5_VM6
  C5_VM7
  C5_VM8
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8))
(assert ((_ at-most 1) C3_VM1 C1_VM1))
(assert ((_ at-most 1) C3_VM1 C2_VM1))
(assert ((_ at-most 1) C3_VM1 C5_VM1))
(assert ((_ at-most 1) C3_VM2 C1_VM2))
(assert ((_ at-most 1) C3_VM2 C2_VM2))
(assert ((_ at-most 1) C3_VM2 C5_VM2))
(assert ((_ at-most 1) C3_VM3 C1_VM3))
(assert ((_ at-most 1) C3_VM3 C2_VM3))
(assert ((_ at-most 1) C3_VM3 C5_VM3))
(assert ((_ at-most 1) C3_VM4 C1_VM4))
(assert ((_ at-most 1) C3_VM4 C2_VM4))
(assert ((_ at-most 1) C3_VM4 C5_VM4))
(assert ((_ at-most 1) C3_VM5 C1_VM5))
(assert ((_ at-most 1) C3_VM5 C2_VM5))
(assert ((_ at-most 1) C3_VM5 C5_VM5))
(assert ((_ at-most 1) C3_VM6 C1_VM6))
(assert ((_ at-most 1) C3_VM6 C2_VM6))
(assert ((_ at-most 1) C3_VM6 C5_VM6))
(assert ((_ at-most 1) C3_VM7 C1_VM7))
(assert ((_ at-most 1) C3_VM7 C2_VM7))
(assert ((_ at-most 1) C3_VM7 C5_VM7))
(assert ((_ at-most 1) C3_VM8 C1_VM8))
(assert ((_ at-most 1) C3_VM8 C2_VM8))
(assert ((_ at-most 1) C3_VM8 C5_VM8))
(assert ((_ at-most 1) C4_VM1 C1_VM1))
(assert ((_ at-most 1) C4_VM1 C2_VM1))
(assert ((_ at-most 1) C4_VM1 C5_VM1))
(assert ((_ at-most 1) C4_VM2 C1_VM2))
(assert ((_ at-most 1) C4_VM2 C2_VM2))
(assert ((_ at-most 1) C4_VM2 C5_VM2))
(assert ((_ at-most 1) C4_VM3 C1_VM3))
(assert ((_ at-most 1) C4_VM3 C2_VM3))
(assert ((_ at-most 1) C4_VM3 C5_VM3))
(assert ((_ at-most 1) C4_VM4 C1_VM4))
(assert ((_ at-most 1) C4_VM4 C2_VM4))
(assert ((_ at-most 1) C4_VM4 C5_VM4))
(assert ((_ at-most 1) C4_VM5 C1_VM5))
(assert ((_ at-most 1) C4_VM5 C2_VM5))
(assert ((_ at-most 1) C4_VM5 C5_VM5))
(assert ((_ at-most 1) C4_VM6 C1_VM6))
(assert ((_ at-most 1) C4_VM6 C2_VM6))
(assert ((_ at-most 1) C4_VM6 C5_VM6))
(assert ((_ at-most 1) C4_VM7 C1_VM7))
(assert ((_ at-most 1) C4_VM7 C2_VM7))
(assert ((_ at-most 1) C4_VM7 C5_VM7))
(assert ((_ at-most 1) C4_VM8 C1_VM8))
(assert ((_ at-most 1) C4_VM8 C2_VM8))
(assert ((_ at-most 1) C4_VM8 C5_VM8))
(assert ((_ at-most 1) C5_VM1 C2_VM1))
(assert ((_ at-most 1) C5_VM1 C3_VM1))
(assert ((_ at-most 1) C5_VM1 C4_VM1))
(assert ((_ at-most 1) C5_VM2 C2_VM2))
(assert ((_ at-most 1) C5_VM2 C3_VM2))
(assert ((_ at-most 1) C5_VM2 C4_VM2))
(assert ((_ at-most 1) C5_VM3 C2_VM3))
(assert ((_ at-most 1) C5_VM3 C3_VM3))
(assert ((_ at-most 1) C5_VM3 C4_VM3))
(assert ((_ at-most 1) C5_VM4 C2_VM4))
(assert ((_ at-most 1) C5_VM4 C3_VM4))
(assert ((_ at-most 1) C5_VM4 C4_VM4))
(assert ((_ at-most 1) C5_VM5 C2_VM5))
(assert ((_ at-most 1) C5_VM5 C3_VM5))
(assert ((_ at-most 1) C5_VM5 C4_VM5))
(assert ((_ at-most 1) C5_VM6 C2_VM6))
(assert ((_ at-most 1) C5_VM6 C3_VM6))
(assert ((_ at-most 1) C5_VM6 C4_VM6))
(assert ((_ at-most 1) C5_VM7 C2_VM7))
(assert ((_ at-most 1) C5_VM7 C3_VM7))
(assert ((_ at-most 1) C5_VM7 C4_VM7))
(assert ((_ at-most 1) C5_VM8 C2_VM8))
(assert ((_ at-most 1) C5_VM8 C3_VM8))
(assert ((_ at-most 1) C5_VM8 C4_VM8))
(assert ((_ at-least 1) C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6 C1_VM7 C1_VM8))
(assert ((_ at-least 1) C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5 C2_VM6 C2_VM7 C2_VM8))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 2)
                       (* (ite C2_VM1 1 0) 2)
                       (* (ite C3_VM1 1 0) 4)
                       (* (ite C4_VM1 1 0) 4)
                       (* (ite C5_VM1 1 0) 4)))))
  (<= a!1 ProcProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 2)
                       (* (ite C2_VM2 1 0) 2)
                       (* (ite C3_VM2 1 0) 4)
                       (* (ite C4_VM2 1 0) 4)
                       (* (ite C5_VM2 1 0) 4)))))
  (<= a!1 ProcProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 2)
                       (* (ite C2_VM3 1 0) 2)
                       (* (ite C3_VM3 1 0) 4)
                       (* (ite C4_VM3 1 0) 4)
                       (* (ite C5_VM3 1 0) 4)))))
  (<= a!1 ProcProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 2)
                       (* (ite C2_VM4 1 0) 2)
                       (* (ite C3_VM4 1 0) 4)
                       (* (ite C4_VM4 1 0) 4)
                       (* (ite C5_VM4 1 0) 4)))))
  (<= a!1 ProcProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 2)
                       (* (ite C2_VM5 1 0) 2)
                       (* (ite C3_VM5 1 0) 4)
                       (* (ite C4_VM5 1 0) 4)
                       (* (ite C5_VM5 1 0) 4)))))
  (<= a!1 ProcProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 2)
                       (* (ite C2_VM6 1 0) 2)
                       (* (ite C3_VM6 1 0) 4)
                       (* (ite C4_VM6 1 0) 4)
                       (* (ite C5_VM6 1 0) 4)))))
  (<= a!1 ProcProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 2)
                       (* (ite C2_VM7 1 0) 2)
                       (* (ite C3_VM7 1 0) 4)
                       (* (ite C4_VM7 1 0) 4)
                       (* (ite C5_VM7 1 0) 4)))))
  (<= a!1 ProcProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 2)
                       (* (ite C2_VM8 1 0) 2)
                       (* (ite C3_VM8 1 0) 4)
                       (* (ite C4_VM8 1 0) 4)
                       (* (ite C5_VM8 1 0) 4)))))
  (<= a!1 ProcProv8)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 512)
                       (* (ite C2_VM1 1 0) 512)
                       (* (ite C3_VM1 1 0) 2048)
                       (* (ite C4_VM1 1 0) 2048)
                       (* (ite C5_VM1 1 0) 4000)))))
  (<= a!1 MemProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 512)
                       (* (ite C2_VM2 1 0) 512)
                       (* (ite C3_VM2 1 0) 2048)
                       (* (ite C4_VM2 1 0) 2048)
                       (* (ite C5_VM2 1 0) 4000)))))
  (<= a!1 MemProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 512)
                       (* (ite C2_VM3 1 0) 512)
                       (* (ite C3_VM3 1 0) 2048)
                       (* (ite C4_VM3 1 0) 2048)
                       (* (ite C5_VM3 1 0) 4000)))))
  (<= a!1 MemProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 512)
                       (* (ite C2_VM4 1 0) 512)
                       (* (ite C3_VM4 1 0) 2048)
                       (* (ite C4_VM4 1 0) 2048)
                       (* (ite C5_VM4 1 0) 4000)))))
  (<= a!1 MemProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 512)
                       (* (ite C2_VM5 1 0) 512)
                       (* (ite C3_VM5 1 0) 2048)
                       (* (ite C4_VM5 1 0) 2048)
                       (* (ite C5_VM5 1 0) 4000)))))
  (<= a!1 MemProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 512)
                       (* (ite C2_VM6 1 0) 512)
                       (* (ite C3_VM6 1 0) 2048)
                       (* (ite C4_VM6 1 0) 2048)
                       (* (ite C5_VM6 1 0) 4000)))))
  (<= a!1 MemProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 512)
                       (* (ite C2_VM7 1 0) 512)
                       (* (ite C3_VM7 1 0) 2048)
                       (* (ite C4_VM7 1 0) 2048)
                       (* (ite C5_VM7 1 0) 4000)))))
  (<= a!1 MemProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 512)
                       (* (ite C2_VM8 1 0) 512)
                       (* (ite C3_VM8 1 0) 2048)
                       (* (ite C4_VM8 1 0) 2048)
                       (* (ite C5_VM8 1 0) 4000)))))
  (<= a!1 MemProv8)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 1000)
                       (* (ite C2_VM1 1 0) 2000)
                       (* (ite C3_VM1 1 0) 500)
                       (* (ite C4_VM1 1 0) 500)
                       (* (ite C5_VM1 1 0) 500)))))
  (<= a!1 StorageProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 1000)
                       (* (ite C2_VM2 1 0) 2000)
                       (* (ite C3_VM2 1 0) 500)
                       (* (ite C4_VM2 1 0) 500)
                       (* (ite C5_VM2 1 0) 500)))))
  (<= a!1 StorageProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 1000)
                       (* (ite C2_VM3 1 0) 2000)
                       (* (ite C3_VM3 1 0) 500)
                       (* (ite C4_VM3 1 0) 500)
                       (* (ite C5_VM3 1 0) 500)))))
  (<= a!1 StorageProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 1000)
                       (* (ite C2_VM4 1 0) 2000)
                       (* (ite C3_VM4 1 0) 500)
                       (* (ite C4_VM4 1 0) 500)
                       (* (ite C5_VM4 1 0) 500)))))
  (<= a!1 StorageProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 1000)
                       (* (ite C2_VM5 1 0) 2000)
                       (* (ite C3_VM5 1 0) 500)
                       (* (ite C4_VM5 1 0) 500)
                       (* (ite C5_VM5 1 0) 500)))))
  (<= a!1 StorageProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 1000)
                       (* (ite C2_VM6 1 0) 2000)
                       (* (ite C3_VM6 1 0) 500)
                       (* (ite C4_VM6 1 0) 500)
                       (* (ite C5_VM6 1 0) 500)))))
  (<= a!1 StorageProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 1000)
                       (* (ite C2_VM7 1 0) 2000)
                       (* (ite C3_VM7 1 0) 500)
                       (* (ite C4_VM7 1 0) 500)
                       (* (ite C5_VM7 1 0) 500)))))
  (<= a!1 StorageProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 1000)
                       (* (ite C2_VM8 1 0) 2000)
                       (* (ite C3_VM8 1 0) 500)
                       (* (ite C4_VM8 1 0) 500)
                       (* (ite C5_VM8 1 0) 500)))))
  (<= a!1 StorageProv8)))
(minimize (+ 0.0
   PriceProv1
   PriceProv2
   PriceProv3
   PriceProv4
   PriceProv5
   PriceProv6
   PriceProv7
   PriceProv8))
(check-sat)
(declare-fun VM1Type () Real)
(declare-fun VM2Type () Real)
(declare-fun VM3Type () Real)
(declare-fun VM4Type () Real)
(declare-fun VM5Type () Real)
(declare-fun VM6Type () Real)
(declare-fun VM7Type () Real)
(declare-fun VM8Type () Real)
(declare-fun PriceProv1 () Real)
(declare-fun C5_VM1 () Bool)
(declare-fun C4_VM1 () Bool)
(declare-fun C3_VM1 () Bool)
(declare-fun C2_VM1 () Bool)
(declare-fun C1_VM1 () Bool)
(declare-fun PriceProv2 () Real)
(declare-fun C5_VM2 () Bool)
(declare-fun C4_VM2 () Bool)
(declare-fun C3_VM2 () Bool)
(declare-fun C2_VM2 () Bool)
(declare-fun C1_VM2 () Bool)
(declare-fun PriceProv3 () Real)
(declare-fun C5_VM3 () Bool)
(declare-fun C4_VM3 () Bool)
(declare-fun C3_VM3 () Bool)
(declare-fun C2_VM3 () Bool)
(declare-fun C1_VM3 () Bool)
(declare-fun PriceProv4 () Real)
(declare-fun C5_VM4 () Bool)
(declare-fun C4_VM4 () Bool)
(declare-fun C3_VM4 () Bool)
(declare-fun C2_VM4 () Bool)
(declare-fun C1_VM4 () Bool)
(declare-fun PriceProv5 () Real)
(declare-fun C5_VM5 () Bool)
(declare-fun C4_VM5 () Bool)
(declare-fun C3_VM5 () Bool)
(declare-fun C2_VM5 () Bool)
(declare-fun C1_VM5 () Bool)
(declare-fun PriceProv6 () Real)
(declare-fun C5_VM6 () Bool)
(declare-fun C4_VM6 () Bool)
(declare-fun C3_VM6 () Bool)
(declare-fun C2_VM6 () Bool)
(declare-fun C1_VM6 () Bool)
(declare-fun PriceProv7 () Real)
(declare-fun C5_VM7 () Bool)
(declare-fun C4_VM7 () Bool)
(declare-fun C3_VM7 () Bool)
(declare-fun C2_VM7 () Bool)
(declare-fun C1_VM7 () Bool)
(declare-fun PriceProv8 () Real)
(declare-fun C5_VM8 () Bool)
(declare-fun C4_VM8 () Bool)
(declare-fun C3_VM8 () Bool)
(declare-fun C2_VM8 () Bool)
(declare-fun C1_VM8 () Bool)
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
(declare-fun StorageProv7 () Real)
(declare-fun MemProv7 () Real)
(declare-fun ProcProv7 () Real)
(declare-fun StorageProv8 () Real)
(declare-fun MemProv8 () Real)
(declare-fun ProcProv8 () Real)
(assert (or (= VM1Type 1.0) (= VM1Type 2.0) (= VM1Type 3.0) (= VM1Type 4.0)))
(assert (or (= VM2Type 1.0) (= VM2Type 2.0) (= VM2Type 3.0) (= VM2Type 4.0)))
(assert (or (= VM3Type 1.0) (= VM3Type 2.0) (= VM3Type 3.0) (= VM3Type 4.0)))
(assert (or (= VM4Type 1.0) (= VM4Type 2.0) (= VM4Type 3.0) (= VM4Type 4.0)))
(assert (or (= VM5Type 1.0) (= VM5Type 2.0) (= VM5Type 3.0) (= VM5Type 4.0)))
(assert (or (= VM6Type 1.0) (= VM6Type 2.0) (= VM6Type 3.0) (= VM6Type 4.0)))
(assert (or (= VM7Type 1.0) (= VM7Type 2.0) (= VM7Type 3.0) (= VM7Type 4.0)))
(assert (or (= VM8Type 1.0) (= VM8Type 2.0) (= VM8Type 3.0) (= VM8Type 4.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1)
    (= PriceProv1 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2)
    (= PriceProv2 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3)
    (= PriceProv3 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4)
    (= PriceProv4 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5)
    (= PriceProv5 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6)
    (= PriceProv6 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7)
    (= PriceProv7 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8)
    (= PriceProv8 0.0)))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 1.0))
    (and (= PriceProv1 8403.0)
         (= ProcProv1 64.0)
         (= MemProv1 976000.0)
         (= StorageProv1 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 1.0))
    (and (= PriceProv2 8403.0)
         (= ProcProv2 64.0)
         (= MemProv2 976000.0)
         (= StorageProv2 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 1.0))
    (and (= PriceProv3 8403.0)
         (= ProcProv3 64.0)
         (= MemProv3 976000.0)
         (= StorageProv3 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 1.0))
    (and (= PriceProv4 8403.0)
         (= ProcProv4 64.0)
         (= MemProv4 976000.0)
         (= StorageProv4 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 1.0))
    (and (= PriceProv5 8403.0)
         (= ProcProv5 64.0)
         (= MemProv5 976000.0)
         (= StorageProv5 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 1.0))
    (and (= PriceProv6 8403.0)
         (= ProcProv6 64.0)
         (= MemProv6 976000.0)
         (= StorageProv6 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 1.0))
    (and (= PriceProv7 8403.0)
         (= ProcProv7 64.0)
         (= MemProv7 976000.0)
         (= StorageProv7 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 1.0))
    (and (= PriceProv8 8403.0)
         (= ProcProv8 64.0)
         (= MemProv8 976000.0)
         (= StorageProv8 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 2.0))
    (and (= PriceProv1 9152.0)
         (= ProcProv1 64.0)
         (= MemProv1 488000.0)
         (= StorageProv1 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 2.0))
    (and (= PriceProv2 9152.0)
         (= ProcProv2 64.0)
         (= MemProv2 488000.0)
         (= StorageProv2 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 2.0))
    (and (= PriceProv3 9152.0)
         (= ProcProv3 64.0)
         (= MemProv3 488000.0)
         (= StorageProv3 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 2.0))
    (and (= PriceProv4 9152.0)
         (= ProcProv4 64.0)
         (= MemProv4 488000.0)
         (= StorageProv4 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 2.0))
    (and (= PriceProv5 9152.0)
         (= ProcProv5 64.0)
         (= MemProv5 488000.0)
         (= StorageProv5 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 2.0))
    (and (= PriceProv6 9152.0)
         (= ProcProv6 64.0)
         (= MemProv6 488000.0)
         (= StorageProv6 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 2.0))
    (and (= PriceProv7 9152.0)
         (= ProcProv7 64.0)
         (= MemProv7 488000.0)
         (= StorageProv7 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 2.0))
    (and (= PriceProv8 9152.0)
         (= ProcProv8 64.0)
         (= MemProv8 488000.0)
         (= StorageProv8 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 3.0))
    (and (= PriceProv1 2808.0)
         (= ProcProv1 32.0)
         (= MemProv1 60000.0)
         (= StorageProv1 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 3.0))
    (and (= PriceProv2 2808.0)
         (= ProcProv2 32.0)
         (= MemProv2 60000.0)
         (= StorageProv2 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 3.0))
    (and (= PriceProv3 2808.0)
         (= ProcProv3 32.0)
         (= MemProv3 60000.0)
         (= StorageProv3 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 3.0))
    (and (= PriceProv4 2808.0)
         (= ProcProv4 32.0)
         (= MemProv4 60000.0)
         (= StorageProv4 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 3.0))
    (and (= PriceProv5 2808.0)
         (= ProcProv5 32.0)
         (= MemProv5 60000.0)
         (= StorageProv5 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 3.0))
    (and (= PriceProv6 2808.0)
         (= ProcProv6 32.0)
         (= MemProv6 60000.0)
         (= StorageProv6 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 3.0))
    (and (= PriceProv7 2808.0)
         (= ProcProv7 32.0)
         (= MemProv7 60000.0)
         (= StorageProv7 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 3.0))
    (and (= PriceProv8 2808.0)
         (= ProcProv8 32.0)
         (= MemProv8 60000.0)
         (= StorageProv8 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 4.0))
    (and (= PriceProv1 1600.0)
         (= ProcProv1 16.0)
         (= MemProv1 122000.0)
         (= StorageProv1 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 4.0))
    (and (= PriceProv2 1600.0)
         (= ProcProv2 16.0)
         (= MemProv2 122000.0)
         (= StorageProv2 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 4.0))
    (and (= PriceProv3 1600.0)
         (= ProcProv3 16.0)
         (= MemProv3 122000.0)
         (= StorageProv3 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 4.0))
    (and (= PriceProv4 1600.0)
         (= ProcProv4 16.0)
         (= MemProv4 122000.0)
         (= StorageProv4 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 4.0))
    (and (= PriceProv5 1600.0)
         (= ProcProv5 16.0)
         (= MemProv5 122000.0)
         (= StorageProv5 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 4.0))
    (and (= PriceProv6 1600.0)
         (= ProcProv6 16.0)
         (= MemProv6 122000.0)
         (= StorageProv6 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 4.0))
    (and (= PriceProv7 1600.0)
         (= ProcProv7 16.0)
         (= MemProv7 122000.0)
         (= StorageProv7 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 4.0))
    (and (= PriceProv8 1600.0)
         (= ProcProv8 16.0)
         (= MemProv8 122000.0)
         (= StorageProv8 1000.0))))
(assert ((_ at-least 3) C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6 C1_VM7 C1_VM8))
(assert ((_ at-least 2) C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5 C2_VM6 C2_VM7 C2_VM8))
(assert ((_ at-least 2) C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6 C5_VM7 C5_VM8))
(assert ((_ pble 0 7 7 7 7 7 7 7 7 -1 -1 -1 -1 -1 -1 -1 -1)
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8))
(assert ((_ at-most 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8))
(assert ((_ pble 0 3 3 3 3 3 3 3 3 -1 -1 -1 -1 -1 -1 -1 -1)
  C4_VM1
  C4_VM2
  C4_VM3
  C4_VM4
  C4_VM5
  C4_VM6
  C4_VM7
  C4_VM8
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8))
(assert ((_ pble 0 2 2 2 2 2 2 2 2 -3 -3 -3 -3 -3 -3 -3 -3)
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8
  C2_VM1
  C2_VM2
  C2_VM3
  C2_VM4
  C2_VM5
  C2_VM6
  C2_VM7
  C2_VM8))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C4_VM1
      C4_VM2
      C4_VM3
      C4_VM4
      C4_VM5
      C4_VM6
      C4_VM7
      C4_VM8)
    ((_ at-least 1) C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5 C4_VM6 C4_VM7 C4_VM8)))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C3_VM1
      C3_VM2
      C3_VM3
      C3_VM4
      C3_VM5
      C3_VM6
      C3_VM7
      C3_VM8)
    ((_ at-least 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8)))
(assert ((_ at-least 1)
  C4_VM1
  C4_VM2
  C4_VM3
  C4_VM4
  C4_VM5
  C4_VM6
  C4_VM7
  C4_VM8
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C5_VM1
      C5_VM2
      C5_VM3
      C5_VM4
      C5_VM5
      C5_VM6
      C5_VM7
      C5_VM8)
    ((_ at-least 1) C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6 C5_VM7 C5_VM8)))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C3_VM1
      C3_VM2
      C3_VM3
      C3_VM4
      C3_VM5
      C3_VM6
      C3_VM7
      C3_VM8)
    ((_ at-least 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8)))
(assert ((_ at-least 1)
  C5_VM1
  C5_VM2
  C5_VM3
  C5_VM4
  C5_VM5
  C5_VM6
  C5_VM7
  C5_VM8
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8))
(assert ((_ at-most 1) C3_VM1 C1_VM1))
(assert ((_ at-most 1) C3_VM1 C2_VM1))
(assert ((_ at-most 1) C3_VM1 C5_VM1))
(assert ((_ at-most 1) C3_VM2 C1_VM2))
(assert ((_ at-most 1) C3_VM2 C2_VM2))
(assert ((_ at-most 1) C3_VM2 C5_VM2))
(assert ((_ at-most 1) C3_VM3 C1_VM3))
(assert ((_ at-most 1) C3_VM3 C2_VM3))
(assert ((_ at-most 1) C3_VM3 C5_VM3))
(assert ((_ at-most 1) C3_VM4 C1_VM4))
(assert ((_ at-most 1) C3_VM4 C2_VM4))
(assert ((_ at-most 1) C3_VM4 C5_VM4))
(assert ((_ at-most 1) C3_VM5 C1_VM5))
(assert ((_ at-most 1) C3_VM5 C2_VM5))
(assert ((_ at-most 1) C3_VM5 C5_VM5))
(assert ((_ at-most 1) C3_VM6 C1_VM6))
(assert ((_ at-most 1) C3_VM6 C2_VM6))
(assert ((_ at-most 1) C3_VM6 C5_VM6))
(assert ((_ at-most 1) C3_VM7 C1_VM7))
(assert ((_ at-most 1) C3_VM7 C2_VM7))
(assert ((_ at-most 1) C3_VM7 C5_VM7))
(assert ((_ at-most 1) C3_VM8 C1_VM8))
(assert ((_ at-most 1) C3_VM8 C2_VM8))
(assert ((_ at-most 1) C3_VM8 C5_VM8))
(assert ((_ at-most 1) C4_VM1 C1_VM1))
(assert ((_ at-most 1) C4_VM1 C2_VM1))
(assert ((_ at-most 1) C4_VM1 C5_VM1))
(assert ((_ at-most 1) C4_VM2 C1_VM2))
(assert ((_ at-most 1) C4_VM2 C2_VM2))
(assert ((_ at-most 1) C4_VM2 C5_VM2))
(assert ((_ at-most 1) C4_VM3 C1_VM3))
(assert ((_ at-most 1) C4_VM3 C2_VM3))
(assert ((_ at-most 1) C4_VM3 C5_VM3))
(assert ((_ at-most 1) C4_VM4 C1_VM4))
(assert ((_ at-most 1) C4_VM4 C2_VM4))
(assert ((_ at-most 1) C4_VM4 C5_VM4))
(assert ((_ at-most 1) C4_VM5 C1_VM5))
(assert ((_ at-most 1) C4_VM5 C2_VM5))
(assert ((_ at-most 1) C4_VM5 C5_VM5))
(assert ((_ at-most 1) C4_VM6 C1_VM6))
(assert ((_ at-most 1) C4_VM6 C2_VM6))
(assert ((_ at-most 1) C4_VM6 C5_VM6))
(assert ((_ at-most 1) C4_VM7 C1_VM7))
(assert ((_ at-most 1) C4_VM7 C2_VM7))
(assert ((_ at-most 1) C4_VM7 C5_VM7))
(assert ((_ at-most 1) C4_VM8 C1_VM8))
(assert ((_ at-most 1) C4_VM8 C2_VM8))
(assert ((_ at-most 1) C4_VM8 C5_VM8))
(assert ((_ at-most 1) C5_VM1 C2_VM1))
(assert ((_ at-most 1) C5_VM1 C3_VM1))
(assert ((_ at-most 1) C5_VM1 C4_VM1))
(assert ((_ at-most 1) C5_VM2 C2_VM2))
(assert ((_ at-most 1) C5_VM2 C3_VM2))
(assert ((_ at-most 1) C5_VM2 C4_VM2))
(assert ((_ at-most 1) C5_VM3 C2_VM3))
(assert ((_ at-most 1) C5_VM3 C3_VM3))
(assert ((_ at-most 1) C5_VM3 C4_VM3))
(assert ((_ at-most 1) C5_VM4 C2_VM4))
(assert ((_ at-most 1) C5_VM4 C3_VM4))
(assert ((_ at-most 1) C5_VM4 C4_VM4))
(assert ((_ at-most 1) C5_VM5 C2_VM5))
(assert ((_ at-most 1) C5_VM5 C3_VM5))
(assert ((_ at-most 1) C5_VM5 C4_VM5))
(assert ((_ at-most 1) C5_VM6 C2_VM6))
(assert ((_ at-most 1) C5_VM6 C3_VM6))
(assert ((_ at-most 1) C5_VM6 C4_VM6))
(assert ((_ at-most 1) C5_VM7 C2_VM7))
(assert ((_ at-most 1) C5_VM7 C3_VM7))
(assert ((_ at-most 1) C5_VM7 C4_VM7))
(assert ((_ at-most 1) C5_VM8 C2_VM8))
(assert ((_ at-most 1) C5_VM8 C3_VM8))
(assert ((_ at-most 1) C5_VM8 C4_VM8))
(assert ((_ at-least 1) C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6 C1_VM7 C1_VM8))
(assert ((_ at-least 1) C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5 C2_VM6 C2_VM7 C2_VM8))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 2)
                       (* (ite C2_VM1 1 0) 2)
                       (* (ite C3_VM1 1 0) 4)
                       (* (ite C4_VM1 1 0) 4)
                       (* (ite C5_VM1 1 0) 4)))))
  (<= a!1 ProcProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 2)
                       (* (ite C2_VM2 1 0) 2)
                       (* (ite C3_VM2 1 0) 4)
                       (* (ite C4_VM2 1 0) 4)
                       (* (ite C5_VM2 1 0) 4)))))
  (<= a!1 ProcProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 2)
                       (* (ite C2_VM3 1 0) 2)
                       (* (ite C3_VM3 1 0) 4)
                       (* (ite C4_VM3 1 0) 4)
                       (* (ite C5_VM3 1 0) 4)))))
  (<= a!1 ProcProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 2)
                       (* (ite C2_VM4 1 0) 2)
                       (* (ite C3_VM4 1 0) 4)
                       (* (ite C4_VM4 1 0) 4)
                       (* (ite C5_VM4 1 0) 4)))))
  (<= a!1 ProcProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 2)
                       (* (ite C2_VM5 1 0) 2)
                       (* (ite C3_VM5 1 0) 4)
                       (* (ite C4_VM5 1 0) 4)
                       (* (ite C5_VM5 1 0) 4)))))
  (<= a!1 ProcProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 2)
                       (* (ite C2_VM6 1 0) 2)
                       (* (ite C3_VM6 1 0) 4)
                       (* (ite C4_VM6 1 0) 4)
                       (* (ite C5_VM6 1 0) 4)))))
  (<= a!1 ProcProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 2)
                       (* (ite C2_VM7 1 0) 2)
                       (* (ite C3_VM7 1 0) 4)
                       (* (ite C4_VM7 1 0) 4)
                       (* (ite C5_VM7 1 0) 4)))))
  (<= a!1 ProcProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 2)
                       (* (ite C2_VM8 1 0) 2)
                       (* (ite C3_VM8 1 0) 4)
                       (* (ite C4_VM8 1 0) 4)
                       (* (ite C5_VM8 1 0) 4)))))
  (<= a!1 ProcProv8)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 512)
                       (* (ite C2_VM1 1 0) 512)
                       (* (ite C3_VM1 1 0) 2048)
                       (* (ite C4_VM1 1 0) 2048)
                       (* (ite C5_VM1 1 0) 4000)))))
  (<= a!1 MemProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 512)
                       (* (ite C2_VM2 1 0) 512)
                       (* (ite C3_VM2 1 0) 2048)
                       (* (ite C4_VM2 1 0) 2048)
                       (* (ite C5_VM2 1 0) 4000)))))
  (<= a!1 MemProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 512)
                       (* (ite C2_VM3 1 0) 512)
                       (* (ite C3_VM3 1 0) 2048)
                       (* (ite C4_VM3 1 0) 2048)
                       (* (ite C5_VM3 1 0) 4000)))))
  (<= a!1 MemProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 512)
                       (* (ite C2_VM4 1 0) 512)
                       (* (ite C3_VM4 1 0) 2048)
                       (* (ite C4_VM4 1 0) 2048)
                       (* (ite C5_VM4 1 0) 4000)))))
  (<= a!1 MemProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 512)
                       (* (ite C2_VM5 1 0) 512)
                       (* (ite C3_VM5 1 0) 2048)
                       (* (ite C4_VM5 1 0) 2048)
                       (* (ite C5_VM5 1 0) 4000)))))
  (<= a!1 MemProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 512)
                       (* (ite C2_VM6 1 0) 512)
                       (* (ite C3_VM6 1 0) 2048)
                       (* (ite C4_VM6 1 0) 2048)
                       (* (ite C5_VM6 1 0) 4000)))))
  (<= a!1 MemProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 512)
                       (* (ite C2_VM7 1 0) 512)
                       (* (ite C3_VM7 1 0) 2048)
                       (* (ite C4_VM7 1 0) 2048)
                       (* (ite C5_VM7 1 0) 4000)))))
  (<= a!1 MemProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 512)
                       (* (ite C2_VM8 1 0) 512)
                       (* (ite C3_VM8 1 0) 2048)
                       (* (ite C4_VM8 1 0) 2048)
                       (* (ite C5_VM8 1 0) 4000)))))
  (<= a!1 MemProv8)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 1000)
                       (* (ite C2_VM1 1 0) 2000)
                       (* (ite C3_VM1 1 0) 500)
                       (* (ite C4_VM1 1 0) 500)
                       (* (ite C5_VM1 1 0) 500)))))
  (<= a!1 StorageProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 1000)
                       (* (ite C2_VM2 1 0) 2000)
                       (* (ite C3_VM2 1 0) 500)
                       (* (ite C4_VM2 1 0) 500)
                       (* (ite C5_VM2 1 0) 500)))))
  (<= a!1 StorageProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 1000)
                       (* (ite C2_VM3 1 0) 2000)
                       (* (ite C3_VM3 1 0) 500)
                       (* (ite C4_VM3 1 0) 500)
                       (* (ite C5_VM3 1 0) 500)))))
  (<= a!1 StorageProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 1000)
                       (* (ite C2_VM4 1 0) 2000)
                       (* (ite C3_VM4 1 0) 500)
                       (* (ite C4_VM4 1 0) 500)
                       (* (ite C5_VM4 1 0) 500)))))
  (<= a!1 StorageProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 1000)
                       (* (ite C2_VM5 1 0) 2000)
                       (* (ite C3_VM5 1 0) 500)
                       (* (ite C4_VM5 1 0) 500)
                       (* (ite C5_VM5 1 0) 500)))))
  (<= a!1 StorageProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 1000)
                       (* (ite C2_VM6 1 0) 2000)
                       (* (ite C3_VM6 1 0) 500)
                       (* (ite C4_VM6 1 0) 500)
                       (* (ite C5_VM6 1 0) 500)))))
  (<= a!1 StorageProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 1000)
                       (* (ite C2_VM7 1 0) 2000)
                       (* (ite C3_VM7 1 0) 500)
                       (* (ite C4_VM7 1 0) 500)
                       (* (ite C5_VM7 1 0) 500)))))
  (<= a!1 StorageProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 1000)
                       (* (ite C2_VM8 1 0) 2000)
                       (* (ite C3_VM8 1 0) 500)
                       (* (ite C4_VM8 1 0) 500)
                       (* (ite C5_VM8 1 0) 500)))))
  (<= a!1 StorageProv8)))
(minimize (+ 0.0
   PriceProv1
   PriceProv2
   PriceProv3
   PriceProv4
   PriceProv5
   PriceProv6
   PriceProv7
   PriceProv8))
(check-sat)
(declare-fun VM1Type () Real)
(declare-fun VM2Type () Real)
(declare-fun VM3Type () Real)
(declare-fun VM4Type () Real)
(declare-fun VM5Type () Real)
(declare-fun VM6Type () Real)
(declare-fun VM7Type () Real)
(declare-fun VM8Type () Real)
(declare-fun PriceProv1 () Real)
(declare-fun C5_VM1 () Bool)
(declare-fun C4_VM1 () Bool)
(declare-fun C3_VM1 () Bool)
(declare-fun C2_VM1 () Bool)
(declare-fun C1_VM1 () Bool)
(declare-fun PriceProv2 () Real)
(declare-fun C5_VM2 () Bool)
(declare-fun C4_VM2 () Bool)
(declare-fun C3_VM2 () Bool)
(declare-fun C2_VM2 () Bool)
(declare-fun C1_VM2 () Bool)
(declare-fun PriceProv3 () Real)
(declare-fun C5_VM3 () Bool)
(declare-fun C4_VM3 () Bool)
(declare-fun C3_VM3 () Bool)
(declare-fun C2_VM3 () Bool)
(declare-fun C1_VM3 () Bool)
(declare-fun PriceProv4 () Real)
(declare-fun C5_VM4 () Bool)
(declare-fun C4_VM4 () Bool)
(declare-fun C3_VM4 () Bool)
(declare-fun C2_VM4 () Bool)
(declare-fun C1_VM4 () Bool)
(declare-fun PriceProv5 () Real)
(declare-fun C5_VM5 () Bool)
(declare-fun C4_VM5 () Bool)
(declare-fun C3_VM5 () Bool)
(declare-fun C2_VM5 () Bool)
(declare-fun C1_VM5 () Bool)
(declare-fun PriceProv6 () Real)
(declare-fun C5_VM6 () Bool)
(declare-fun C4_VM6 () Bool)
(declare-fun C3_VM6 () Bool)
(declare-fun C2_VM6 () Bool)
(declare-fun C1_VM6 () Bool)
(declare-fun PriceProv7 () Real)
(declare-fun C5_VM7 () Bool)
(declare-fun C4_VM7 () Bool)
(declare-fun C3_VM7 () Bool)
(declare-fun C2_VM7 () Bool)
(declare-fun C1_VM7 () Bool)
(declare-fun PriceProv8 () Real)
(declare-fun C5_VM8 () Bool)
(declare-fun C4_VM8 () Bool)
(declare-fun C3_VM8 () Bool)
(declare-fun C2_VM8 () Bool)
(declare-fun C1_VM8 () Bool)
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
(declare-fun StorageProv7 () Real)
(declare-fun MemProv7 () Real)
(declare-fun ProcProv7 () Real)
(declare-fun StorageProv8 () Real)
(declare-fun MemProv8 () Real)
(declare-fun ProcProv8 () Real)
(assert (or (= VM1Type 1.0) (= VM1Type 2.0) (= VM1Type 3.0) (= VM1Type 4.0)))
(assert (or (= VM2Type 1.0) (= VM2Type 2.0) (= VM2Type 3.0) (= VM2Type 4.0)))
(assert (or (= VM3Type 1.0) (= VM3Type 2.0) (= VM3Type 3.0) (= VM3Type 4.0)))
(assert (or (= VM4Type 1.0) (= VM4Type 2.0) (= VM4Type 3.0) (= VM4Type 4.0)))
(assert (or (= VM5Type 1.0) (= VM5Type 2.0) (= VM5Type 3.0) (= VM5Type 4.0)))
(assert (or (= VM6Type 1.0) (= VM6Type 2.0) (= VM6Type 3.0) (= VM6Type 4.0)))
(assert (or (= VM7Type 1.0) (= VM7Type 2.0) (= VM7Type 3.0) (= VM7Type 4.0)))
(assert (or (= VM8Type 1.0) (= VM8Type 2.0) (= VM8Type 3.0) (= VM8Type 4.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1)
    (= PriceProv1 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2)
    (= PriceProv2 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3)
    (= PriceProv3 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4)
    (= PriceProv4 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5)
    (= PriceProv5 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6)
    (= PriceProv6 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7)
    (= PriceProv7 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8)
    (= PriceProv8 0.0)))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 1.0))
    (and (= PriceProv1 8403.0)
         (= ProcProv1 64.0)
         (= MemProv1 976000.0)
         (= StorageProv1 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 1.0))
    (and (= PriceProv2 8403.0)
         (= ProcProv2 64.0)
         (= MemProv2 976000.0)
         (= StorageProv2 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 1.0))
    (and (= PriceProv3 8403.0)
         (= ProcProv3 64.0)
         (= MemProv3 976000.0)
         (= StorageProv3 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 1.0))
    (and (= PriceProv4 8403.0)
         (= ProcProv4 64.0)
         (= MemProv4 976000.0)
         (= StorageProv4 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 1.0))
    (and (= PriceProv5 8403.0)
         (= ProcProv5 64.0)
         (= MemProv5 976000.0)
         (= StorageProv5 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 1.0))
    (and (= PriceProv6 8403.0)
         (= ProcProv6 64.0)
         (= MemProv6 976000.0)
         (= StorageProv6 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 1.0))
    (and (= PriceProv7 8403.0)
         (= ProcProv7 64.0)
         (= MemProv7 976000.0)
         (= StorageProv7 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 1.0))
    (and (= PriceProv8 8403.0)
         (= ProcProv8 64.0)
         (= MemProv8 976000.0)
         (= StorageProv8 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 2.0))
    (and (= PriceProv1 9152.0)
         (= ProcProv1 64.0)
         (= MemProv1 488000.0)
         (= StorageProv1 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 2.0))
    (and (= PriceProv2 9152.0)
         (= ProcProv2 64.0)
         (= MemProv2 488000.0)
         (= StorageProv2 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 2.0))
    (and (= PriceProv3 9152.0)
         (= ProcProv3 64.0)
         (= MemProv3 488000.0)
         (= StorageProv3 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 2.0))
    (and (= PriceProv4 9152.0)
         (= ProcProv4 64.0)
         (= MemProv4 488000.0)
         (= StorageProv4 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 2.0))
    (and (= PriceProv5 9152.0)
         (= ProcProv5 64.0)
         (= MemProv5 488000.0)
         (= StorageProv5 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 2.0))
    (and (= PriceProv6 9152.0)
         (= ProcProv6 64.0)
         (= MemProv6 488000.0)
         (= StorageProv6 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 2.0))
    (and (= PriceProv7 9152.0)
         (= ProcProv7 64.0)
         (= MemProv7 488000.0)
         (= StorageProv7 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 2.0))
    (and (= PriceProv8 9152.0)
         (= ProcProv8 64.0)
         (= MemProv8 488000.0)
         (= StorageProv8 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 3.0))
    (and (= PriceProv1 2808.0)
         (= ProcProv1 32.0)
         (= MemProv1 60000.0)
         (= StorageProv1 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 3.0))
    (and (= PriceProv2 2808.0)
         (= ProcProv2 32.0)
         (= MemProv2 60000.0)
         (= StorageProv2 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 3.0))
    (and (= PriceProv3 2808.0)
         (= ProcProv3 32.0)
         (= MemProv3 60000.0)
         (= StorageProv3 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 3.0))
    (and (= PriceProv4 2808.0)
         (= ProcProv4 32.0)
         (= MemProv4 60000.0)
         (= StorageProv4 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 3.0))
    (and (= PriceProv5 2808.0)
         (= ProcProv5 32.0)
         (= MemProv5 60000.0)
         (= StorageProv5 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 3.0))
    (and (= PriceProv6 2808.0)
         (= ProcProv6 32.0)
         (= MemProv6 60000.0)
         (= StorageProv6 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 3.0))
    (and (= PriceProv7 2808.0)
         (= ProcProv7 32.0)
         (= MemProv7 60000.0)
         (= StorageProv7 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 3.0))
    (and (= PriceProv8 2808.0)
         (= ProcProv8 32.0)
         (= MemProv8 60000.0)
         (= StorageProv8 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 4.0))
    (and (= PriceProv1 1600.0)
         (= ProcProv1 16.0)
         (= MemProv1 122000.0)
         (= StorageProv1 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 4.0))
    (and (= PriceProv2 1600.0)
         (= ProcProv2 16.0)
         (= MemProv2 122000.0)
         (= StorageProv2 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 4.0))
    (and (= PriceProv3 1600.0)
         (= ProcProv3 16.0)
         (= MemProv3 122000.0)
         (= StorageProv3 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 4.0))
    (and (= PriceProv4 1600.0)
         (= ProcProv4 16.0)
         (= MemProv4 122000.0)
         (= StorageProv4 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 4.0))
    (and (= PriceProv5 1600.0)
         (= ProcProv5 16.0)
         (= MemProv5 122000.0)
         (= StorageProv5 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 4.0))
    (and (= PriceProv6 1600.0)
         (= ProcProv6 16.0)
         (= MemProv6 122000.0)
         (= StorageProv6 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 4.0))
    (and (= PriceProv7 1600.0)
         (= ProcProv7 16.0)
         (= MemProv7 122000.0)
         (= StorageProv7 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 4.0))
    (and (= PriceProv8 1600.0)
         (= ProcProv8 16.0)
         (= MemProv8 122000.0)
         (= StorageProv8 1000.0))))
(assert ((_ at-least 3) C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6 C1_VM7 C1_VM8))
(assert ((_ at-least 2) C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5 C2_VM6 C2_VM7 C2_VM8))
(assert ((_ at-least 2) C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6 C5_VM7 C5_VM8))
(assert ((_ pble 0 7 7 7 7 7 7 7 7 -1 -1 -1 -1 -1 -1 -1 -1)
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8))
(assert ((_ at-most 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8))
(assert ((_ pble 0 3 3 3 3 3 3 3 3 -1 -1 -1 -1 -1 -1 -1 -1)
  C4_VM1
  C4_VM2
  C4_VM3
  C4_VM4
  C4_VM5
  C4_VM6
  C4_VM7
  C4_VM8
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8))
(assert ((_ pble 0 2 2 2 2 2 2 2 2 -3 -3 -3 -3 -3 -3 -3 -3)
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8
  C2_VM1
  C2_VM2
  C2_VM3
  C2_VM4
  C2_VM5
  C2_VM6
  C2_VM7
  C2_VM8))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C4_VM1
      C4_VM2
      C4_VM3
      C4_VM4
      C4_VM5
      C4_VM6
      C4_VM7
      C4_VM8)
    ((_ at-least 1) C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5 C4_VM6 C4_VM7 C4_VM8)))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C3_VM1
      C3_VM2
      C3_VM3
      C3_VM4
      C3_VM5
      C3_VM6
      C3_VM7
      C3_VM8)
    ((_ at-least 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8)))
(assert ((_ at-least 1)
  C4_VM1
  C4_VM2
  C4_VM3
  C4_VM4
  C4_VM5
  C4_VM6
  C4_VM7
  C4_VM8
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C5_VM1
      C5_VM2
      C5_VM3
      C5_VM4
      C5_VM5
      C5_VM6
      C5_VM7
      C5_VM8)
    ((_ at-least 1) C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6 C5_VM7 C5_VM8)))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C3_VM1
      C3_VM2
      C3_VM3
      C3_VM4
      C3_VM5
      C3_VM6
      C3_VM7
      C3_VM8)
    ((_ at-least 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8)))
(assert ((_ at-least 1)
  C5_VM1
  C5_VM2
  C5_VM3
  C5_VM4
  C5_VM5
  C5_VM6
  C5_VM7
  C5_VM8
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8))
(assert ((_ at-most 1) C3_VM1 C1_VM1))
(assert ((_ at-most 1) C3_VM1 C2_VM1))
(assert ((_ at-most 1) C3_VM1 C5_VM1))
(assert ((_ at-most 1) C3_VM2 C1_VM2))
(assert ((_ at-most 1) C3_VM2 C2_VM2))
(assert ((_ at-most 1) C3_VM2 C5_VM2))
(assert ((_ at-most 1) C3_VM3 C1_VM3))
(assert ((_ at-most 1) C3_VM3 C2_VM3))
(assert ((_ at-most 1) C3_VM3 C5_VM3))
(assert ((_ at-most 1) C3_VM4 C1_VM4))
(assert ((_ at-most 1) C3_VM4 C2_VM4))
(assert ((_ at-most 1) C3_VM4 C5_VM4))
(assert ((_ at-most 1) C3_VM5 C1_VM5))
(assert ((_ at-most 1) C3_VM5 C2_VM5))
(assert ((_ at-most 1) C3_VM5 C5_VM5))
(assert ((_ at-most 1) C3_VM6 C1_VM6))
(assert ((_ at-most 1) C3_VM6 C2_VM6))
(assert ((_ at-most 1) C3_VM6 C5_VM6))
(assert ((_ at-most 1) C3_VM7 C1_VM7))
(assert ((_ at-most 1) C3_VM7 C2_VM7))
(assert ((_ at-most 1) C3_VM7 C5_VM7))
(assert ((_ at-most 1) C3_VM8 C1_VM8))
(assert ((_ at-most 1) C3_VM8 C2_VM8))
(assert ((_ at-most 1) C3_VM8 C5_VM8))
(assert ((_ at-most 1) C4_VM1 C1_VM1))
(assert ((_ at-most 1) C4_VM1 C2_VM1))
(assert ((_ at-most 1) C4_VM1 C5_VM1))
(assert ((_ at-most 1) C4_VM2 C1_VM2))
(assert ((_ at-most 1) C4_VM2 C2_VM2))
(assert ((_ at-most 1) C4_VM2 C5_VM2))
(assert ((_ at-most 1) C4_VM3 C1_VM3))
(assert ((_ at-most 1) C4_VM3 C2_VM3))
(assert ((_ at-most 1) C4_VM3 C5_VM3))
(assert ((_ at-most 1) C4_VM4 C1_VM4))
(assert ((_ at-most 1) C4_VM4 C2_VM4))
(assert ((_ at-most 1) C4_VM4 C5_VM4))
(assert ((_ at-most 1) C4_VM5 C1_VM5))
(assert ((_ at-most 1) C4_VM5 C2_VM5))
(assert ((_ at-most 1) C4_VM5 C5_VM5))
(assert ((_ at-most 1) C4_VM6 C1_VM6))
(assert ((_ at-most 1) C4_VM6 C2_VM6))
(assert ((_ at-most 1) C4_VM6 C5_VM6))
(assert ((_ at-most 1) C4_VM7 C1_VM7))
(assert ((_ at-most 1) C4_VM7 C2_VM7))
(assert ((_ at-most 1) C4_VM7 C5_VM7))
(assert ((_ at-most 1) C4_VM8 C1_VM8))
(assert ((_ at-most 1) C4_VM8 C2_VM8))
(assert ((_ at-most 1) C4_VM8 C5_VM8))
(assert ((_ at-most 1) C5_VM1 C2_VM1))
(assert ((_ at-most 1) C5_VM1 C3_VM1))
(assert ((_ at-most 1) C5_VM1 C4_VM1))
(assert ((_ at-most 1) C5_VM2 C2_VM2))
(assert ((_ at-most 1) C5_VM2 C3_VM2))
(assert ((_ at-most 1) C5_VM2 C4_VM2))
(assert ((_ at-most 1) C5_VM3 C2_VM3))
(assert ((_ at-most 1) C5_VM3 C3_VM3))
(assert ((_ at-most 1) C5_VM3 C4_VM3))
(assert ((_ at-most 1) C5_VM4 C2_VM4))
(assert ((_ at-most 1) C5_VM4 C3_VM4))
(assert ((_ at-most 1) C5_VM4 C4_VM4))
(assert ((_ at-most 1) C5_VM5 C2_VM5))
(assert ((_ at-most 1) C5_VM5 C3_VM5))
(assert ((_ at-most 1) C5_VM5 C4_VM5))
(assert ((_ at-most 1) C5_VM6 C2_VM6))
(assert ((_ at-most 1) C5_VM6 C3_VM6))
(assert ((_ at-most 1) C5_VM6 C4_VM6))
(assert ((_ at-most 1) C5_VM7 C2_VM7))
(assert ((_ at-most 1) C5_VM7 C3_VM7))
(assert ((_ at-most 1) C5_VM7 C4_VM7))
(assert ((_ at-most 1) C5_VM8 C2_VM8))
(assert ((_ at-most 1) C5_VM8 C3_VM8))
(assert ((_ at-most 1) C5_VM8 C4_VM8))
(assert ((_ at-least 1) C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6 C1_VM7 C1_VM8))
(assert ((_ at-least 1) C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5 C2_VM6 C2_VM7 C2_VM8))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 2)
                       (* (ite C2_VM1 1 0) 2)
                       (* (ite C3_VM1 1 0) 4)
                       (* (ite C4_VM1 1 0) 4)
                       (* (ite C5_VM1 1 0) 4)))))
  (<= a!1 ProcProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 2)
                       (* (ite C2_VM2 1 0) 2)
                       (* (ite C3_VM2 1 0) 4)
                       (* (ite C4_VM2 1 0) 4)
                       (* (ite C5_VM2 1 0) 4)))))
  (<= a!1 ProcProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 2)
                       (* (ite C2_VM3 1 0) 2)
                       (* (ite C3_VM3 1 0) 4)
                       (* (ite C4_VM3 1 0) 4)
                       (* (ite C5_VM3 1 0) 4)))))
  (<= a!1 ProcProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 2)
                       (* (ite C2_VM4 1 0) 2)
                       (* (ite C3_VM4 1 0) 4)
                       (* (ite C4_VM4 1 0) 4)
                       (* (ite C5_VM4 1 0) 4)))))
  (<= a!1 ProcProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 2)
                       (* (ite C2_VM5 1 0) 2)
                       (* (ite C3_VM5 1 0) 4)
                       (* (ite C4_VM5 1 0) 4)
                       (* (ite C5_VM5 1 0) 4)))))
  (<= a!1 ProcProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 2)
                       (* (ite C2_VM6 1 0) 2)
                       (* (ite C3_VM6 1 0) 4)
                       (* (ite C4_VM6 1 0) 4)
                       (* (ite C5_VM6 1 0) 4)))))
  (<= a!1 ProcProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 2)
                       (* (ite C2_VM7 1 0) 2)
                       (* (ite C3_VM7 1 0) 4)
                       (* (ite C4_VM7 1 0) 4)
                       (* (ite C5_VM7 1 0) 4)))))
  (<= a!1 ProcProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 2)
                       (* (ite C2_VM8 1 0) 2)
                       (* (ite C3_VM8 1 0) 4)
                       (* (ite C4_VM8 1 0) 4)
                       (* (ite C5_VM8 1 0) 4)))))
  (<= a!1 ProcProv8)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 512)
                       (* (ite C2_VM1 1 0) 512)
                       (* (ite C3_VM1 1 0) 2048)
                       (* (ite C4_VM1 1 0) 2048)
                       (* (ite C5_VM1 1 0) 4000)))))
  (<= a!1 MemProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 512)
                       (* (ite C2_VM2 1 0) 512)
                       (* (ite C3_VM2 1 0) 2048)
                       (* (ite C4_VM2 1 0) 2048)
                       (* (ite C5_VM2 1 0) 4000)))))
  (<= a!1 MemProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 512)
                       (* (ite C2_VM3 1 0) 512)
                       (* (ite C3_VM3 1 0) 2048)
                       (* (ite C4_VM3 1 0) 2048)
                       (* (ite C5_VM3 1 0) 4000)))))
  (<= a!1 MemProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 512)
                       (* (ite C2_VM4 1 0) 512)
                       (* (ite C3_VM4 1 0) 2048)
                       (* (ite C4_VM4 1 0) 2048)
                       (* (ite C5_VM4 1 0) 4000)))))
  (<= a!1 MemProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 512)
                       (* (ite C2_VM5 1 0) 512)
                       (* (ite C3_VM5 1 0) 2048)
                       (* (ite C4_VM5 1 0) 2048)
                       (* (ite C5_VM5 1 0) 4000)))))
  (<= a!1 MemProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 512)
                       (* (ite C2_VM6 1 0) 512)
                       (* (ite C3_VM6 1 0) 2048)
                       (* (ite C4_VM6 1 0) 2048)
                       (* (ite C5_VM6 1 0) 4000)))))
  (<= a!1 MemProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 512)
                       (* (ite C2_VM7 1 0) 512)
                       (* (ite C3_VM7 1 0) 2048)
                       (* (ite C4_VM7 1 0) 2048)
                       (* (ite C5_VM7 1 0) 4000)))))
  (<= a!1 MemProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 512)
                       (* (ite C2_VM8 1 0) 512)
                       (* (ite C3_VM8 1 0) 2048)
                       (* (ite C4_VM8 1 0) 2048)
                       (* (ite C5_VM8 1 0) 4000)))))
  (<= a!1 MemProv8)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 1000)
                       (* (ite C2_VM1 1 0) 2000)
                       (* (ite C3_VM1 1 0) 500)
                       (* (ite C4_VM1 1 0) 500)
                       (* (ite C5_VM1 1 0) 500)))))
  (<= a!1 StorageProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 1000)
                       (* (ite C2_VM2 1 0) 2000)
                       (* (ite C3_VM2 1 0) 500)
                       (* (ite C4_VM2 1 0) 500)
                       (* (ite C5_VM2 1 0) 500)))))
  (<= a!1 StorageProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 1000)
                       (* (ite C2_VM3 1 0) 2000)
                       (* (ite C3_VM3 1 0) 500)
                       (* (ite C4_VM3 1 0) 500)
                       (* (ite C5_VM3 1 0) 500)))))
  (<= a!1 StorageProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 1000)
                       (* (ite C2_VM4 1 0) 2000)
                       (* (ite C3_VM4 1 0) 500)
                       (* (ite C4_VM4 1 0) 500)
                       (* (ite C5_VM4 1 0) 500)))))
  (<= a!1 StorageProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 1000)
                       (* (ite C2_VM5 1 0) 2000)
                       (* (ite C3_VM5 1 0) 500)
                       (* (ite C4_VM5 1 0) 500)
                       (* (ite C5_VM5 1 0) 500)))))
  (<= a!1 StorageProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 1000)
                       (* (ite C2_VM6 1 0) 2000)
                       (* (ite C3_VM6 1 0) 500)
                       (* (ite C4_VM6 1 0) 500)
                       (* (ite C5_VM6 1 0) 500)))))
  (<= a!1 StorageProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 1000)
                       (* (ite C2_VM7 1 0) 2000)
                       (* (ite C3_VM7 1 0) 500)
                       (* (ite C4_VM7 1 0) 500)
                       (* (ite C5_VM7 1 0) 500)))))
  (<= a!1 StorageProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 1000)
                       (* (ite C2_VM8 1 0) 2000)
                       (* (ite C3_VM8 1 0) 500)
                       (* (ite C4_VM8 1 0) 500)
                       (* (ite C5_VM8 1 0) 500)))))
  (<= a!1 StorageProv8)))
(minimize (+ 0.0
   PriceProv1
   PriceProv2
   PriceProv3
   PriceProv4
   PriceProv5
   PriceProv6
   PriceProv7
   PriceProv8))
(check-sat)
(declare-fun VM1Type () Real)
(declare-fun VM2Type () Real)
(declare-fun VM3Type () Real)
(declare-fun VM4Type () Real)
(declare-fun VM5Type () Real)
(declare-fun VM6Type () Real)
(declare-fun VM7Type () Real)
(declare-fun VM8Type () Real)
(declare-fun PriceProv1 () Real)
(declare-fun C5_VM1 () Bool)
(declare-fun C4_VM1 () Bool)
(declare-fun C3_VM1 () Bool)
(declare-fun C2_VM1 () Bool)
(declare-fun C1_VM1 () Bool)
(declare-fun PriceProv2 () Real)
(declare-fun C5_VM2 () Bool)
(declare-fun C4_VM2 () Bool)
(declare-fun C3_VM2 () Bool)
(declare-fun C2_VM2 () Bool)
(declare-fun C1_VM2 () Bool)
(declare-fun PriceProv3 () Real)
(declare-fun C5_VM3 () Bool)
(declare-fun C4_VM3 () Bool)
(declare-fun C3_VM3 () Bool)
(declare-fun C2_VM3 () Bool)
(declare-fun C1_VM3 () Bool)
(declare-fun PriceProv4 () Real)
(declare-fun C5_VM4 () Bool)
(declare-fun C4_VM4 () Bool)
(declare-fun C3_VM4 () Bool)
(declare-fun C2_VM4 () Bool)
(declare-fun C1_VM4 () Bool)
(declare-fun PriceProv5 () Real)
(declare-fun C5_VM5 () Bool)
(declare-fun C4_VM5 () Bool)
(declare-fun C3_VM5 () Bool)
(declare-fun C2_VM5 () Bool)
(declare-fun C1_VM5 () Bool)
(declare-fun PriceProv6 () Real)
(declare-fun C5_VM6 () Bool)
(declare-fun C4_VM6 () Bool)
(declare-fun C3_VM6 () Bool)
(declare-fun C2_VM6 () Bool)
(declare-fun C1_VM6 () Bool)
(declare-fun PriceProv7 () Real)
(declare-fun C5_VM7 () Bool)
(declare-fun C4_VM7 () Bool)
(declare-fun C3_VM7 () Bool)
(declare-fun C2_VM7 () Bool)
(declare-fun C1_VM7 () Bool)
(declare-fun PriceProv8 () Real)
(declare-fun C5_VM8 () Bool)
(declare-fun C4_VM8 () Bool)
(declare-fun C3_VM8 () Bool)
(declare-fun C2_VM8 () Bool)
(declare-fun C1_VM8 () Bool)
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
(declare-fun StorageProv7 () Real)
(declare-fun MemProv7 () Real)
(declare-fun ProcProv7 () Real)
(declare-fun StorageProv8 () Real)
(declare-fun MemProv8 () Real)
(declare-fun ProcProv8 () Real)
(assert (or (= VM1Type 1.0) (= VM1Type 2.0) (= VM1Type 3.0) (= VM1Type 4.0)))
(assert (or (= VM2Type 1.0) (= VM2Type 2.0) (= VM2Type 3.0) (= VM2Type 4.0)))
(assert (or (= VM3Type 1.0) (= VM3Type 2.0) (= VM3Type 3.0) (= VM3Type 4.0)))
(assert (or (= VM4Type 1.0) (= VM4Type 2.0) (= VM4Type 3.0) (= VM4Type 4.0)))
(assert (or (= VM5Type 1.0) (= VM5Type 2.0) (= VM5Type 3.0) (= VM5Type 4.0)))
(assert (or (= VM6Type 1.0) (= VM6Type 2.0) (= VM6Type 3.0) (= VM6Type 4.0)))
(assert (or (= VM7Type 1.0) (= VM7Type 2.0) (= VM7Type 3.0) (= VM7Type 4.0)))
(assert (or (= VM8Type 1.0) (= VM8Type 2.0) (= VM8Type 3.0) (= VM8Type 4.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1)
    (= PriceProv1 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2)
    (= PriceProv2 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3)
    (= PriceProv3 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4)
    (= PriceProv4 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5)
    (= PriceProv5 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6)
    (= PriceProv6 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7)
    (= PriceProv7 0.0)))
(assert (=> ((_ pbeq 0 1 1 1 1 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8)
    (= PriceProv8 0.0)))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 1.0))
    (and (= PriceProv1 8403.0)
         (= ProcProv1 64.0)
         (= MemProv1 976000.0)
         (= StorageProv1 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 1.0))
    (and (= PriceProv2 8403.0)
         (= ProcProv2 64.0)
         (= MemProv2 976000.0)
         (= StorageProv2 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 1.0))
    (and (= PriceProv3 8403.0)
         (= ProcProv3 64.0)
         (= MemProv3 976000.0)
         (= StorageProv3 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 1.0))
    (and (= PriceProv4 8403.0)
         (= ProcProv4 64.0)
         (= MemProv4 976000.0)
         (= StorageProv4 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 1.0))
    (and (= PriceProv5 8403.0)
         (= ProcProv5 64.0)
         (= MemProv5 976000.0)
         (= StorageProv5 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 1.0))
    (and (= PriceProv6 8403.0)
         (= ProcProv6 64.0)
         (= MemProv6 976000.0)
         (= StorageProv6 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 1.0))
    (and (= PriceProv7 8403.0)
         (= ProcProv7 64.0)
         (= MemProv7 976000.0)
         (= StorageProv7 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 1.0))
    (and (= PriceProv8 8403.0)
         (= ProcProv8 64.0)
         (= MemProv8 976000.0)
         (= StorageProv8 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 2.0))
    (and (= PriceProv1 9152.0)
         (= ProcProv1 64.0)
         (= MemProv1 488000.0)
         (= StorageProv1 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 2.0))
    (and (= PriceProv2 9152.0)
         (= ProcProv2 64.0)
         (= MemProv2 488000.0)
         (= StorageProv2 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 2.0))
    (and (= PriceProv3 9152.0)
         (= ProcProv3 64.0)
         (= MemProv3 488000.0)
         (= StorageProv3 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 2.0))
    (and (= PriceProv4 9152.0)
         (= ProcProv4 64.0)
         (= MemProv4 488000.0)
         (= StorageProv4 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 2.0))
    (and (= PriceProv5 9152.0)
         (= ProcProv5 64.0)
         (= MemProv5 488000.0)
         (= StorageProv5 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 2.0))
    (and (= PriceProv6 9152.0)
         (= ProcProv6 64.0)
         (= MemProv6 488000.0)
         (= StorageProv6 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 2.0))
    (and (= PriceProv7 9152.0)
         (= ProcProv7 64.0)
         (= MemProv7 488000.0)
         (= StorageProv7 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 2.0))
    (and (= PriceProv8 9152.0)
         (= ProcProv8 64.0)
         (= MemProv8 488000.0)
         (= StorageProv8 8000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 3.0))
    (and (= PriceProv1 2808.0)
         (= ProcProv1 32.0)
         (= MemProv1 60000.0)
         (= StorageProv1 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 3.0))
    (and (= PriceProv2 2808.0)
         (= ProcProv2 32.0)
         (= MemProv2 60000.0)
         (= StorageProv2 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 3.0))
    (and (= PriceProv3 2808.0)
         (= ProcProv3 32.0)
         (= MemProv3 60000.0)
         (= StorageProv3 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 3.0))
    (and (= PriceProv4 2808.0)
         (= ProcProv4 32.0)
         (= MemProv4 60000.0)
         (= StorageProv4 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 3.0))
    (and (= PriceProv5 2808.0)
         (= ProcProv5 32.0)
         (= MemProv5 60000.0)
         (= StorageProv5 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 3.0))
    (and (= PriceProv6 2808.0)
         (= ProcProv6 32.0)
         (= MemProv6 60000.0)
         (= StorageProv6 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 3.0))
    (and (= PriceProv7 2808.0)
         (= ProcProv7 32.0)
         (= MemProv7 60000.0)
         (= StorageProv7 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 3.0))
    (and (= PriceProv8 2808.0)
         (= ProcProv8 32.0)
         (= MemProv8 60000.0)
         (= StorageProv8 2000.0))))
(assert (=> (and ((_ at-least 1) C1_VM1 C2_VM1 C3_VM1 C4_VM1 C5_VM1) (= VM1Type 4.0))
    (and (= PriceProv1 1600.0)
         (= ProcProv1 16.0)
         (= MemProv1 122000.0)
         (= StorageProv1 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM2 C2_VM2 C3_VM2 C4_VM2 C5_VM2) (= VM2Type 4.0))
    (and (= PriceProv2 1600.0)
         (= ProcProv2 16.0)
         (= MemProv2 122000.0)
         (= StorageProv2 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM3 C2_VM3 C3_VM3 C4_VM3 C5_VM3) (= VM3Type 4.0))
    (and (= PriceProv3 1600.0)
         (= ProcProv3 16.0)
         (= MemProv3 122000.0)
         (= StorageProv3 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM4 C2_VM4 C3_VM4 C4_VM4 C5_VM4) (= VM4Type 4.0))
    (and (= PriceProv4 1600.0)
         (= ProcProv4 16.0)
         (= MemProv4 122000.0)
         (= StorageProv4 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM5 C2_VM5 C3_VM5 C4_VM5 C5_VM5) (= VM5Type 4.0))
    (and (= PriceProv5 1600.0)
         (= ProcProv5 16.0)
         (= MemProv5 122000.0)
         (= StorageProv5 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM6 C2_VM6 C3_VM6 C4_VM6 C5_VM6) (= VM6Type 4.0))
    (and (= PriceProv6 1600.0)
         (= ProcProv6 16.0)
         (= MemProv6 122000.0)
         (= StorageProv6 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM7 C2_VM7 C3_VM7 C4_VM7 C5_VM7) (= VM7Type 4.0))
    (and (= PriceProv7 1600.0)
         (= ProcProv7 16.0)
         (= MemProv7 122000.0)
         (= StorageProv7 1000.0))))
(assert (=> (and ((_ at-least 1) C1_VM8 C2_VM8 C3_VM8 C4_VM8 C5_VM8) (= VM8Type 4.0))
    (and (= PriceProv8 1600.0)
         (= ProcProv8 16.0)
         (= MemProv8 122000.0)
         (= StorageProv8 1000.0))))
(assert ((_ at-least 3) C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6 C1_VM7 C1_VM8))
(assert ((_ at-least 2) C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5 C2_VM6 C2_VM7 C2_VM8))
(assert ((_ at-least 2) C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6 C5_VM7 C5_VM8))
(assert ((_ pble 0 7 7 7 7 7 7 7 7 -1 -1 -1 -1 -1 -1 -1 -1)
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8))
(assert ((_ at-most 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8))
(assert ((_ pble 0 3 3 3 3 3 3 3 3 -1 -1 -1 -1 -1 -1 -1 -1)
  C4_VM1
  C4_VM2
  C4_VM3
  C4_VM4
  C4_VM5
  C4_VM6
  C4_VM7
  C4_VM8
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8))
(assert ((_ pble 0 2 2 2 2 2 2 2 2 -3 -3 -3 -3 -3 -3 -3 -3)
  C1_VM1
  C1_VM2
  C1_VM3
  C1_VM4
  C1_VM5
  C1_VM6
  C1_VM7
  C1_VM8
  C2_VM1
  C2_VM2
  C2_VM3
  C2_VM4
  C2_VM5
  C2_VM6
  C2_VM7
  C2_VM8))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C4_VM1
      C4_VM2
      C4_VM3
      C4_VM4
      C4_VM5
      C4_VM6
      C4_VM7
      C4_VM8)
    ((_ at-least 1) C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5 C4_VM6 C4_VM7 C4_VM8)))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C3_VM1
      C3_VM2
      C3_VM3
      C3_VM4
      C3_VM5
      C3_VM6
      C3_VM7
      C3_VM8)
    ((_ at-least 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8)))
(assert ((_ at-least 1)
  C4_VM1
  C4_VM2
  C4_VM3
  C4_VM4
  C4_VM5
  C4_VM6
  C4_VM7
  C4_VM8
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C5_VM1
      C5_VM2
      C5_VM3
      C5_VM4
      C5_VM5
      C5_VM6
      C5_VM7
      C5_VM8)
    ((_ at-least 1) C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 C5_VM6 C5_VM7 C5_VM8)))
(assert (or ((_ pbeq 0 1 1 1 1 1 1 1 1)
      C3_VM1
      C3_VM2
      C3_VM3
      C3_VM4
      C3_VM5
      C3_VM6
      C3_VM7
      C3_VM8)
    ((_ at-least 1) C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C3_VM6 C3_VM7 C3_VM8)))
(assert ((_ at-least 1)
  C5_VM1
  C5_VM2
  C5_VM3
  C5_VM4
  C5_VM5
  C5_VM6
  C5_VM7
  C5_VM8
  C3_VM1
  C3_VM2
  C3_VM3
  C3_VM4
  C3_VM5
  C3_VM6
  C3_VM7
  C3_VM8))
(assert ((_ at-most 1) C3_VM1 C1_VM1))
(assert ((_ at-most 1) C3_VM1 C2_VM1))
(assert ((_ at-most 1) C3_VM1 C5_VM1))
(assert ((_ at-most 1) C3_VM2 C1_VM2))
(assert ((_ at-most 1) C3_VM2 C2_VM2))
(assert ((_ at-most 1) C3_VM2 C5_VM2))
(assert ((_ at-most 1) C3_VM3 C1_VM3))
(assert ((_ at-most 1) C3_VM3 C2_VM3))
(assert ((_ at-most 1) C3_VM3 C5_VM3))
(assert ((_ at-most 1) C3_VM4 C1_VM4))
(assert ((_ at-most 1) C3_VM4 C2_VM4))
(assert ((_ at-most 1) C3_VM4 C5_VM4))
(assert ((_ at-most 1) C3_VM5 C1_VM5))
(assert ((_ at-most 1) C3_VM5 C2_VM5))
(assert ((_ at-most 1) C3_VM5 C5_VM5))
(assert ((_ at-most 1) C3_VM6 C1_VM6))
(assert ((_ at-most 1) C3_VM6 C2_VM6))
(assert ((_ at-most 1) C3_VM6 C5_VM6))
(assert ((_ at-most 1) C3_VM7 C1_VM7))
(assert ((_ at-most 1) C3_VM7 C2_VM7))
(assert ((_ at-most 1) C3_VM7 C5_VM7))
(assert ((_ at-most 1) C3_VM8 C1_VM8))
(assert ((_ at-most 1) C3_VM8 C2_VM8))
(assert ((_ at-most 1) C3_VM8 C5_VM8))
(assert ((_ at-most 1) C4_VM1 C1_VM1))
(assert ((_ at-most 1) C4_VM1 C2_VM1))
(assert ((_ at-most 1) C4_VM1 C5_VM1))
(assert ((_ at-most 1) C4_VM2 C1_VM2))
(assert ((_ at-most 1) C4_VM2 C2_VM2))
(assert ((_ at-most 1) C4_VM2 C5_VM2))
(assert ((_ at-most 1) C4_VM3 C1_VM3))
(assert ((_ at-most 1) C4_VM3 C2_VM3))
(assert ((_ at-most 1) C4_VM3 C5_VM3))
(assert ((_ at-most 1) C4_VM4 C1_VM4))
(assert ((_ at-most 1) C4_VM4 C2_VM4))
(assert ((_ at-most 1) C4_VM4 C5_VM4))
(assert ((_ at-most 1) C4_VM5 C1_VM5))
(assert ((_ at-most 1) C4_VM5 C2_VM5))
(assert ((_ at-most 1) C4_VM5 C5_VM5))
(assert ((_ at-most 1) C4_VM6 C1_VM6))
(assert ((_ at-most 1) C4_VM6 C2_VM6))
(assert ((_ at-most 1) C4_VM6 C5_VM6))
(assert ((_ at-most 1) C4_VM7 C1_VM7))
(assert ((_ at-most 1) C4_VM7 C2_VM7))
(assert ((_ at-most 1) C4_VM7 C5_VM7))
(assert ((_ at-most 1) C4_VM8 C1_VM8))
(assert ((_ at-most 1) C4_VM8 C2_VM8))
(assert ((_ at-most 1) C4_VM8 C5_VM8))
(assert ((_ at-most 1) C5_VM1 C2_VM1))
(assert ((_ at-most 1) C5_VM1 C3_VM1))
(assert ((_ at-most 1) C5_VM1 C4_VM1))
(assert ((_ at-most 1) C5_VM2 C2_VM2))
(assert ((_ at-most 1) C5_VM2 C3_VM2))
(assert ((_ at-most 1) C5_VM2 C4_VM2))
(assert ((_ at-most 1) C5_VM3 C2_VM3))
(assert ((_ at-most 1) C5_VM3 C3_VM3))
(assert ((_ at-most 1) C5_VM3 C4_VM3))
(assert ((_ at-most 1) C5_VM4 C2_VM4))
(assert ((_ at-most 1) C5_VM4 C3_VM4))
(assert ((_ at-most 1) C5_VM4 C4_VM4))
(assert ((_ at-most 1) C5_VM5 C2_VM5))
(assert ((_ at-most 1) C5_VM5 C3_VM5))
(assert ((_ at-most 1) C5_VM5 C4_VM5))
(assert ((_ at-most 1) C5_VM6 C2_VM6))
(assert ((_ at-most 1) C5_VM6 C3_VM6))
(assert ((_ at-most 1) C5_VM6 C4_VM6))
(assert ((_ at-most 1) C5_VM7 C2_VM7))
(assert ((_ at-most 1) C5_VM7 C3_VM7))
(assert ((_ at-most 1) C5_VM7 C4_VM7))
(assert ((_ at-most 1) C5_VM8 C2_VM8))
(assert ((_ at-most 1) C5_VM8 C3_VM8))
(assert ((_ at-most 1) C5_VM8 C4_VM8))
(assert ((_ at-least 1) C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C1_VM6 C1_VM7 C1_VM8))
(assert ((_ at-least 1) C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5 C2_VM6 C2_VM7 C2_VM8))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 2)
                       (* (ite C2_VM1 1 0) 2)
                       (* (ite C3_VM1 1 0) 4)
                       (* (ite C4_VM1 1 0) 4)
                       (* (ite C5_VM1 1 0) 4)))))
  (<= a!1 ProcProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 2)
                       (* (ite C2_VM2 1 0) 2)
                       (* (ite C3_VM2 1 0) 4)
                       (* (ite C4_VM2 1 0) 4)
                       (* (ite C5_VM2 1 0) 4)))))
  (<= a!1 ProcProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 2)
                       (* (ite C2_VM3 1 0) 2)
                       (* (ite C3_VM3 1 0) 4)
                       (* (ite C4_VM3 1 0) 4)
                       (* (ite C5_VM3 1 0) 4)))))
  (<= a!1 ProcProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 2)
                       (* (ite C2_VM4 1 0) 2)
                       (* (ite C3_VM4 1 0) 4)
                       (* (ite C4_VM4 1 0) 4)
                       (* (ite C5_VM4 1 0) 4)))))
  (<= a!1 ProcProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 2)
                       (* (ite C2_VM5 1 0) 2)
                       (* (ite C3_VM5 1 0) 4)
                       (* (ite C4_VM5 1 0) 4)
                       (* (ite C5_VM5 1 0) 4)))))
  (<= a!1 ProcProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 2)
                       (* (ite C2_VM6 1 0) 2)
                       (* (ite C3_VM6 1 0) 4)
                       (* (ite C4_VM6 1 0) 4)
                       (* (ite C5_VM6 1 0) 4)))))
  (<= a!1 ProcProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 2)
                       (* (ite C2_VM7 1 0) 2)
                       (* (ite C3_VM7 1 0) 4)
                       (* (ite C4_VM7 1 0) 4)
                       (* (ite C5_VM7 1 0) 4)))))
  (<= a!1 ProcProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 2)
                       (* (ite C2_VM8 1 0) 2)
                       (* (ite C3_VM8 1 0) 4)
                       (* (ite C4_VM8 1 0) 4)
                       (* (ite C5_VM8 1 0) 4)))))
  (<= a!1 ProcProv8)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 512)
                       (* (ite C2_VM1 1 0) 512)
                       (* (ite C3_VM1 1 0) 2048)
                       (* (ite C4_VM1 1 0) 2048)
                       (* (ite C5_VM1 1 0) 4000)))))
  (<= a!1 MemProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 512)
                       (* (ite C2_VM2 1 0) 512)
                       (* (ite C3_VM2 1 0) 2048)
                       (* (ite C4_VM2 1 0) 2048)
                       (* (ite C5_VM2 1 0) 4000)))))
  (<= a!1 MemProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 512)
                       (* (ite C2_VM3 1 0) 512)
                       (* (ite C3_VM3 1 0) 2048)
                       (* (ite C4_VM3 1 0) 2048)
                       (* (ite C5_VM3 1 0) 4000)))))
  (<= a!1 MemProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 512)
                       (* (ite C2_VM4 1 0) 512)
                       (* (ite C3_VM4 1 0) 2048)
                       (* (ite C4_VM4 1 0) 2048)
                       (* (ite C5_VM4 1 0) 4000)))))
  (<= a!1 MemProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 512)
                       (* (ite C2_VM5 1 0) 512)
                       (* (ite C3_VM5 1 0) 2048)
                       (* (ite C4_VM5 1 0) 2048)
                       (* (ite C5_VM5 1 0) 4000)))))
  (<= a!1 MemProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 512)
                       (* (ite C2_VM6 1 0) 512)
                       (* (ite C3_VM6 1 0) 2048)
                       (* (ite C4_VM6 1 0) 2048)
                       (* (ite C5_VM6 1 0) 4000)))))
  (<= a!1 MemProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 512)
                       (* (ite C2_VM7 1 0) 512)
                       (* (ite C3_VM7 1 0) 2048)
                       (* (ite C4_VM7 1 0) 2048)
                       (* (ite C5_VM7 1 0) 4000)))))
  (<= a!1 MemProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 512)
                       (* (ite C2_VM8 1 0) 512)
                       (* (ite C3_VM8 1 0) 2048)
                       (* (ite C4_VM8 1 0) 2048)
                       (* (ite C5_VM8 1 0) 4000)))))
  (<= a!1 MemProv8)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM1 1 0) 1000)
                       (* (ite C2_VM1 1 0) 2000)
                       (* (ite C3_VM1 1 0) 500)
                       (* (ite C4_VM1 1 0) 500)
                       (* (ite C5_VM1 1 0) 500)))))
  (<= a!1 StorageProv1)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM2 1 0) 1000)
                       (* (ite C2_VM2 1 0) 2000)
                       (* (ite C3_VM2 1 0) 500)
                       (* (ite C4_VM2 1 0) 500)
                       (* (ite C5_VM2 1 0) 500)))))
  (<= a!1 StorageProv2)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM3 1 0) 1000)
                       (* (ite C2_VM3 1 0) 2000)
                       (* (ite C3_VM3 1 0) 500)
                       (* (ite C4_VM3 1 0) 500)
                       (* (ite C5_VM3 1 0) 500)))))
  (<= a!1 StorageProv3)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM4 1 0) 1000)
                       (* (ite C2_VM4 1 0) 2000)
                       (* (ite C3_VM4 1 0) 500)
                       (* (ite C4_VM4 1 0) 500)
                       (* (ite C5_VM4 1 0) 500)))))
  (<= a!1 StorageProv4)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM5 1 0) 1000)
                       (* (ite C2_VM5 1 0) 2000)
                       (* (ite C3_VM5 1 0) 500)
                       (* (ite C4_VM5 1 0) 500)
                       (* (ite C5_VM5 1 0) 500)))))
  (<= a!1 StorageProv5)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM6 1 0) 1000)
                       (* (ite C2_VM6 1 0) 2000)
                       (* (ite C3_VM6 1 0) 500)
                       (* (ite C4_VM6 1 0) 500)
                       (* (ite C5_VM6 1 0) 500)))))
  (<= a!1 StorageProv6)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM7 1 0) 1000)
                       (* (ite C2_VM7 1 0) 2000)
                       (* (ite C3_VM7 1 0) 500)
                       (* (ite C4_VM7 1 0) 500)
                       (* (ite C5_VM7 1 0) 500)))))
  (<= a!1 StorageProv7)))
(assert (let ((a!1 (to_real (+ 0
                       (* (ite C1_VM8 1 0) 1000)
                       (* (ite C2_VM8 1 0) 2000)
                       (* (ite C3_VM8 1 0) 500)
                       (* (ite C4_VM8 1 0) 500)
                       (* (ite C5_VM8 1 0) 500)))))
  (<= a!1 StorageProv8)))
(minimize (+ 0.0
   PriceProv1
   PriceProv2
   PriceProv3
   PriceProv4
   PriceProv5
   PriceProv6
   PriceProv7
   PriceProv8))
(check-sat)
