reset

open drone_model.use

-- ***** Grid 3x3 (16 intersections)  *******
!create grid : Grid 
!set grid.RNB := 8
!set grid.RCAP := 10
!set grid.DNB := 8
!set grid.DCAP := 7
-- !set grid.NELEMNTS := 10

!create w : Warehouse
!set w.x := 1 
!set w.y := 2

!create r1 : Receptacle
!set r1.x := 0
!set r1.y := 1

!create r2 : Receptacle
!set r2.x := 2
!set r2.y := 3

!create r3 : Receptacle
!set r3.x := 3
!set r3.y := 1

!create r4 : Receptacle
!set r4.x := 1
!set r4.y := 1

!create r5 : Receptacle
!set r5.x := 2
!set r5.y := 0



!create d1 : Drone
!create d2 : Drone
!create d3 : Drone
!create d4 : Drone
!create d5 : Drone
--!create d6 : Drone

!create c1 : Command
!create c2 : Command
!create c3 : Command
!create c4 : Command
!create c5 : Command
--!create c6 : Command


!create pt1 : Point 
!create pt2 : Point 
!create pt3 : Point 
!create pt4 : Point 
!create pt5 : Point 
!create pt6 : Point 
!create pt7 : Point 
!create pt8 : Point 
!create pt9 : Point
!create pt10 : Point 
!create pt11 : Point 
!create pt12 : Point 
!create pt13 : Point 
!create pt14 : Point 
!create pt15 : Point 
!create pt16 : Point 


!set pt1.x := 0
!set pt1.y := 0
!set pt2.x := 0
!set pt2.y := 1
!set pt3.x := 0
!set pt3.y := 2
!set pt4.x := 0
!set pt4.y := 3

!set pt5.x := 1
!set pt5.y := 0
!set pt6.x := 1
!set pt6.y := 1
!set pt7.x := 1
!set pt7.y := 2
!set pt8.x := 1
!set pt8.y := 3

!set pt9.x := 2
!set pt9.y := 0
!set pt10.x := 2
!set pt10.y := 1
!set pt11.x := 2
!set pt11.y := 2
!set pt12.x := 2
!set pt12.y := 3


!set pt13.x := 3
!set pt13.y := 0
!set pt14.x := 3
!set pt14.y := 1
!set pt15.x := 3
!set pt15.y := 2
!set pt16.x := 3
!set pt16.y := 3


!set c1.weight :=3
!set c2.weight :=4
!set c3.weight :=2
!set c4.weight :=5
!set c5.weight :=4
--!set c6.weight :=6

!insert(w, grid) into Owner

!insert(r1, grid) into Location
!insert(r2, grid) into Location
!insert(r3, grid) into Location
!insert(r4, grid) into Location
!insert(r5, grid) into Location

!insert (w, d1) into Crew
!insert (w, d2) into Crew
!insert (w, d3) into Crew
!insert (w, d4) into Crew
!insert (w, d5) into Crew
--!insert (w, d6) into Crew


!insert (w, d1) into Position
!insert (w, d2) into Position
!insert (w, d3) into Position
!insert (w, d4) into Position
!insert (w, d5) into Position
--!insert (w, d6) into Position



-- allocate commande
!d1.allocate(r1, c1);
!d2.allocate(r2, c2);
!d3.allocate(r3, c3);
!d4.allocate(r4, c4);
!d5.allocate(r5, c5);

check 
!grid.tick();
check

!grid.tick();
check