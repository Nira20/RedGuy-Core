//Enemy Movement script
stateMachine()
d2p()
if(hp <= 0) {instance_destroy(self);}
emovementX()
emovementY()
if invince = true && !instance_exists(oprojectile) 
{invince = false}
countKnockback()
if knockbackcount >=5
{resetKnockback()
}