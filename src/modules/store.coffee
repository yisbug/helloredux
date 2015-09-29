{createStore} = require 'redux'

reducers = require './reducers'
state = require './state'

module.exports = createStore reducers,state