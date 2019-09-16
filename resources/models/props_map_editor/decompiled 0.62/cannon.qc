
$modelname "props_map_editor/cannon.mdl"

$staticprop

$bodygroup "Body"
{
	studio "cannon_ref.smd"
}

$surfaceprop "no_decal"

$contents "solid"

$illumposition 0 -81 -28

$cdmaterials "models\props_map_editor\"

$cbox 0 0 0 0 0 0

$bbox -23 -24.001 -56 185 24.001 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"cannon_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
