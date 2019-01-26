library (bnlearn)
library (bnviewer)
data ("coronary")

bayesianNetwork.boot.strength = boot.strength(coronary, R = 10 ,
                                                      algorithm = "hc" ,
                                                      nrow ( data ),
                                                      cpdag = TRUE ,
                                                      debug = FALSE )

bayesianNetwork.boot.strength[( bayesianNetwork.boot.strength$strength > 0.95 ) &
                                     ( bayesianNetwork.boot.strength$direction <= 1 ), ]

avg.bayesianNetwork = averaged.network ( bayesianNetwork.boot.strength )

strength.viewer(
  avg.bayesianNetwork ,
  bayesianNetwork.boot.strength ,
  bayesianNetwork.arc.strength.threshold.expression.color = " @threshold >= 0.95 & @threshold <= 1 " ,
  bayesianNetwork.arc.strength.threshold.color = " # f4bafd" ,
  bayesianNetwork.arc.strength.label = TRUE ,
  bayesianNetwork.arc.strength.label.prefix = "" ,
  bayesianNetwork.arc.strength.label.color = "black" ,
  bayesianNetwork.arc.strength.tooltip = TRUE ,
  bayesianNetwork.edge.scale.min = 1 ,
  bayesianNetwork.edge.scale.max = 5 ,
  bayesianNetwork.edge.scale.label.min = 14 ,
  bayesianNetwork.edge.scale.label.max = 14 ,
  bayesianNetwork.width = "100%" ,
  bayesianNetwork.height = "800px" ,
  bayesianNetwork.layout = "layout_with_sugiyama" ,
  node.colors = list ( background = " #97c2fc" ,
                         border = " #2b7ce9" ,
                         highlight = list ( background = " #f4bafd" ,
                                            border = " #2b7ce9" )),
  edges.dashes = TRUE
)
