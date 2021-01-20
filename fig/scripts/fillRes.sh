#!/bin/bash

# Definição do vetor que contém os nomes de todos os problemas
declare -a arr=("integrador"
                "singular1"
                "singular2"
                "penduloInvertido"
                "estacionamento"
                "uav"
                "fermentacao"
                "foguete")

for problem in "${arr[@]}"; do
    # Preenchimento da pasta sens
    # eval
    cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/sensData/$problem/eval.eps \
    ../resultados/$problem/sens/eval.eps

    # J
    cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/sensData/$problem/J.eps \
    ../resultados/$problem/sens/J.eps
    
    # t
    cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/sensData/$problem/t.eps \
    ../resultados/$problem/sens/t.eps

    # Preenchimento da pasta traj
    # x 
    cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/traj/$problem/x/*.eps \
    ../resultados/$problem/traj/x

    # u 
    cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/traj/$problem/u/*.eps \
    ../resultados/$problem/traj/u

    # Preenchimento da pasta raw
    # J
    cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/rawData/$problem/J.eps \
    ../resultados/$problem/raw/J.eps

    # t
    cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/rawData/$problem/t.eps \
    ../resultados/$problem/raw/t.eps

    # N
    cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/rawData/$problem/N.eps \
    ../resultados/$problem/raw/N.eps

    # eval
    cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/rawData/$problem/eval.eps \
    ../resultados/$problem/raw/eval.eps
done

# Preenchimento da pasta ranking
# Copia da pasta processData/ranking
rm -rf ../resultados/ranking
cp -ar /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/ranking ../resultados


# Apagando arquivos que não sejam pdf
find ../resultados/ranking -name "*.png" -type f -delete
find ../resultados/ranking -name "*.fig" -type f -delete
find ../resultados/ranking -name "*.eps" -type f -delete

# Gráficos de trajetória avançados
# penduloInvertido
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/adv/results/pdf/penduloInvertido.pdf \
../resultados/penduloInvertido/obs/adv.pdf

# estacionamento
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/adv/results/pdf/estacionamento.pdf \
../resultados/estacionamento/obs/adv.pdf

# uav
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/adv/results/pdf/uav.pdf \
../resultados/uav/obs/adv.pdf

# foguete
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/adv/results/pdf/foguete.pdf \
../resultados/foguete/obs/adv.pdf

# Adição das imagens referentes às observações adicionais
# uav (distorção no phi)
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/buildTraj/buildTrajLegendre/plots/uav/outsider/figs/outsider.eps \
../resultados/uav/obs/outsider23.eps

cp /home/iasbeck/MEGAsync/Mestrado/2020-1/buildTraj/buildTrajLegendre/plots/uav/outsider2/figs/outsider.eps \
../resultados/uav/obs/outsider41.eps

# estacionamento (influência de u² no custo)
cp /home/iasbeck/psopt/PSOPT/iasbeck/estacionamento/results/solution/J=u2/u.eps \
../resultados/obs/J=u2/estacionamento.eps

cp /home/iasbeck/psopt/PSOPT/iasbeck/estacionamento/results/solution/J=u2/uintegral.eps \
../resultados/obs/J=u2/estacionamentoJ=u2.eps

# penduloInvertido (influência de N em J devido à quadratura numérica)
mkdir ../resultados/penduloInvertido/obs/trap
mkdir ../resultados/penduloInvertido/obs/hersim

# Quadratura Hermite-Simpson
cp /home/iasbeck/falcon/iasbeck/penduloInvertido/results/solution/analitica/hersim/N=7.eps \
../resultados/penduloInvertido/obs/hersim/N=7.eps

cp /home/iasbeck/falcon/iasbeck/penduloInvertido/results/solution/analitica/hersim/N=9.eps \
../resultados/penduloInvertido/obs/hersim/N=9.eps

cp /home/iasbeck/falcon/iasbeck/penduloInvertido/results/solution/analitica/hersim/N=11.eps \
../resultados/penduloInvertido/obs/hersim/N=11.eps

cp /home/iasbeck/falcon/iasbeck/penduloInvertido/results/solution/analitica/hersim/NvsJ.eps \
../resultados/penduloInvertido/obs/hersim/NvsJ.eps

# Quadratura trapezoidal
cp /home/iasbeck/falcon/iasbeck/penduloInvertido/results/solution/analitica/trap/N=7.eps \
../resultados/penduloInvertido/obs/trap/N=7.eps

cp /home/iasbeck/falcon/iasbeck/penduloInvertido/results/solution/analitica/trap/N=9.eps \
../resultados/penduloInvertido/obs/trap/N=9.eps

cp /home/iasbeck/falcon/iasbeck/penduloInvertido/results/solution/analitica/trap/N=11.eps \
../resultados/penduloInvertido/obs/trap/N=11.eps

cp /home/iasbeck/falcon/iasbeck/penduloInvertido/results/solution/analitica/trap/NvsJ.eps \
../resultados/penduloInvertido/obs/trap/NvsJ.eps

# singular2 (influência do u² no custo)
cp /home/iasbeck/simpopt/iasbeck/singular2/results/plotJu2/plotJu2.eps \
../resultados/obs/J=u2/singular2.eps

# singular1 (dados originais)
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/obs/singularOriginal/singular1/plotRes.eps \
../resultados/singular1/obs/original.eps

# singular2 (dados originais)
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/obs/singularOriginal/singular2/plotRes.eps \
../resultados/singular2/obs/original.eps

# estacionamento (dados originais)
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/obs/estacionamentoOriginal/uOriginal.eps \
../resultados/estacionamento/obs/original.eps

# estacionamento (aproximação pros limites da vaga)
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/obs/estacionamentoVaga/vagaApx.eps \
../resultados/estacionamento/obs/vaga.eps

# estacionamento (aproximação da função módulo)
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/obs/estacionamentoApx/apxMod.eps \
../resultados/estacionamento/obs/apxMod.eps

# estacionamento (aproximação do condicional)
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/obs/estacionamentoApx/apxBandPass.eps \
../resultados/estacionamento/obs/apxBandPass.eps

# uav (campo de vento)
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/adv/results/pdf/uavWind.pdf \
../resultados/uav/obs/wind.pdf

# foguete (aproximação da função degrau)
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/obs/fogueteDegrauSuave/apxDegrau.eps \
../resultados/foguete/obs/apxDegrau.eps

# Comparação entre FALCON e PSOPT_t (tp e naval)
cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/bigN/Nxn.eps \
../resultados/obs/bigN/Nxn.eps

cp /home/iasbeck/MEGAsync/Mestrado/2020-1/processData/bigN/Nxt.eps \
../resultados/obs/bigN/Nxt.eps