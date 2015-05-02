define props (
    $input
) {

    # example
    # $input = {
    #   "app.name" => "testapp",
    #   "blah.thing" => "stuff stuff stuff"
    # }

    $augeasHash = $input.reduce( {} ) |Hash $output, Array $pair| {
      $key = $pair[0]
      $value = $pair[1]

      $output["${file_path}--${key}"] = {
          changes => ["set $key $value"],
          Require => [File[$file_path]]
      }
    }

    $propsDefaults = {
         lens    => 'Properties.lns',
         incl    => $file_path
    }

    create_resources(augeas, $augeasHash, $propsDefaults)
	
	notify {"${input} \nbecame \n${real_hash}":}

}
