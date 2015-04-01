int nbProc = 2;
int e = 0;
bool D [nbProc];

bool verifyD (int id) {
	bool check = true;
	for (int i = 0 ; i < nbProc ; i++) {
		if (i != id) {
			check = (D[i] == false);
		} else {
			check = (D[i] == true);
		}
	}
	return check;
}

active [nbProc] proctype P(bool d) {
	D[_pid] = d;
	bool Y;
	assert ( D == d);
	e = _pid;
	d = true;
	Y = (e == _pid);
	assert ( Y == (e == _pid) && ( e != _pid || verifyD(_pid) );
}

init { 
	bool d = false;
	run P(d);
 }
