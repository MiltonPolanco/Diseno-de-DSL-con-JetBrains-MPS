<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2bf62dc8-07e6-42d8-86ea-93bc59e6d1dc(Shapes.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="00fc26dc-03fc-41ca-ae81-976686e2680e" name="Shapes" version="0" />
  </languages>
  <imports>
    <import index="ilo6" ref="r:cc3dc882-051d-4cb8-8d96-683aa7284e36(Shapes.colors)" implicit="true" />
  </imports>
  <registry>
    <language id="00fc26dc-03fc-41ca-ae81-976686e2680e" name="Shapes">
      <concept id="7910451311381968851" name="Shapes.structure.Triangle" flags="ng" index="6dApt">
        <property id="7910451311382031619" name="x" index="6dnMd" />
        <property id="7910451311382031644" name="y" index="6dnMi" />
        <property id="7910451311381968994" name="side" index="6dABG" />
        <property id="7910451311381969013" name="rotationDeg" index="6dABV" />
      </concept>
      <concept id="7494793074765226687" name="Shapes.structure.Shape" flags="ng" index="3esFwC">
        <child id="7494793074765521776" name="color" index="3etzBB" />
      </concept>
      <concept id="7494793074765226704" name="Shapes.structure.Square" flags="ng" index="3esFx7">
        <property id="7494793074765226711" name="upperLeftY" index="3esFx0" />
        <property id="7494793074765226708" name="upperLeftX" index="3esFx3" />
        <property id="7494793074765226714" name="size" index="3esFxd" />
      </concept>
      <concept id="7494793074765226718" name="Shapes.structure.Canvas" flags="ng" index="3esFx9">
        <child id="7494793074765226724" name="shapes" index="3esFxN" />
      </concept>
      <concept id="7494793074765226691" name="Shapes.structure.Circle" flags="ng" index="3esFxk">
        <property id="7494793074765226700" name="radius" index="3esFxr" />
        <property id="7494793074765226699" name="y" index="3esFxs" />
        <property id="7494793074765226697" name="x" index="3esFxu" />
      </concept>
      <concept id="7494793074765521742" name="Shapes.structure.ColorReference" flags="ng" index="3etzBp">
        <reference id="7494793074765521746" name="target" index="3etzB5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3esFx9" id="6w2QDuAs6Jy">
    <property role="TrG5h" value="MyDrawing" />
    <node concept="3esFx7" id="6w2QDuAsidQ" role="3esFxN">
      <property role="3esFx3" value="100" />
      <property role="3esFx0" value="200" />
      <property role="3esFxd" value="50" />
      <node concept="3etzBp" id="6w2QDuAtzLu" role="3etzBB">
        <ref role="3etzB5" to="ilo6:6w2QDuAt0tZ" resolve="black" />
      </node>
    </node>
    <node concept="3esFxk" id="6w2QDuAsie2" role="3esFxN">
      <property role="3esFxu" value="50" />
      <property role="3esFxs" value="50" />
      <property role="3esFxr" value="30" />
      <node concept="3etzBp" id="6w2QDuAtzLv" role="3etzBB">
        <ref role="3etzB5" to="ilo6:6w2QDuAt0tW" resolve="white" />
      </node>
    </node>
    <node concept="6dApt" id="6R7$oTFX4tH" role="3esFxN">
      <property role="6dnMd" value="300" />
      <property role="6dnMi" value="300" />
      <property role="6dABG" value="50" />
      <property role="6dABV" value="0" />
      <node concept="3etzBp" id="6R7$oTFX4tK" role="3etzBB">
        <ref role="3etzB5" to="ilo6:6R7$oTFX4sa" resolve="red" />
      </node>
    </node>
  </node>
</model>

