class javautils (
) {

	$inputHash = {
        "app.name" => "testapp",
        "blah.thing" => "stuff stuff stuff"
    }

	javautils {"myfile":
		input => $inputHash
	}

}
