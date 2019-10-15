"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const joi = require("joi");
const JoiValidation = (schema) => (req, res, next) => {
    const validate = joi.validate(req, schema, { abortEarly: false });
    if (validate.error) {
        const errorMessage = validate.error.details.reduce((msg, error, index) => index === 0 ? error.message : `${msg}, ${error.message}`, "");
        res.status(400).json({
            message: errorMessage
        });
        next(errorMessage);
    }
    next();
};
exports.default = JoiValidation;