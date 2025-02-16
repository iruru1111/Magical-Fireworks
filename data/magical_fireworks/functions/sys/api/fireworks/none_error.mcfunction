#> magical_fireworks:sys/api/fireworks/none_error
#
# 花火データに関する処理に失敗したときのエラー
#
# @within function magical_fireworks:sys/api/fireworks/set/1

# エラーメッセージ(@s)
    tellraw @s [{"text": "Error -> ", "color": "red"},{"text": "少なくとも1列目には花火が必要です！"}]

# Magical Fireworksを捨てる
    item replace entity @s weapon.mainhand with air
    execute at @s run summon item ~ ~ ~ {PickupDelay:100,Item:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Magical Fireworks","color":"aqua","italic":false}'},HideFlags:32,Unbreakable:1b,magical_fireworks:unique,Enchantments:[{}],ChargedProjectiles:[]}}}