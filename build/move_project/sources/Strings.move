//using string module
module my_addrx::Strings{
    use std::debug;
    use std::string::{String,utf8};
    
    fun greeting():String {
        let greet:String = utf8(b"Welcome to Aptos anand by Example");
        debug::print(&greet);
        return greet
    }


    #[test]
    fun testing(){
        let greet=greeting();
        debug::print(&greet);
    } 
}

//using vector<u8> for representing byte string
module 0x42::String{
    use std::debug;
    use std::string::utf8;
    
    fun greeting():vector<u8> {
        let greet:vector<u8> = b"Welcome to Aptos move by examples"; 
        return greet
    }


    #[test]
    fun testing(){
        let greet=greeting();
        debug::print(&greet); //It will print byte string literal form 
        debug::print(&utf8(greet)); 
    } 
}