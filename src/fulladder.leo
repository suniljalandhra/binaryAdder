circuit FullAdder{
    bit1: u32,
    bit2: u32,
    carry_in: u32,

    function calculate_val(self) -> u32 {
        return (self.bit1+self.bit2+self.carry_in) - 2*((self.bit1+self.bit2+self.carry_in) /2);
    }
    function calculate_carry(self) -> u32 {
        return (self.bit1+self.bit2+self.carry_in) /2;
    }

}