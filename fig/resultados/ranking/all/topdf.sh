declare -a arr=("const"
                "eval"
                "J"
                "N"
                "Ns100"
                "t")

epstopdf const.eps
mv const.pdf pdf/const.pdf

for metric in "${arr[@]}"; do
    epstopdf $metric.eps
    mv $metric.pdf pdf/$metric.pdf
done