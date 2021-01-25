function req(location) {
	return new Promise((resolve, reject) => {
		console.log('make a request to ${location}')
		if (location === 'Google') {
			resolve("Google active")
		} else {
			reject("rejected")
		}
	})
}


function procReq(response) {
	return new Promise((resolve,reject)) {
		console.log("processing response")
		resolve('info + ${response}')
	}
}