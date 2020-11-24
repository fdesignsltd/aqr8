import * as types from './mutation-types'

export default {
  [types.BOOTSTRAP_PRACTICES] (state, practices) {
    state.practices = practices
  },

  [types.SET_TOTAL_PRACTICES] (state, totalPractices) {
    state.totalPractices = totalPractices
  },

  [types.ADD_PRACTICE] (state, data) {
    state.practices.push(data.practice)
  },

  [types.UPDATE_PRACTICE] (state, data) {
    let pos = state.practices.findIndex(practice => practice.id === data.practice.id)

    state.practices[pos] = data.practice
  },

  [types.DELETE_PRACTICE] (state, id) {
    let index = state.practices.findIndex(practice => practice.id === id)
    state.practices.splice(index, 1)
  },

  [types.DELETE_MULTIPLE_PRACTICES] (state, selectedPractices) {
    selectedPractices.forEach((practice) => {
      let index = state.practices.findIndex(_practice => _practice.id === practice.id)
      state.practices.splice(index, 1)
    })

    state.selectedPractices = []
  },

  [types.SET_SELECTED_PRACTICES] (state, data) {
    state.selectedPractices = data
  },

  [types.RESET_SELECTED_PRACTICE] (state, data) {
    state.selectedPractice = null
  },

  [types.SET_SELECT_ALL_STATE] (state, data) {
    state.selectAllField = data
  }
  
}
