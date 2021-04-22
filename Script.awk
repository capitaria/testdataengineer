$3 == "Rancagua" {++cnt1} END {print "1. Cantidad de registros de Rancagua = ", cnt1}

$3 == "Chillan" {++cnt2} END {print "2. Cantidad de registros de Chillan = ", cnt2}

$14 > 100 {++cnt3} END {print "3. Cantidad de gente mayor a 100 años = ", cnt3}

$14 > 100 {++cnt4[$3]} END {print "4. Distribucion:"; for (k in cnt4) {print k,"= ", cnt4[k]}}

BEGIN {edad = 0} $14 > edad && NR != 1 {edad = $14; comuna = $3} END {print "5. La persona mas longeva vive en", comuna, "con", edad, "años"}
