node 'puppet' {
 include r10k
}
node 'node' {
 include buildtools
 include apache
}

node 'ubuntu' {
 include buildtools
 include apache
}
