module ID-SPEC
  imports PLUTUS-CORE

  // Proof that id x = x
  rule
    <k>
      [
        (#stringToModName("Prelude") . equalsInt):QualN
          [ (#stringToModName("Prelude") . id):QualN X:Int ]
          X
      ]
      =>
      (con (#stringToModName("Prelude") . #stringToCon("True")) .ValList)
      ...
    </k>
    <genv> E GENV </genv>
    when notBool ((#stringToModName("Prelude") . id):QualN in keys(E)) andBool
         notBool ((#stringToModName("Prelude") . equalsInt):QualN in keys(E))

endmodule
