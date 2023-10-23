# HG function to sync the main bookmark
function move-main {
	param (
		[Parameter(Mandatory=$false)]
		[string]$remote = "default"
	)

	echo "Moving main to $remote"
	hg pull $remote
	$changeset = hg ident $remote
	hg bookmark -r $changeset -f main
}
