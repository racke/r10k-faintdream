node 'puppet' {
 include r10k
}
node 'node' {
# include buildtools
# include apache
 include hierasample
}

node 'ubuntu' {
 include buildtools
 include apache
}
