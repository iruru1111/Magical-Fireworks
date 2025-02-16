#> magical_fireworks:sys/api/fireworks/set/construct
#
# 花火をMagicalFireworksにセットしよう]
#
# @within function magical_fireworks:sys/api/fireworks/set/**
    
# Middle, Right, Left(順番は中央→右→左とプレイヤー基準)に花火をセットする
    execute if data storage magical_fireworks:temp {CacheFireworksData: {Middle: {id: "minecraft:firework_rocket"}}} run item modify entity @s weapon.mainhand magical_fireworks:fireworks/set_middle
    execute unless data storage magical_fireworks:temp {CacheFireworksData: {Middle: {id: "minecraft:firework_rocket"}}} run item modify entity @s weapon.mainhand magical_fireworks:fireworks/set_null
    execute if data storage magical_fireworks:temp {CacheFireworksData: {Right: {id: "minecraft:firework_rocket"}}} run item modify entity @s weapon.mainhand magical_fireworks:fireworks/set_right
    execute unless data storage magical_fireworks:temp {CacheFireworksData: {Right: {id: "minecraft:firework_rocket"}}} run item modify entity @s weapon.mainhand magical_fireworks:fireworks/set_null
    execute if data storage magical_fireworks:temp {CacheFireworksData: {Left: {id: "minecraft:firework_rocket"}}} run item modify entity @s weapon.mainhand magical_fireworks:fireworks/set_left
    execute unless data storage magical_fireworks:temp {CacheFireworksData: {Left: {id: "minecraft:firework_rocket"}}} run item modify entity @s weapon.mainhand magical_fireworks:fireworks/set_null

# チャージ済みかどうかのキーを有効化する
    item modify entity @s weapon.mainhand magical_fireworks:fireworks/charged