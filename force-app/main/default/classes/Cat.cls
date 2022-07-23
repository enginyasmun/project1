public class Cat {
    public string name = '';
    public string color = '';

    public Cat(){
        system.debug('constructor called');
    }

    public Cat(string name, string color) {
        this.name = name;
        this.color = color;
        
        sleeping();
    }

    public void sleeping(){
    System.debug(this.name + 'is sleeping');
    }
}