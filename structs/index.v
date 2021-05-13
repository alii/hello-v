module structs

pub struct Node<T> {
pub:
	val T
pub mut:
	left  &Node<T> = 0x0
	right &Node<T> = 0x0
}

pub fn (t &Node<T>) exists() bool {
	return !isnil(t)
}
