# ================================================================
# SISTEMA PRINCIPAL - SE EJECUTA CADA TICK AUTOMÁTICAMENTE
# ================================================================

# Sistema de puntos por kills con diferentes valores
execute as @a[scores={kill_zombie=1..}] run scoreboard players add @s puntos 1
execute as @a[scores={kill_zombie=1..}] run title @s actionbar {"text":"🧟 +1 Punto por Zombie!","color":"green"}
execute as @a[scores={kill_zombie=1..}] run scoreboard players reset @s kill_zombie

execute as @a[scores={kill_skeleton=1..}] run scoreboard players add @s puntos 1
execute as @a[scores={kill_skeleton=1..}] run title @s actionbar {"text":"💀 +1 Punto por Esqueleto!","color":"white"}
execute as @a[scores={kill_skeleton=1..}] run scoreboard players reset @s kill_skeleton

execute as @a[scores={kill_spider=1..}] run scoreboard players add @s puntos 1
execute as @a[scores={kill_spider=1..}] run title @s actionbar {"text":"🕷️ +1 Punto por Araña!","color":"dark_red"}
execute as @a[scores={kill_spider=1..}] run scoreboard players reset @s kill_spider

execute as @a[scores={kill_creeper=1..}] run scoreboard players add @s puntos 2
execute as @a[scores={kill_creeper=1..}] run title @s actionbar {"text":"💥 +2 Puntos por Creeper!","color":"green"}
execute as @a[scores={kill_creeper=1..}] run scoreboard players reset @s kill_creeper

execute as @a[scores={kill_enderman=1..}] run scoreboard players add @s puntos 3
execute as @a[scores={kill_enderman=1..}] run title @s actionbar {"text":"👁️ +3 Puntos por Enderman!","color":"dark_purple"}
execute as @a[scores={kill_enderman=1..}] run scoreboard players reset @s kill_enderman

# Auto-habilitar triggers para nuevos jugadores
execute as @a unless score @s puntos matches 0.. run scoreboard players set @s puntos 0
execute as @a unless score @s puntos matches 0.. run function tienda_pvp:utils/reset_triggers

# Procesar trigger de tienda
execute as @a[scores={tienda=1..}] run function tienda_pvp:mostrar_tienda
execute as @a[scores={tienda=1..}] run scoreboard players reset @s tienda
execute as @a[scores={tienda=1..}] run scoreboard players enable @s tienda

# Procesar compras
execute as @a[scores={comprar_manzanas=1..}] run function tienda_pvp:compras/manzanas
execute as @a[scores={comprar_espada=1..}] run function tienda_pvp:compras/espada_diamante
execute as @a[scores={comprar_tridente=1..}] run function tienda_pvp:compras/tridente
execute as @a[scores={comprar_armadura=1..}] run function tienda_pvp:compras/armadura_diamante
execute as @a[scores={comprar_arco=1..}] run function tienda_pvp:compras/arco_power
execute as @a[scores={comprar_pociones=1..}] run function tienda_pvp:compras/pociones
execute as @a[scores={comprar_escudo=1..}] run function tienda_pvp:compras/escudo
execute as @a[scores={comprar_perlas=1..}] run function tienda_pvp:compras/perlas_ender