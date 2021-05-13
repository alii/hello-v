import net.http

fn fetch(url string) ?string {
	resp := http.get(url) ?
	return resp.text
}

println('started')

result := go fetch('https://alistair.cloud/api/ping')

println(result.wait() or { 'Unable to fetch' })
