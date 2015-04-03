reset

open model.use

!create grid : Grid
!set grid.RNB = 3
!set grid.RCAP = 10
!set grid.DNB = 2
!set grid.DCAP = 7
-- !set grid.NELEMNTS = 10

!create w : Warehouse
!set w.x := 0 
!set w.y := 1

!create r1 : Receptacle
!set r1.x := 1
!set r1.y := 0

!create r2 : Receptacle
!set r2.x := 2
!set r2.y := 1
!create r3 : Receptacle
!set r3.x := 1
!set r3.y := 2


!create d1 : Drone
!create d2 : Drone

!create c1 : Command
!create c2 : Command
!create c3 : Command


!create pt1 : Point 
!create pt2 : Point 
!create pt3 : Point 
!create pt4 : Point 
!create pt5 : Point 
!create pt6 : Point 
!create pt7 : Point 
!create pt8 : Point 
!create pt9 : Point 


!set pt1.x := 0
!set pt1.y := 0
!set pt2.x := 0
!set pt2.y := 1
!set pt3.x := 0
!set pt3.y := 2

!set pt4.x := 1
!set pt4.y := 0
!set pt5.x := 1
!set pt5.y := 1
!set pt6.x := 1
!set pt6.y := 2

!set pt7.x := 2
!set pt7.y := 0
!set pt8.x := 2
!set pt8.y := 1
!set pt9.x := 2
!set pt9.y := 2


!set c1.weight :=3
!set c2.weight :=4
!set c3.weight :=2


check