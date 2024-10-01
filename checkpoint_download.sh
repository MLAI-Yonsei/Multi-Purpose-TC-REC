mkdir model
for file_id in "1O8XjiTnwHZcsrt4TrflbBUn7J7GHMTyy" "13i70jhqyMpzXO3zlnSJ_NaD1tWPQEkWz"
do
    file_name="model/download_${file_id}.zip"
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${file_id}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${file_id}" -o ${file_name}
done

for file_id in "1O8XjiTnwHZcsrt4TrflbBUn7J7GHMTyy" "13i70jhqyMpzXO3zlnSJ_NaD1tWPQEkWz"
do