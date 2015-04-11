//Ensemble des variables globales du système
int e = 0;
int counter = 0;
int nbProc = 2;
bool D [nbProc];

//Fonction lancé par chaque drône pour savoir qui va passer à l'action
proctype P(bool d) {
	// Initialisation du booléen de ce processus
    D[_pid] = d;
	bool Y;
	assert (D[_pid] == d); 		// Vérifie que le booléen du processus a toujours la même valeur qu'à l'initial.
	e = _pid;
	d = true;
	Y = (e == _pid);
    //Insérer dans l'assertion suivante la condition d'attente dont parlait le prof la dernière fois
    //If avec un skip si on a pas ce qu'on veut, sinon on effectue l'action
    if :: e != _pid || D[_pid] != d -> skip;
       :: else -> assert ( Y == ( e == _pid ) );
    fi
}

//Fonction initiant le système
init { 
	//Pré-condition
	bool d = false;
    //Boucle lançant la recherche d'ordre de passage pour les nbProc drônes
    int i = 0;
    do :: i < nbProc ->
		run P(d);
		i++;
	od
}
