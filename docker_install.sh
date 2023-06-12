virtualenv --python=/usr/bin/python3.8 python
source python/bin/activate
pip install \
    --target=./python/lib/python3.8/site-packages \
    --platform manylinux2014_x86_64 \
    --no-cache-dir \
    --implementation cp \
    --python 3.8 \
    --only-binary=:all: --upgrade \
    -r requirements.txt

zip -r9 python.zip python