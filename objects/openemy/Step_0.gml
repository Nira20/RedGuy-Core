
// Enemy Movement script

d2p()
lineofsight()
if(hp <= 0) { instance_destroy(self);}
if los=false{
stateMachine()
emovementX()
}
emovementY()