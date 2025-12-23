import axios from 'axios';

const BASE_URL = import.meta.env.VITE_REACT_API_URL;


const apiClient = axios.create({
 baseURL: "http://127.0.0.1:8000/api",

});

//export axios.isAxiosError
export const isAxiosError = axios.isAxiosError;

export default apiClient;