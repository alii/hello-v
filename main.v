import structs { Node }

fn invert_tree<T>(node &Node) Node<T> {
	mut cloned := Node{
		left: node.left
		right: node.right
		val: node.val
	}

	if node.left != 0 {
		cloned.right = node.left
	}

	if node.right != 0 {
		cloned.left = node.right
	}

	return cloned
}

fn main() {
	inverted := invert_tree<i16>(Node<i16>{
		val: 20
		left: &Node<i16>{
			val: 10
		}
		right: &Node<i16>{
			val: 30
		}
	})

	println(inverted)
}
