module.exports = (state,action)->
    switch action.type
        when 'change'
            Object.assign {},state,title:'hello ' + action.title
        when 'timer'
            Object.assign {},state,interval:action.interval
        else
            state