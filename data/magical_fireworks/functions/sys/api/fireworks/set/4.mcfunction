#> magical_fireworks:sys/api/fireworks/set/4
#
# 4列目に花火データをセットする
#
# @api

# 4列目のデータを仮ストレージに格納する
    data modify storage magical_fireworks:temp CacheFireworksData.Middle set from entity @s SelectedItem.tag.MagicalFireworks.Data.tag.BlockEntityTag.Items[{Slot:3b}]
    data modify storage magical_fireworks:temp CacheFireworksData.Left set from entity @s SelectedItem.tag.MagicalFireworks.Data.tag.BlockEntityTag.Items[{Slot:12b}]
    data modify storage magical_fireworks:temp CacheFireworksData.Right set from entity @s SelectedItem.tag.MagicalFireworks.Data.tag.BlockEntityTag.Items[{Slot:21b}]

# 花火が存在するか記録する
    scoreboard players set $Temp.Fireworks.NoExist MagicalFireworks.Temporary 0
    execute unless data storage magical_fireworks:temp {CacheFireworksData: {Middle: {id: "minecraft:firework_rocket"}}} \
        unless data storage magical_fireworks:temp {CacheFireworksData: {Left: {id: "minecraft:firework_rocket"}}} \
        unless data storage magical_fireworks:temp {CacheFireworksData: {Right: {id: "minecraft:firework_rocket"}}} run \
            scoreboard players set $Temp.Fireworks.NoExist MagicalFireworks.Temporary 1

# 4列目のデータが花火であればそれをMagicalFireworksに書き換える
    execute if score $Temp.Fireworks.NoExist MagicalFireworks.Temporary matches 0 run function magical_fireworks:sys/api/fireworks/set/construct

# 仮ストレージを初期化する
    data remove storage magical_fireworks:temp CacheFireworksData
    scoreboard players reset $Temp.Fireworks.NoExist MagicalFireworks.Temporary