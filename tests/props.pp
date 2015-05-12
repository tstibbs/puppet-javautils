class props () {

	$inputHash = {
        "app.name" => "testapp",
		"thing.more" => "I am a",
        "blah.thing" => "stuff stuff stuff"
	}

	$file_path = "/home/centos/app1.properties"

	javautils::props {"test-1":
		input => $inputHash,
		file_path => $file_path
	}

	$file_path2 = "/home/centos/app2.properties"

	javautils::props {"test-2":
		input => $inputHash,
		file_path => $file_path2
	}

}