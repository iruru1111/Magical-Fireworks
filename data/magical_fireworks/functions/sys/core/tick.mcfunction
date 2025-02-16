#> magical_fireworks:sys/core/tick
#
# 常時実行なファイル
#
# @within tag/function minecraft:tick

# MagicalFireworksを持っている時、専用のファイルを実行
    execute as @a[predicate=magical_fireworks:is_having_magical_fireworks] run function magical_fireworks:sys/logics/having_magical_fireworks/validate_data