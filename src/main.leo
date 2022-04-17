// The 'full-adder' main function.
import binadd.BinaryAdder;

function main(a: [u32; 3], b: [u32; 3]) -> [u32; 4] {
    let add = BinaryAdder{
        bits1: a,
        bits2: b,
    };
    
    
    let val = BinaryAdder.binaryAdd();
    console.log("addition is {}", val);
}
