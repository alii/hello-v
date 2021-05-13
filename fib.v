fn fib(n i64, mut cache map[i64]i64) i64 {
	unsafe {
		cached := cache[n]

		if cached != 0x0 {
			return cached
		}
	}
	if n <= 1 {
		return n
	}

	result := fib(n - 1, mut cache) + fib(n - 2, mut cache)

	cache[n] = result

	return result
}

mut cache := map[i64]i64{}

for i in 1 .. 50 {
	val := fib(i, mut cache)
	println('$i $val')
}
