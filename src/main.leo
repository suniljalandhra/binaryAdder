// The 'full-adder' main function.
import binadd.BinaryAdder;
import fulladder.FullAdder;

function main(a: [u32; 3], b: [u32; 3]) -> [u32; 4] {
    let add = BinaryAdder{
        bits1: a,
        bits2: b,
        adder: [FullAdder {
            bit1: 0,
            bit2: 0,
            carry_in: 0,
        }; 3],
    };
    
    
    let val = add.binaryAdd();
    console.log("addition is {}", val);
}
