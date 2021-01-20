declare -a exps=("1"
                "2"
                "3"
                "4"
                "5"
                "6"
                "all")

declare -a metrics=("const"
                "eval"
                "J"
                "N"
                "Ns100"
                "t")

# Criação das pastas para armazenamento dos arquivos .pdf
for exp in "${exps[@]}"; do
    rm -rf $exp/pdf
done

for metric in "${metrics[@]}"; do
    for exp in "${exps[@]}"; do
        epstopdf $exp/$metric.eps
        # mv $exp/$metric.pdf $exp/pdf/$metric.pdf
    done
done