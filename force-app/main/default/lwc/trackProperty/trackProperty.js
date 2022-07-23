import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {

    @track location = {
        city: 'Houston',
        country: "US",
        postalCode: '50033'
    };

    handleChange(event){
        this.location.city = event.target.value;
    }
}   