PS1="\w\$ "

e() {
  cd "/root/examples/ch"*"$1/"*"$2"*
}
ap() {
  cd "/root/examples/ap"*"$1/"*"$2"*
}
gb() {
  cd /tmp/b
}
gen() {
  cmake -B /tmp/b .
}
gend() {
  cmake -B /tmp/b -DCMAKE_BUILD_TYPE=Debug .
}
build() {
  cmake --build /tmp/b
}
b() {
  gen
  build
}
bd() {
  gend
  build
}
bb() {
  b
  gb
}
