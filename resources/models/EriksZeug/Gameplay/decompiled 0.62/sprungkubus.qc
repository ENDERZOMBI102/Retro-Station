
$modelname "EriksZeug/Gameplay/Sprungkubus.mdl"

$bodygroup "Body"
{
	studio "Sprungkubus.smd"
}


$surfaceprop "Metal_Box"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\props\"
$cdmaterials "models\npcs\monsters\"

$texturegroup "skinfamilies"
{
	{ "metal_box"                }
	{ "metal_box_skin001"        }
	{ "metal_box_skin002"        }
	{ "metal_box_skin003"        }
	{ "metal_box_skin004"        }
	{ "metal_box_skin005"        }
	{ "metal_box_bounce"         }
	{ "metal_box_speed"          }
	{ "metal_box_skin001_bounce" }
	{ "metal_box_skin001_speed"  }
	{ "metal_box_skin002_bounce" }
	{ "metal_box_skin002_speed"  }
}

$cbox 0 0 0 0 0 0

$bbox -18.25 -18.25 -18.25 18.25 18.25 18.25

$definebone "root" "" 0 0 0 0 0 89.999983 0 0 0 0 0 0
$definebone "stufe1" "root" 0 8 0 0 0 0 0 0 0 0 0 0
$definebone "stufe2" "stufe1" 0 4 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"sprungkubus_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "sprung" {
	"sprungkubus_anims\sprung.smd"
	{ event AE_CL_PLAYSOUND 0 "World.RobotImpactXLCatapultBlock" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "hoch" {
	"sprungkubus_anims\hoch.smd"
	{ event AE_CL_PLAYSOUND 0 "World.RobotImpactXLCatapultBlock" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "runter" {
	"sprungkubus_anims\runter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "sprungkubus_physics.smd"
{
	$mass 40
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
