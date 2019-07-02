namespace Quantum.HelloSchrodinger
{
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    
    operation HelloQ () : Unit {
        Message("Hello quantum world!");
        using (q0 = Qubit()) {
            //q0 is now |0> by default.
            H(q0); // Applying a H gate on |0>, which gives H|0>=|+>
			//Lets take a measure of q0, should be half |0> and half |1>;
			//Every time run this measure gives different result
            let res = M(q0); 
            Message($"Final State 0 of q0 is {res}");
			H(q0);//Test can we operation on q0 again?
            let res2 = M(q0); //Lets take a measure of q0, should be half |0> and half |1>
            Message($"Final State 1 of q0 is {res2}");

        }
    }
}
