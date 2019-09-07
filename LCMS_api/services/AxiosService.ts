import * as https from "https";
import axios, { AxiosInstance, AxiosResponse } from "axios";

export const getPHPBBResponse = async (url: string, params?: object): Promise<any> => {
    const axiosInstance: AxiosInstance = axios.create({
        httpsAgent: new https.Agent({
            rejectUnauthorized: false
        })
    });

    const result: AxiosResponse<any> = await axiosInstance.get<any>(url, {
        params
    });

    return result;
}
