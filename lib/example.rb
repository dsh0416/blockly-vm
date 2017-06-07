require './blockly-vm'

ast = Blockly::AST.new('
<xml xmlns="http://www.w3.org/1999/xhtml">
  <block type="procedures_defnoreturn" id="|ck~uZA0ecVi$}4__?C8" x="62" y="213">
    <mutation>
      <arg name="count"></arg>
    </mutation>
    <field name="NAME">test</field>
    <comment pinned="false" h="80" w="160">Describe this function...</comment>
    <statement name="STACK">
      <block type="controls_if" id="1kPm7IiW}dScw#;`+^Dx">
        <value name="IF0">
          <block type="logic_compare" id="c}})s((vFLt@UJoz}YKX">
            <field name="OP">GT</field>
            <value name="A">
              <block type="variables_get" id="phR5R}?_#?=MG4Lv[/eA">
                <field name="VAR">count</field>
              </block>
            </value>
            <value name="B">
              <block type="math_number" id="oQSgDN,;()`Ht8%R2,LR">
                <field name="NUM">0</field>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO0">
          <block type="procedures_callnoreturn" id="tt|{oSvU.b#a2^Dn3yDT">
            <mutation name="test">
              <arg name="count"></arg>
            </mutation>
            <value name="ARG0">
              <block type="math_arithmetic" id=",B_iS?K9NM7Vg2lGm[r=">
                <field name="OP">MINUS</field>
                <value name="A">
                  <shadow type="math_number" id="{K8/V=@ms2oWbgAV=g7^">
                    <field name="NUM">1</field>
                  </shadow>
                  <block type="variables_get" id="H-TNmGRawS^Wi;1PZn1*">
                    <field name="VAR">count</field>
                  </block>
                </value>
                <value name="B">
                  <shadow type="math_number" id="R4SXYe9Z2w|B#E7t4DLW">
                    <field name="NUM">1</field>
                  </shadow>
                </value>
              </block>
            </value>
          </block>
        </statement>
      </block>
    </statement>
  </block>
  <block type="procedures_callnoreturn" id="E,#jG=lOlv2dq[5;M1eN" x="537" y="262">
    <mutation name="test">
      <arg name="count"></arg>
    </mutation>
    <value name="ARG0">
      <block type="math_number" id="o|i]K0YGZ(H;/7om6E.x">
        <field name="NUM">10</field>
      </block>
    </value>
  </block>
</xml>
')

puts ast.execute
