#> magical_fireworks:sys/core/load
#
# データパックがロードされたときに呼び出されるファイル
#
# @within tag/function minecraft:load

# バージョンが変更されていた場合、もしくは存在しない場合、buildupをロードする
    execute unless data storage magical_fireworks:global {Version: "v1.0"} run function magical_fireworks:sys/core/assets/buildup

# スタートメニュー表示
    execute as @a run function magical_fireworks:sys/core/assets/start_menu