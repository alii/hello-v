module structs

pub struct Node<T> {
	pub:
		val T
	pub mut:
		left  &Node<T> = &Node(0)
		right &Node<T> = &Node(0)
}

pub fn (t &Node) exists() bool {
	return t != &Node(0)
}