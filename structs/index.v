module structs

pub struct Node<T> {
	pub:
		val T
	pub mut:
		left  &Node<T> = 0
		right &Node<T> = 0
}

pub fn (t &Node<T>) exists<T>() bool {
	return !isnil(t)
}