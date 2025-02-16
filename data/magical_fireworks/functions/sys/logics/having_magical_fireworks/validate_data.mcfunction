#> magical_fireworks:sys/logics/having_magical_fireworks/validate_data
#
# MagicalFireworksを持っているプレイヤーが常時実行
#
# @input as player
# @within function magical_fireworks:sys/core/tick

# MagicalFireworksの初期の名前から変更されていない且つインベントリ9番にシュルカーボックスがあればデータをMagicalFireworksに格納する
    execute if data entity @s {SelectedItem: {tag: {display: {Name: '{"text":"Magical Fireworks","color":"aqua","italic":false}'}}}} if data entity @s {Inventory: [{Slot: 9b, id: "minecraft:shulker_box"}]} run function magical_fireworks:sys/api/get_data/shulkerbox

# MagicalFireworksに格納されているパターンが["asc"||"ascending"||"desc"||"descending"||"random"]であればそれに応じた処理を行なう
    execute if data entity @s {SelectedItem: {tag: {MagicalFireworks: {Data: {tag: {display: {Name: '"asc"'}}}}}}} run function magical_fireworks:sys/logics/having_magical_fireworks/order_pattern/ascending
    execute if data entity @s {SelectedItem: {tag: {MagicalFireworks: {Data: {tag: {display: {Name: '"ascending"'}}}}}}} run function magical_fireworks:sys/logics/having_magical_fireworks/order_pattern/ascending
    execute if data entity @s {SelectedItem: {tag: {MagicalFireworks: {Data: {tag: {display: {Name: '"desc"'}}}}}}} run function magical_fireworks:sys/logics/having_magical_fireworks/order_pattern/descending
    execute if data entity @s {SelectedItem: {tag: {MagicalFireworks: {Data: {tag: {display: {Name: '"descending"'}}}}}}} run function magical_fireworks:sys/logics/having_magical_fireworks/order_pattern/descending
    execute if data entity @s {SelectedItem: {tag: {MagicalFireworks: {Data: {tag: {display: {Name: '"random"'}}}}}}} run function magical_fireworks:sys/logics/having_magical_fireworks/order_pattern/random