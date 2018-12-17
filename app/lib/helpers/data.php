<?php

if(!function_exists('config')){
    function config()
    {

    }
}

if(!function_exists('env')){
    function env()
    {

    }
}

if(!function_exists('session')){
    function session()
    {

    }
}

if(!function_exists('minify')){
    function minify($content = null)
    {
        if(is_null($content)){
            $ENCODING = $_SERVER['HTTP_ACCEPT_ENCODING'] ?? false;
            if ($ENCODING && substr_count($ENCODING, 'gzip' ) ) {
                ob_start( "ob_gzhandler" );
            }  else {
                ob_start();
            }
            $content = ob_get_clean();
        }

        register_shutdown_function(function() use($content){

            $regex = '%# Collapse ws everywhere but in blacklisted elements.
                (?>             # Match all whitespans other than single space.
                    [^\S ]\s*     # Either one [\t\r\n\f\v] and zero or more ws,
                | \s{2,}        # or two or more consecutive-any-whitespace.
                ) # Note: The remaining regex consumes no text at all...
                (?=             # Ensure we are not in a blacklist tag.
                    (?:           # Begin (unnecessary) group.
                    (?:         # Zero or more of...
                        [^<]++    # Either one or more non-"<"
                    | <         # or a < starting a non-blacklist tag.
                        (?!/?(?:textarea|pre)\b)
                    )*+         # (This could be "unroll-the-loop"ified.)
                    )             # End (unnecessary) group.
                    (?:           # Begin alternation group.
                    <           # Either a blacklist start tag.
                    (?>textarea|pre)\b
                    | \z          # or end of file.
                    )             # End alternation group.
                )  # If we made it here, we are not in a blacklist tag.
                %ix';
            $buffer =  preg_replace($regex, " ", $content);
            $buffer =  preg_replace('#(<!--(.*)-->|\/\/(.*)\n\r)#Uis', '', $buffer); // remove comments
            $buffer =  preg_replace('#\/\/\<\!\[CDATA\[(.*?)\/\/\]]\>#Uis', '$1', $buffer); #match//<!//[CDATA[...//]>
            print $buffer;
        });
    }
}
