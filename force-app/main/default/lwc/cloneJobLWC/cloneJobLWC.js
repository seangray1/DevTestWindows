/**
 * @File Name          : cloneJobLWC.js
 * @Description        : 
 * @Author             : Sean Gray
 * @Group              : 
 * @Last Modified By   : Sean Gray
 * @Last Modified On   : 1/21/2020, 5:31:04 PM
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    1/21/2020   Sean Gray     Initial Version
**/
import { LightningElement, track } from 'lwc';

export default class CloneJobLWC extends LightningElement {
@track Yes = false;
@track Start = true;
    YesTrue(){
        this.Start = false;
        this.Yes = true;
    }
}