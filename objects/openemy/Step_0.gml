//Enemy Movement script
stateMachine()
d2p()
if(hp <= 0) {instance_destroy(self);}
emovementX()
emovementY()
if !instance_exists(oattack) 
{invince = false}
countKnockback()
if knockbackcount >=5
{resetKnockback()
}