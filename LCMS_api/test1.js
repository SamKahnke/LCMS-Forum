"use strict";
// import * as express from "express";
Object.defineProperty(exports, "__esModule", { value: true });
exports.returnTestObject = async (req, res) => {
    const obj = {
        name: "Sam",
        age: 26
    };
    console.log(res);
    return res.send(obj);
};
// returnTestObject();
//# sourceMappingURL=test1.js.map