module.exports = (state,action)->
    switch action.type
        when 'change'
            Object.assign {},state,title:'hello,^^.' + Math.random()
        when 'timer'
            Object.assign {},state,interval:action.interval
        else
            state