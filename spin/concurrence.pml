int e = 0;
int nbProc = 4;
bool D [nbProc];

proctype P(bool d) {
        D[_pid - 1] = d;
	bool Y;
	assert (D[_pid - 1] == d);
	e = _pid;
	d = true;

	bool test = true;
    	if :: e != _pid -> skip;
       	   :: else -> do :: test ->
				int counter = 1;
				do :: counter < nbProc ->
					if :: D[counter] == false; -> 
						counter = counter + nbProc;
						break;
					   :: else -> counter++;
					fi
				od
				if :: counter <= nbProc -> test = false;
				fi 
       		      od
    	fi
    	Y = (e == _pid);
    	assert ( Y == ( e == _pid ) );
}

init { 
	bool d = false;
	int i = 0;
	do :: i < nbProc ->
		run P(d);
        	i++;
	od
}
