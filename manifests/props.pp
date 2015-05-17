define javautils::props (
    $input,
    $file_path
) {

    $augeasHash = $input.reduce( {} ) |$output, $pair| {
		$key = $pair[0]
		$value = $pair[1]

		$output + [
			"${file_path}--${key}",
			{
				changes => ["set ${key} '${value}'"],
				#Require => [File[$file_path]]
			}
		]
    }

    $propsDefaults = {
         lens    => 'Properties.lns',
         incl    => $file_path
    }

    create_resources(augeas, $augeasHash, $propsDefaults)

}
