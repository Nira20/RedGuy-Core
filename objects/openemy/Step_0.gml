
// Enemy Movement script

d2p()
if(hp <= 0) { instance_destroy(self);}
if (distance_to_player < distance_threshold)
{active = true}
stateMachine()
emovementX()
emovementY()