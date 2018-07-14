#include "../../symbols.fst"
%%%% Causative voice forms - പ്രയോജകക്രിയകൾ %%%%
% ഉദാഹരണം: ഉറങ്ങുക-ഉറക്കുക, എഴുതിക്കുക, പഠിപ്പിക്കുക, ഓടിക്കുക

ALPHABET = [#Letters##POS##BM##TMP##infl#]

% സചേതന കർമ്മകങ്ങളാണ് കൂടുതലും സ്പെഷ്യൽ കേസുകൾ
$special-cases$ = {കേൾക്കുക}:{കേൾപ്പിക്കുക} |\
	{വായിക്കുക}:{വായിപ്പിക്കുക} |\
	{പഠിക്കുക}:{പഠിപ്പിക്കുക} |\
	{നില്ക്കുക}:{നിറുത്തുക} |\
	{നിൽക്കുക}:{നിറുത്തുക} |\
	{വരുക}:{വരുത്തുക} |\
	{പരക്കുക}:{പരത്തുക} |\
	{ഇടുക}:{ഇടുവിക്കുക} |\
	{നടുക}:{നടുവിക്കുക} |\
	{വിടുക}:{വിടുവിക്കുക} |\
	{പാടുക}:{പാടിക്കുക} |\
	{പെടുക}:{പെടുത്തുക} |\
	{തിന്നുക}:{തീറ്റിക്കുക} |\
	{തറുക}:{തറിപ്പിക്കുക} |\
	{പാറുക}:{പാറിപ്പിക്കുക} |\
	{കരയുക}: {കരയിപ്പിക്കുക}
% ഓഷ്ഠ്യമായ അകാരം, ര, ല, ഴ  എന്നിവയിൽ അവസാനിക്കുന്ന അകാരിതധാതുക്കളിൽ “ത്ത്’ എന്ന പ്രത്യയം
% ചേർത്താലാണു പ്രയോജകരൂപം കിട്ടുക.
$verb-suffix-map$ = {രുക}:{ർത്തുക} | {ലുക}:{ത്തുക} | {ഴുക}:{ത്തുക} | {ളുക}:{ത്തുക} |\
	{റുക}:{റ്റുക} |\
	{ങ്ങുക}:{ക്കുക} |\
	{ണുക}:{ട്ടുക} | {ണുക}:{ണിക്കുക} \
	{ടുക}:{ട്ടുക} | {ടുക}:{ടിക്കുക} |\
	{ക്കുക}:{പ്പിക്കുക} |\
	{ഴുതുക}:{ഴുതിക്കുക} |\
	{യുക}: {യ്ക്കുക} | {യുക}: {യിക്കുക}

$causative-voice$ = $verb-suffix-map$  ^-> ( __  [<v>#BM##TMP#]+ <causative-voice> )
$causative-voice-ex$ = $verb-suffix-map$  ^-> (__  [<v>#BM##TMP#]+ <causative-voice> )

$special-cases$ = $causative-voice-ex$ || $causative-voice$
$tests$ = പതറുക<v><RB><causative-voice>
$tests$ || $causative-voice$  >> "causative.test.a"

$causative-voice$