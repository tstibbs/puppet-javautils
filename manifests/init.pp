class javautils (
) {

	$inputHash = {
		"app.name" => "testapp",
		"home.directory" => "I am here",
		"other.property" => "stuff stuff stuff"
	}

	$file_path = "/home/app.properties"

	javautils::props {"update-app.properties":
		input => $inputHash,
		file_path => $file_path
	}

}
