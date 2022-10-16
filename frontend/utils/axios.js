import Axios from 'axios'
import consts from '../utils/consts'

const axios = Axios.create({
    baseURL: consts.BACKEND_URL,
    headers: {
      'X-Requested-With': 'XMLHttpRequest',
    },
    withCredentials: false,
})

export default axios
