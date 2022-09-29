# tp-exam-git
TP GIT

## Requirements

Pour tester notre TP; il faudrait avoir à sa disposition les outils suivants:

* Linux (Testé sur la distro Kali Linux)
	> $ lsb_release -a
	
	> $ cat /etc/os-release

* Python en version 3 ou plus
	> $ python --version

* Ps qui par défaut est présent sur les os Linux
	> $ ps --version

* Bash 
	> $ bash --version

* Git qui aussi est présent par défaut
	> $ git --version



NB: les textes précedents le > specifient la commande à utiliser pour retourner la version installée




## Usage du script

Pour lancer les scripts; il suffira de suvire les étapes suivantes

1. Cloner le repository en utilisant ssh. Il faudrait au préalable avoir configuré du clonage SSH dans ses settings github
	> $ git clone git@github.com:my-esgi-projects/tp-exam-git.git

2. Se rendre dans le repertoire cloné
	> $ cd tp-exam-git

3. Lancer le script main.sh --h pour obtenir de l'aide
	> $ ./main.sh --h


NB: pour chaque test de scripts vous pouriez retrouver les logs d'exécution dans le repertoires **logs** situé à la racine de notre projet


##Worflow
Pour le projet, nous avons considéré l'ensemble des tâches comme le livrable final. Et les tâches spécifiques comme des features à livrer.
Ainsi; après avoir travaillé sur ces features nous nous sommes convenus de faire des validations de nos travaux.

C'est dans ce sciage que nous avons optés pour l'usage du workflow **feature branch + merge request**






