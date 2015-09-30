module.exports =
    change:(title)->
        type:'change'
        title: title
    timer:(interval)->
        type:'timer'
        interval:interval
