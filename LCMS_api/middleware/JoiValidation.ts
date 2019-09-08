import * as joi from "joi";
import { ObjectSchema } from "joi";
import express = require("express");

const JoiValidation = (schema: ObjectSchema) => (req: express.Request, res: express.Response, next: express.NextFunction) => {
    const validate: joi.ValidationResult<express.Request> = joi.validate(req, schema, { abortEarly: false });
    if(validate.error) {
        const errorMessage: string = validate.error.details.reduce((msg, error, index) => index === 0 ? error.message : `${msg}, ${error.message}`, "");

        res.status(400).json({
            message: errorMessage
        });

        next(errorMessage);
    }
    next();
}

export default JoiValidation;