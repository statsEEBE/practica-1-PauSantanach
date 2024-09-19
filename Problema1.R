#Codigo para problema 1

mis_dades <- mtcars
mis_dades$qsec #si posem el dolar($) extraiem només el què ens interessa del conjunt de dades
sort(mis_dades$qsec) #amb el sort les ordenem de menor a major
cut(mis_dades$qsec, breaks = 4) #amb el cut(... , breaks = x) partim el nostre conjunt de dades en intervals i veiem cada cotxe en quin interval cau, en aquest cas sense estar ordentas, només ens diu en quin interval cau cada cotxe
qsec_intervals <- cut(mis_dades$qsec, breaks = 4) #hem creat una nova variable que seria el què hem fet a dalt
table(qsec_intervals) #amb el table podem veure quants cops es repeteix cada interval, és a dir, quants cotxes hi han a cada interval.
hist(mis_dades$qsec, breaks = 4) #amb el hist creem un histograma amb les nostres dades (un gràfic de barres), el nombre que posem a breaks serà el nombre d'intervals amb que es partirà el nostre conjunt de dades
hist(mis_dades$qsec, breaks = 6)
#tot això ens pot servir per construir la taula de ferqüències:
ni <- table(qsec_intervals)
sum(ni)
fi <- ni/sum(ni)
fi
pie(fi)

#també podem definir les ferqüències acumulades:
Ni <- cumsum(ni)
Fi <- cumsum(fi)
Ni
Fi

cbind(ni,Ni,fi,Fi) #amb això ja realitzem la taula de freqüències al complet.

mean(mis_dades$qsec)  #amb això obtenim 17.84875 que és la mitjana de les nostres dades. Per tant ja hem respost la pregunta 1

#ara anem a per la pregunta 2 que ens demanen la mediana de "drat", recordem que la mediana és, un cop ordenades les dades de menor a major, aquella dada que té el mateix nombre de dades a l'esquerra i a la dreta és la mediana (la que està al mig), si tenim 2 nombres pues serà la mitjana desl 2
sort(mis_dades$drat) #ara ja tenim les dades ordenades que ens interessen, ens podrie posar a contar i tal però ho podem fer més fàcil fent:
median(mis_dades$drat) #resultat = 3.695 i això és la mediana 

#anem a la pregunta 3
quantile(mis_dades$drat,0.25) #amb això obtenim el resultat del primer quartil, si posessim 0.50 obtindriem el del segon quartil (que és la mediana), 0.75 obtindriem el 3r quartil.

#pregunta 4
quantile(mis_dades$mpg, 0.18) #veiem que també amb el quantile podem tallar allà on volguem.ç

#anem a per la pregunta 5, ens demanen el rang interquartílic, que bàsicament és fer el 3r quartil - 1r quartil (en aquest rang hi haurà el 50% dels resultats)
quantile(mis_dades$cyl,0.25)
quantile(mis_dades$cyl,0.75)
quantile(mis_dades$cyl,0.75) - quantile(mis_dades$cyl,0.25) #veiem que ens dona 4 però també ho podem fer com:
IQR(mis_dades$cyl) #IQR = InterQuanTile i veiem que ens dona exactament el mateix.
boxplot(mis_dades$cyl)

#pregunta 6, ara ens demanen la desviació típica corregida (s)
sd(mis_dades$cyl) #simplement és aquest comando

#ara ens demanen la variança
var(mis_dades$qsec)

