#> magical_fireworks:sys/core/assets/buildup
#
# データパックを動かすのに必要なオブジェクトを生成する
#
# @within function magical_fireworks:sys/core/load

#> バージョン設定  
# バージョン管理を主な仕事とするシステム管理ストレージ  
# アップデートする必要があるかどうかの判定等に使用、変更時loadファイルを修正してください  
# @public
    data modify storage magical_fireworks:global Version set value "v1.0"

#> 全体の管理上で必要となるスコア保存用  
# @public
    scoreboard objectives add MagicalFireworks.Global dummy

#> 一時的なスコア保存用  
# @public
    scoreboard objectives add MagicalFireworks.Temporary dummy

#> 一時的なデータ保存用
# @public
    # define storage magical_fireworks:temp

#> ストレージに定数保存
    data modify storage magical_fireworks:global MagicalFireworks.ColumnNumber.Ascending set value 0
    data modify storage magical_fireworks:global MagicalFireworks.ColumnNumber.Descending set value 9
    data modify storage magical_fireworks:global MagicalFireworks.ColumnNumber.Random set value 0
    data modify storage magical_fireworks:global MagicalFireworks.Charged set value 1b
    data modify storage magical_fireworks:global MagicalFireworks.AppendNull set value {}