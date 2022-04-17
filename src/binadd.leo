import fulladder.FullAdder;

circuit BinaryAdder {
    bits1: [u32; 3],
    bits2: [u32; 3],

    adder: [FullAdder; 3],

    function binaryAdd(mut self) -> [u32; 4]{
        let res = [0u32; 4];
        self.adder[0].bit1 = self.bits1[0];
        self.adder[0].bit2 = self.bits2[0];
        self.adder[0].carry_in = 0;
        res[0] = self.adder[0].calculate_val();

        for i in 1..3 {
            self.adder[i].bit1 = self.bits1[i];
            self.adder[i].bit2 = self.bits2[i];
            self.adder[i].carry_in = self.adder[i-1].calculate_carry();
            res[i] = self.adder[i].calculate_val();
        }
        res[3] = self.adder[2].calculate_carry();
        return res;
    }

}