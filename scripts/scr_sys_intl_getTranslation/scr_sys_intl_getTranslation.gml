// -----------------------[ SRC_SYS_INTL_GETTRANSLATION ]-------------------------
// Returns the translation on the current language for a specific key
//
// EXPECTS:
//		argument0 - Section in the language file
//		argument1 - Key to be translated
//
// RETURNS: 
//		Translation (string)
// ------------------------------------------------------------------------------

// @TODO - Add all possible outputs to a event logger

var section				= string(argument0)
var stringToTranslate	= string(argument1)
var languageFile		= scr_sys_intl_getLanguageFile()

ini_open(global.intl_directory + "/" + languageFile)

var translatedString = ini_read_string( section, stringToTranslate, "not found")

ini_close()

if (translatedString == "not found") {
	translatedString = "notFound:" + stringToTranslate + ":" + section + ":" + languageFile
	show_debug_message("Could not find any translation for " + stringToTranslate + " in the section " + section + " of the file " + global.languageDirectory + "/" + languageFile)
}


return translatedString
