node /^puppet[.]\w+[.]\w+$/ {
 include r10k
 include eyaml
}
node /^node[.]\w+[.]\w+$/ {
 include buildtools
 include apache
 include hierasample
 Class["buildtools"] -> Class["apache"] ->Class["hierasample"]
}

node /^ubuntu[.]\w+[.]\w+$/ {
 include buildtools
 include apache
}

include hierasample::secrets
