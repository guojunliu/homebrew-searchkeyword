tar zcvf searchkeyword_1.0.1.tar.gz searchkeyword

shasum -a 256 searchkeyword_1.0.1.tar.gz | awk '{print $1}' > searchkeyword_1.0.1.txt