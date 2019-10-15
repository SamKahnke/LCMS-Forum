// import * as express from "express";

export const returnTestObject = async (req, res) => {
    const obj = {
        name: "Sam",
        age: 26
    }
    console.log(res);
    
   return res.send(obj);
}

// returnTestObject();
