echo "...Creating new Scratch Org $1"
sfdx force:org:create -sa $1 -f config/project-scratch-def.json

echo "...Pushing metadata to $1"
sfdx force:source:push

echo "...assigning Permission Sets"
sfdx force:user:permset:assign -n SFLCM_Admin

echo "...seeding data"
sfdx force:data:tree:import -u $1 -p data/plan.json