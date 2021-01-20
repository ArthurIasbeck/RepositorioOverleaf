#!/bin/bash

declare -a arr=("integrador"
                "singular1"
                "singular2"
                "penduloInvertido"
                "estacionamento"
                "uav"
                "fermentacao"
                "foguete")

rm -rf ../resultados

mkdir ../resultados
mkdir ../resultados/obs
mkdir ../resultados/obs/J=u2
mkdir ../resultados/obs/bigN

for problem in "${arr[@]}"; do
    rm -rf ../resultados/$problem/raw
    rm -rf ../resultados/$problem/sens
    rm -rf ../resultados/$problem/traj
done

for problem in "${arr[@]}"; do
    mkdir ../resultados/$problem
    mkdir ../resultados/$problem/obs
    mkdir ../resultados/$problem/raw
    mkdir ../resultados/$problem/sens
    mkdir ../resultados/$problem/traj
    mkdir ../resultados/$problem/traj/x
    mkdir ../resultados/$problem/traj/u
done
