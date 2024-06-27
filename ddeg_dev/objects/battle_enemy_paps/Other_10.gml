Battle_SetEnemyName(_enemy_slot,"Papyrus")
Battle_SetEnemyActionNumber(_enemy_slot,2)
Battle_SetEnemyActionName(_enemy_slot,0,"* Check")
Battle_SetEnemyActionName(_enemy_slot,1,"* Talk")

x=Battle_GetEnemyCenterPosX(_enemy_slot)
y=Battle_GetEnemyCenterPosY(_enemy_slot)
animsin = 0
sinn = 2
_head = 0
_hand = 0
_head_on_hand = 0
_scarf = 0
_hp = 1
_hpmax = 1
alarm[1]=60
alarm[0]=1