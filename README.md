# decomposition-de-debye

-collect lit chaque fichier et met chaque valeurs dans un ensemble de cellule (Val)
-donnee trouve tout les fichier .res dans le dossier et utilise collect pour mettre les valeurs dans l'ensemble de cellule Val
-DebyeDecomposition aditionne la partie réel et imaginaire de l'impédance (Z), normalise (celon la méthode de l'article) cette impédance et fait la décomposition de debye. Les valeurs de tau(t) sont aussi généré par la fonction

-DebyeMk trace des graphiques pour chaque fichier .res. Il faut que les fonction collect, donnee, et DebyeDecomposition soit dans le même dossier que DebyeMk. Il faut aussi que les fichier .res des données soit dans le même dossier.

