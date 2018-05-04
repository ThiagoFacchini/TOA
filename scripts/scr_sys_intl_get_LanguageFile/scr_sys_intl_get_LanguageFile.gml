// ----------------------[ SRC_SYS_INTL_GETLANGUAGEFILE ]------------------------
// Returns the language file for a specific language
//
// EXPECTS:
//		null
//
// RETURNS: 
//		language file (string)
// ------------------------------------------------------------------------------

// @TODO - Add all possible outputs to a event logger

switch (global.intl_language) {
	case 0:
		return "lang_english.ini"
	case 1:
		return "lang_portugues.ini"	
	default:
		return "lang_english.ini"
}
