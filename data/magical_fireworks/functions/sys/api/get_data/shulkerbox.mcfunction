#> magical_fireworks:sys/api/get_data/shulkerbox
#
# インベントリ9番のシュルカーボックスのデータを取得し、手に持っているMagicalFireworksに保存する
#
# @api

# インベントリ9番のシュルカーボックスのデータを仮ストレージに格納する
    data modify storage magical_fireworks:temp CacheData set from entity @s Inventory[{Slot:9b}]

# 仮ストレージに格納したシュルカーボックスデータを手に持っているMagicalFireworksに保存する
    item modify entity @s weapon.mainhand magical_fireworks:save_shulkerbox_data

# 仮ストレージを初期化する
    data remove storage magical_fireworks:temp CacheData