sudo docker run -itd \
    --name pycorrector \
    -v $PWD:/src \
    --rm \
    --workdir /src \
    github.com/mamachengcheng/corrector:v0.1
