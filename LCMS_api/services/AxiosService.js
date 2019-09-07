"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const https = require("https");
const axios_1 = require("axios");
exports.PHPBB_GET = async (url, params) => {
    const axiosInstance = axios_1.default.create({
        httpsAgent: new https.Agent({
            rejectUnauthorized: false
        })
    });
    const result = await axiosInstance.get(url, {
        params
    });
    return result;
};
exports.PHPBB_POST = async (url, params) => {
    const axiosInstance = axios_1.default.create({
        httpsAgent: new https.Agent({
            rejectUnauthorized: false
        })
    });
    const result = await axiosInstance({
        method: 'post',
        url,
        params
    });
    // .post<any>(url, params);
    return result;
};
//# sourceMappingURL=AxiosService.js.map