import * as types from './mutation-types'

export const fetchPractices = ({ commit, dispatch, state }, params) => {
  return new Promise((resolve, reject) => {
    window.axios.get(`/api/practices`, {params}).then((response) => {
      commit(types.BOOTSTRAP_PRACTICES, response.data.practices.data)
      commit(types.SET_TOTAL_PRACTICES, response.data.practices.total)
      resolve(response)
    }).catch((err) => {
      reject(err)
    })
  })
}

export const fetchPractice = ({ commit, dispatch }, id) => {
  return new Promise((resolve, reject) => {
    window.axios.get(`/api/practices/${id}/edit`).then((response) => {
      resolve(response)
    }).catch((err) => {
      reject(err)
    })
  })
}

export const addPractice = ({ commit, dispatch, state }, data) => {
  return new Promise((resolve, reject) => {
    window.axios.post('/api/practices', data).then((response) => {
      commit(types.ADD_PRACTICE, response.data)
      resolve(response)
    }).catch((err) => {
      reject(err)
    })
  })
}

export const updatePractice = ({ commit, dispatch, state }, data) => {
  return new Promise((resolve, reject) => {
    window.axios.put(`/api/practices/${data.id}`, data).then((response) => {
      commit(types.UPDATE_PRACTICE, response.data)
      resolve(response)
    }).catch((err) => {
      reject(err)
    })
  })
}

export const deletePractice = ({ commit, dispatch, state }, id) => {
  return new Promise((resolve, reject) => {
    window.axios.delete(`/api/practices/${id}`).then((response) => {
      commit(types.DELETE_PRACTICE, response.data)
      resolve(response)
    }).catch((err) => {
      reject(err)
    })
  })
}

export const deleteMultiplePractices = ({ commit, dispatch, state }, id) => {
  return new Promise((resolve, reject) => {
    window.axios.post(`/api/practices/delete`, {'id': state.selectedPractices}).then((response) => {
      commit(types.DELETE_MULTIPLE_PRACTICES, state.selectedPractices)
      resolve(response)
    }).catch((err) => {
      reject(err)
    })
  })
}

export const setSelectAllState = ({ commit, dispatch, state }, data) => {
  commit(types.SET_SELECT_ALL_STATE, data)
}

export const selectAllPractices = ({ commit, dispatch, state }) => {
  if (state.selectedPractices.length === state.practices.length) {
    commit(types.SET_SELECTED_PRACTICES, [])
    commit(types.SET_SELECT_ALL_STATE, false)
  } else {
    let allPracticeIds = state.practices.map(practice => practice.id)
    commit(types.SET_SELECTED_PRACTICES, allPracticeIds)
    commit(types.SET_SELECT_ALL_STATE, true)
  }
}

export const selectPractice = ({ commit, dispatch, state }, data) => {
  commit(types.SET_SELECTED_PRACTICES, data)
  if (state.selectedPractices.length === state.practices.length) {
    commit(types.SET_SELECT_ALL_STATE, true)
  } else {
    commit(types.SET_SELECT_ALL_STATE, false)
  }
}