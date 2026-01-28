<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:77df4ee0-7f67-49a1-ad3f-f120bf73a7e3(Shapes.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="c8ur" ref="r:9303dad0-504f-42a6-bfc1-f1cc08ce8969(Shapes.structure)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="ilo6" ref="r:cc3dc882-051d-4cb8-8d96-683aa7284e36(Shapes.colors)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681515200" name="jetbrains.mps.core.xml.structure.XmlFile" flags="ng" index="2pMbU2">
        <child id="6666499814681515201" name="document" index="2pMbU3" />
      </concept>
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt" />
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <child id="6666499814681415861" name="attributes" index="2pNNFR" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" flags="ng" index="2pNUuL">
        <property id="6666499814681447926" name="attrName" index="2pNUuO" />
        <child id="6666499814681541918" name="value" index="2pMdts" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG">
        <property id="1622293396948953704" name="value" index="3o6i5n" />
      </concept>
      <concept id="6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" flags="ng" index="3rIKKV">
        <child id="6666499814681299055" name="rootElement" index="2pNm8H" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ngI" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="6w2QDuArTAX">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="2g3TtIvg7ly" role="3acgRq">
      <ref role="30HIoZ" to="c8ur:6w2QDuAs6b3" resolve="Circle" />
      <node concept="j$656" id="2g3TtIvg7ni" role="1lVwrX">
        <ref role="v9R2y" node="2g3TtIvg7ng" resolve="reduce_Circle" />
      </node>
    </node>
    <node concept="3aamgX" id="2g3TtIvgM6U" role="3acgRq">
      <ref role="30HIoZ" to="c8ur:6w2QDuAs6bg" resolve="Square" />
      <node concept="j$656" id="2g3TtIvgM6Y" role="1lVwrX">
        <ref role="v9R2y" node="2g3TtIvgM6W" resolve="reduce_Square" />
      </node>
    </node>
    <node concept="3aamgX" id="6R7$oTFYdtw" role="3acgRq">
      <ref role="30HIoZ" to="c8ur:6R7$oTFWvvj" resolve="Triangle" />
      <node concept="j$656" id="6R7$oTFYdu2" role="1lVwrX">
        <ref role="v9R2y" node="6R7$oTFYdu0" resolve="reduce_Triangle" />
      </node>
    </node>
    <node concept="3lhOvk" id="2g3TtIvg3SW" role="3lj3bC">
      <ref role="30HIoZ" to="c8ur:6w2QDuAs6bu" resolve="Canvas" />
      <ref role="3lhOvi" node="2g3TtIvg3Yt" resolve="map_Canvas" />
    </node>
  </node>
  <node concept="2pMbU2" id="2g3TtIvg3Yt">
    <property role="TrG5h" value="map_Canvas" />
    <node concept="3rIKKV" id="2g3TtIvg3Yu" role="2pMbU3">
      <node concept="2pNNFK" id="2g3TtIvg42m" role="2pNm8H">
        <property role="2pNNFO" value="painting" />
        <node concept="2pNUuL" id="2g3TtIvg4aO" role="2pNNFR">
          <property role="2pNUuO" value="name" />
          <node concept="2pMdtt" id="2g3TtIvg4aP" role="2pMdts">
            <node concept="17Uvod" id="2g3TtIvg4cy" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="2g3TtIvg4c_" role="3zH0cK">
                <node concept="3clFbS" id="2g3TtIvg4cA" role="2VODD2">
                  <node concept="3clFbF" id="2g3TtIvg4cG" role="3cqZAp">
                    <node concept="2OqwBi" id="2g3TtIvg4cB" role="3clFbG">
                      <node concept="3TrcHB" id="2g3TtIvg4cE" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="30H73N" id="2g3TtIvg4cF" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="2g3TtIvg5OX" role="3o6s8t" />
        <node concept="2pNNFK" id="2g3TtIvg6OQ" role="3o6s8t">
          <property role="2pNNFO" value="shape" />
          <node concept="3o6iSG" id="2g3TtIvg6Fy" role="3o6s8t" />
          <node concept="2b32R4" id="2g3TtIvg6UB" role="lGtFl">
            <node concept="3JmXsc" id="2g3TtIvg6UE" role="2P8S$">
              <node concept="3clFbS" id="2g3TtIvg6UF" role="2VODD2">
                <node concept="3clFbF" id="2g3TtIvg6UL" role="3cqZAp">
                  <node concept="2OqwBi" id="2g3TtIvg6UG" role="3clFbG">
                    <node concept="3Tsc0h" id="2g3TtIvg6UJ" role="2OqNvi">
                      <ref role="3TtcxE" to="c8ur:6w2QDuAs6b$" resolve="shapes" />
                    </node>
                    <node concept="30H73N" id="2g3TtIvg6UK" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="2g3TtIvg3Yw" role="lGtFl">
      <ref role="n9lRv" to="c8ur:6w2QDuAs6bu" resolve="Canvas" />
    </node>
    <node concept="17Uvod" id="2g3TtIvg73x" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="2g3TtIvg73$" role="3zH0cK">
        <node concept="3clFbS" id="2g3TtIvg73_" role="2VODD2">
          <node concept="3clFbF" id="2g3TtIvg73F" role="3cqZAp">
            <node concept="2OqwBi" id="2g3TtIvg73A" role="3clFbG">
              <node concept="3TrcHB" id="2g3TtIvg73D" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="30H73N" id="2g3TtIvg73E" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="2g3TtIvg7ng">
    <property role="TrG5h" value="reduce_Circle" />
    <ref role="3gUMe" to="c8ur:6w2QDuAs6b3" resolve="Circle" />
    <node concept="2pNNFK" id="2g3TtIvg7p1" role="13RCb5">
      <property role="2pNNFO" value="circle" />
      <node concept="3o6iSG" id="2g3TtIvg7p2" role="3o6s8t" />
      <node concept="2pNNFK" id="2g3TtIvg7p4" role="3o6s8t">
        <property role="2pNNFO" value="center" />
        <node concept="2pNUuL" id="2g3TtIvg7p8" role="2pNNFR">
          <property role="2pNUuO" value="x" />
          <node concept="2pMdtt" id="2g3TtIvg7p9" role="2pMdts">
            <node concept="17Uvod" id="2g3TtIvg7pa" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="2g3TtIvg7pb" role="3zH0cK">
                <node concept="3clFbS" id="2g3TtIvg7pc" role="2VODD2">
                  <node concept="3clFbF" id="2g3TtIvg7vt" role="3cqZAp">
                    <node concept="2YIFZM" id="2g3TtIvg8Pr" role="3clFbG">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="2g3TtIvg9aS" role="37wK5m">
                        <node concept="30H73N" id="2g3TtIvg8R4" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2g3TtIvgaYB" role="2OqNvi">
                          <ref role="3TsBF5" to="c8ur:6w2QDuAs6b9" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="2g3TtIvg7p3" role="3o6s8t" />
        <node concept="2pNUuL" id="2g3TtIvgdlD" role="2pNNFR">
          <property role="2pNUuO" value="y" />
          <node concept="2pMdtt" id="2g3TtIvgdlE" role="2pMdts">
            <node concept="17Uvod" id="2g3TtIvgdn0" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="2g3TtIvgdn1" role="3zH0cK">
                <node concept="3clFbS" id="2g3TtIvgdn2" role="2VODD2">
                  <node concept="3clFbF" id="2g3TtIvgdNg" role="3cqZAp">
                    <node concept="2YIFZM" id="2g3TtIvgeAl" role="3clFbG">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="2g3TtIvgeWx" role="37wK5m">
                        <node concept="30H73N" id="2g3TtIvgeCH" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2g3TtIvgfcy" role="2OqNvi">
                          <ref role="3TsBF5" to="c8ur:6w2QDuAs6bb" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="2g3TtIvghc5" role="3o6s8t">
        <property role="2pNNFO" value="radius" />
        <node concept="3o6iSG" id="2g3TtIvgggE" role="3o6s8t">
          <property role="3o6i5n" value="10" />
          <node concept="17Uvod" id="2g3TtIvgheL" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="2g3TtIvgheM" role="3zH0cK">
              <node concept="3clFbS" id="2g3TtIvgheN" role="2VODD2">
                <node concept="3clFbF" id="2g3TtIvghfg" role="3cqZAp">
                  <node concept="2YIFZM" id="2g3TtIvgi9c" role="3clFbG">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="2OqwBi" id="2g3TtIvgiw7" role="37wK5m">
                      <node concept="30H73N" id="2g3TtIvgicj" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2g3TtIvgiWx" role="2OqNvi">
                        <ref role="3TsBF5" to="c8ur:6w2QDuAs6bc" resolve="radius" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="2g3TtIvgk5o" role="3o6s8t">
        <property role="2pNNFO" value="color" />
        <node concept="3o6iSG" id="2g3TtIvgk1o" role="3o6s8t">
          <property role="3o6i5n" value="black" />
          <node concept="17Uvod" id="2g3TtIvgk9o" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="2g3TtIvgk9p" role="3zH0cK">
              <node concept="3clFbS" id="2g3TtIvgk9q" role="2VODD2">
                <node concept="3clFbF" id="2g3TtIvgkfF" role="3cqZAp">
                  <node concept="2OqwBi" id="2g3TtIvglSU" role="3clFbG">
                    <node concept="2OqwBi" id="2g3TtIvgl8R" role="2Oq$k0">
                      <node concept="2OqwBi" id="2g3TtIvgkxM" role="2Oq$k0">
                        <node concept="30H73N" id="2g3TtIvgkfE" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2g3TtIvgkSI" role="2OqNvi">
                          <ref role="3Tt5mk" to="c8ur:6w2QDuAtedK" resolve="color" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="2g3TtIvglFL" role="2OqNvi">
                        <ref role="3Tt5mk" to="c8ur:6w2QDuAtedi" resolve="target" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="2g3TtIvgm8n" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="2g3TtIvg7p5" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="2g3TtIvgM6W">
    <property role="TrG5h" value="reduce_Square" />
    <ref role="3gUMe" to="c8ur:6w2QDuAs6bg" resolve="Square" />
    <node concept="2pNNFK" id="2g3TtIvgM7L" role="13RCb5">
      <property role="2pNNFO" value="square" />
      <node concept="3o6iSG" id="2g3TtIvgM7M" role="3o6s8t" />
      <node concept="2pNNFK" id="2g3TtIvgM7N" role="3o6s8t">
        <property role="2pNNFO" value="center" />
        <node concept="2pNUuL" id="2g3TtIvgM7O" role="2pNNFR">
          <property role="2pNUuO" value="x" />
          <node concept="2pMdtt" id="2g3TtIvgM7P" role="2pMdts">
            <node concept="17Uvod" id="2g3TtIvgM7Q" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="2g3TtIvgM7R" role="3zH0cK">
                <node concept="3clFbS" id="2g3TtIvgM7S" role="2VODD2">
                  <node concept="3clFbF" id="2g3TtIvgM7T" role="3cqZAp">
                    <node concept="2YIFZM" id="2g3TtIvgM7U" role="3clFbG">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="2g3TtIvgM7V" role="37wK5m">
                        <node concept="30H73N" id="2g3TtIvgM7W" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2g3TtIvgQKU" role="2OqNvi">
                          <ref role="3TsBF5" to="c8ur:6w2QDuAs6bk" resolve="upperLeftX" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="2g3TtIvgM7Y" role="3o6s8t" />
        <node concept="2pNUuL" id="2g3TtIvgM7Z" role="2pNNFR">
          <property role="2pNUuO" value="y" />
          <node concept="2pMdtt" id="2g3TtIvgM80" role="2pMdts">
            <node concept="17Uvod" id="2g3TtIvgM81" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="2g3TtIvgM82" role="3zH0cK">
                <node concept="3clFbS" id="2g3TtIvgM83" role="2VODD2">
                  <node concept="3clFbF" id="2g3TtIvgM84" role="3cqZAp">
                    <node concept="2YIFZM" id="2g3TtIvgM85" role="3clFbG">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="2g3TtIvgM86" role="37wK5m">
                        <node concept="30H73N" id="2g3TtIvgM87" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2g3TtIvgQYO" role="2OqNvi">
                          <ref role="3TsBF5" to="c8ur:6w2QDuAs6bn" resolve="upperLeftY" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="2g3TtIvgM89" role="3o6s8t">
        <property role="2pNNFO" value="size" />
        <node concept="3o6iSG" id="2g3TtIvgM8a" role="3o6s8t">
          <property role="3o6i5n" value="10" />
          <node concept="17Uvod" id="2g3TtIvgM8b" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="2g3TtIvgM8c" role="3zH0cK">
              <node concept="3clFbS" id="2g3TtIvgM8d" role="2VODD2">
                <node concept="3clFbF" id="2g3TtIvgM8e" role="3cqZAp">
                  <node concept="2YIFZM" id="2g3TtIvgM8f" role="3clFbG">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="2OqwBi" id="2g3TtIvgM8g" role="37wK5m">
                      <node concept="30H73N" id="2g3TtIvgM8h" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2g3TtIvgM8i" role="2OqNvi">
                        <ref role="3TsBF5" to="c8ur:6w2QDuAs6bq" resolve="size" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="2g3TtIvgM8j" role="3o6s8t">
        <property role="2pNNFO" value="color" />
        <node concept="3o6iSG" id="2g3TtIvgM8k" role="3o6s8t">
          <property role="3o6i5n" value="white" />
          <node concept="17Uvod" id="2g3TtIvgM8l" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="2g3TtIvgM8m" role="3zH0cK">
              <node concept="3clFbS" id="2g3TtIvgM8n" role="2VODD2">
                <node concept="3clFbF" id="2g3TtIvgM8o" role="3cqZAp">
                  <node concept="2OqwBi" id="2g3TtIvgM8p" role="3clFbG">
                    <node concept="2OqwBi" id="2g3TtIvgM8q" role="2Oq$k0">
                      <node concept="2OqwBi" id="2g3TtIvgM8r" role="2Oq$k0">
                        <node concept="30H73N" id="2g3TtIvgM8s" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2g3TtIvgM8t" role="2OqNvi">
                          <ref role="3Tt5mk" to="c8ur:6w2QDuAtedK" resolve="color" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="2g3TtIvgM8u" role="2OqNvi">
                        <ref role="3Tt5mk" to="c8ur:6w2QDuAtedi" resolve="target" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="2g3TtIvgM8v" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="2g3TtIvgM8w" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="6R7$oTFYdu0">
    <property role="TrG5h" value="reduce_Triangle" />
    <ref role="3gUMe" to="c8ur:6R7$oTFWvvj" resolve="Triangle" />
    <node concept="2pNNFK" id="6R7$oTFYfHJ" role="13RCb5">
      <property role="2pNNFO" value="triangle" />
      <node concept="3o6iSG" id="6R7$oTFYfHK" role="3o6s8t" />
      <node concept="2pNNFK" id="6R7$oTFYfHL" role="3o6s8t">
        <property role="2pNNFO" value="center" />
        <node concept="2pNUuL" id="6R7$oTFYfHM" role="2pNNFR">
          <property role="2pNUuO" value="x" />
          <node concept="2pMdtt" id="6R7$oTFYfHN" role="2pMdts">
            <node concept="17Uvod" id="6R7$oTFYfHO" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="6R7$oTFYfHP" role="3zH0cK">
                <node concept="3clFbS" id="6R7$oTFYfHQ" role="2VODD2">
                  <node concept="3clFbF" id="6R7$oTFYfHR" role="3cqZAp">
                    <node concept="2YIFZM" id="6R7$oTFYfHS" role="3clFbG">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="6R7$oTFYfHT" role="37wK5m">
                        <node concept="30H73N" id="6R7$oTFYfHU" role="2Oq$k0" />
                        <node concept="3TrcHB" id="6R7$oTFYfHV" role="2OqNvi">
                          <ref role="3TsBF5" to="c8ur:6R7$oTFWIO3" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="6R7$oTFYfHW" role="3o6s8t" />
        <node concept="2pNUuL" id="6R7$oTFYfHX" role="2pNNFR">
          <property role="2pNUuO" value="y" />
          <node concept="2pMdtt" id="6R7$oTFYfHY" role="2pMdts">
            <node concept="17Uvod" id="6R7$oTFYfHZ" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="6R7$oTFYfI0" role="3zH0cK">
                <node concept="3clFbS" id="6R7$oTFYfI1" role="2VODD2">
                  <node concept="3clFbF" id="6R7$oTFYfI2" role="3cqZAp">
                    <node concept="2YIFZM" id="6R7$oTFYfI3" role="3clFbG">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="2OqwBi" id="6R7$oTFYfI4" role="37wK5m">
                        <node concept="30H73N" id="6R7$oTFYfI5" role="2Oq$k0" />
                        <node concept="3TrcHB" id="6R7$oTFYfI6" role="2OqNvi">
                          <ref role="3TsBF5" to="c8ur:6R7$oTFWIOs" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="6R7$oTFYfI7" role="3o6s8t">
        <property role="2pNNFO" value="side" />
        <node concept="3o6iSG" id="6R7$oTFYfI8" role="3o6s8t">
          <property role="3o6i5n" value="10" />
          <node concept="17Uvod" id="6R7$oTFYfI9" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="6R7$oTFYfIa" role="3zH0cK">
              <node concept="3clFbS" id="6R7$oTFYfIb" role="2VODD2">
                <node concept="3clFbF" id="6R7$oTFYfIc" role="3cqZAp">
                  <node concept="2YIFZM" id="6R7$oTFYfId" role="3clFbG">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="2OqwBi" id="6R7$oTFYfIe" role="37wK5m">
                      <node concept="30H73N" id="6R7$oTFYfIf" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6R7$oTFYlZ8" role="2OqNvi">
                        <ref role="3TsBF5" to="c8ur:6R7$oTFWvxy" resolve="side" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="6R7$oTFYJnw" role="3o6s8t">
        <property role="2pNNFO" value="rotationDeg" />
        <node concept="3o6iSG" id="6R7$oTFYJiv" role="3o6s8t">
          <property role="3o6i5n" value="0" />
          <node concept="17Uvod" id="6R7$oTFYJsN" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="6R7$oTFYJsO" role="3zH0cK">
              <node concept="3clFbS" id="6R7$oTFYJsP" role="2VODD2">
                <node concept="3clFbF" id="6R7$oTFYJJ_" role="3cqZAp">
                  <node concept="2YIFZM" id="6R7$oTFYJJA" role="3clFbG">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="2OqwBi" id="6R7$oTFYJJB" role="37wK5m">
                      <node concept="30H73N" id="6R7$oTFYJJC" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6R7$oTFYLYB" role="2OqNvi">
                        <ref role="3TsBF5" to="c8ur:6R7$oTFWvxP" resolve="rotationDeg" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="6R7$oTFYfIh" role="3o6s8t">
        <property role="2pNNFO" value="color" />
        <node concept="3o6iSG" id="6R7$oTFYfIi" role="3o6s8t">
          <property role="3o6i5n" value="red" />
          <node concept="17Uvod" id="6R7$oTFYfIj" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="6R7$oTFYfIk" role="3zH0cK">
              <node concept="3clFbS" id="6R7$oTFYfIl" role="2VODD2">
                <node concept="3clFbF" id="6R7$oTFYfIm" role="3cqZAp">
                  <node concept="2OqwBi" id="6R7$oTFYfIn" role="3clFbG">
                    <node concept="2OqwBi" id="6R7$oTFYfIo" role="2Oq$k0">
                      <node concept="2OqwBi" id="6R7$oTFYfIp" role="2Oq$k0">
                        <node concept="30H73N" id="6R7$oTFYfIq" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6R7$oTFYfIr" role="2OqNvi">
                          <ref role="3Tt5mk" to="c8ur:6w2QDuAtedK" resolve="color" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="6R7$oTFYfIs" role="2OqNvi">
                        <ref role="3Tt5mk" to="c8ur:6w2QDuAtedi" resolve="target" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="6R7$oTFYfIt" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="6R7$oTFYfIu" role="lGtFl" />
    </node>
  </node>
</model>

