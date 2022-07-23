public with sharing class JProductResponseWrapper {
    
public list<Cls_Jp> products;

    public class Cls_Jp{
        public integer id;
        public String category;
        public String brand;
        public String description;
        public Double discountPercentage;
        public Double price;
        public String title;
     
        
    }
}