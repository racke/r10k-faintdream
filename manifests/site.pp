node 'puppet' {
 include r10k
 include eyaml
}
node 'node' {
 include buildtools
 include apache
 include hierasample
}

node 'ubuntu' {
 include buildtools
 include apache
}
