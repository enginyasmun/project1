import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {

    name; // undefined
    fullname = 'Engin Yasmun' // string
    age = 42;
    location = {
        city: 'Houston',
        country: "US",
        postalCode: '50033'
    }; // Object

    fruits =["Banana", "Orange" , "Pineapple", "Pomogranate"]; // Array

}