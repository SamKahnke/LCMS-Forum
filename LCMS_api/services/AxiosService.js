"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const https = require("https");
const axios_1 = require("axios");
exports.getPHPBBResponse = async (url, params) => {
    const axiosInstance = axios_1.default.create({
        httpsAgent: new https.Agent({
            rejectUnauthorized: false
        })
    });
    const result = await axiosInstance.get(url, {
        params: params || {}
        // responseType: "json"
    });
    return result;
};
//# sourceMappingURL=AxiosService.js.map