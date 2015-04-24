//Ensemble des variables globales du système
int e = 0;
int nbProc = 2;
bool D [nbProc];

//Fonction lancée par chaque drône pour savoir qui va passer à l'action
proctype P(bool d) {
	// Initialisation du booléen de ce processus
        D[_pid - 1] = d;
	bool Y;
	assert (D[_pid - 1] == d); 		// Vérifie que le booléen du processus a toujours la même valeur qu'à l'initial.
	e = _pid;
	d = true;

	bool test = true;
	//If avec un skip si on a pas ce qu'on veut, sinon on effectue l'action
    	if :: e != _pid -> skip;
       	   :: else -> do :: test ->			//Boucle qui vérifie que tous les booléens du tableau D sont à vrai
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

/*
							Algo mathématique
{init : d.i = False}
{D.i equivalent d.i;}
e:=i;
d.i = True;
//Vérifier que tous les processus ont modifié e avec la boucle suivante :
<∀j: j≠i : d.j> remplacé par <∀j: j≠i : d.j ∨ (i≠e)>
y.i := (e==i);
{y.i equivalent (e==i)}{?C.i}		où C.i = <∀ j:j≠i: d.j OU (e!=i) >
*/
