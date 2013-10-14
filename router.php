<?php
/**
 * This script is responsible to directing
 * user requests to the correct controller.
 */

// Automatically includes files containing classes that are called
function __autoload($className)
{
    // parse out filename where class should be located
    list($filename , $suffix) = split('_' , $className);
    
    // compose file name
    $file = 'models/' . strtolower($filename) . '.php';
    
    // fetch file
    if (file_exists($file))
    {
        // get file
        include_once($file);        
    }
    else
    {
        // file does not exist!
        die('File "'.$filename.'" containing class "'.$className.'" not found.');    
    }
}

$request = $_SERVER['QUERY_STRING'];
$params = explode('$', $request);
$page = array_shift($params);

// the rest of the array are get statements, parse them out.
$getVars = array();
foreach ($params as $argument)
{
    // split GET vars along '=' symbol to separate variable, values
    list($variable, $value) = split('=' , $argument);
    $getVars[$variable] = $value;
}

// this is a test, and we will be removing it later
print "The page your requested is '$page'";
print '<br/>';
$vars = print_r($getVars, TRUE);
print "The following GET vars were passed to the page:<pre>".$vars."</pre>";

$target = 'controllers/'.$page.'.php';

// get target
if (file_exists($target))
{
    include_once($target);

    // modify page to fit naming convention
    $class = ucfirst($page) . '_Controller';

    // instantiate the appropriate class
    if (class_exists($class))
    {
        $controller = new $class;
    }
    else
    {
        // did we name our class correctly?
        die('class does not exist!');
    }
}
else
{
    // can't find the file in 'controllers'! 
    die('page does not exist!');
}

// once we have the controller instantiated, execute the default function
// pass any GET varaibles to the main method
$controller->main($getVars);
?>
