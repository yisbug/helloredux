module.exports =
    change:->
        type:'change'
    timer:(interval)->
        type:'timer'
        interval:interval
    add:(text)->
        type:'add'
        text:text
    del:(id)->
        type:'del'
        id:id