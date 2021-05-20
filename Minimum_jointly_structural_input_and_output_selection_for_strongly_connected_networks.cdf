(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.1' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    273756,       5202]
NotebookOptionsPosition[    270692,       5113]
NotebookOutlinePosition[    271077,       5130]
CellTagsIndexPosition[    271034,       5127]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Build", " ", "the", " ", "bipartite", " ", "graph", " ", "representation",
     " ", "of", " ", "G", " ", 
    RowBox[{"(", 
     RowBox[{"a", " ", "digraph", " ", "representation", " ", "of", " ", 
      RowBox[{"$", "\\", "bar"}], " ", 
      RowBox[{"A$", "."}]}], " "}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"FromGraphToBipartite", "[", "g_", "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"edges", ",", "newEdges"}], "}"}], ",", "\[IndentingNewLine]", 
      
      RowBox[{
       RowBox[{"edges", "=", 
        RowBox[{"EdgeList", "[", "g", "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"newEdges", "=", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"\"\<x\>\"", "<>", 
              RowBox[{"ToString", "[", 
               RowBox[{
               "#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
               "]"}]}], ")"}], "\[Rule]", 
            RowBox[{"(", 
             RowBox[{"\"\< x\>\"", "<>", 
              RowBox[{"ToString", "[", 
               RowBox[{
               "#", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
               "]"}]}], ")"}]}], ")"}], "&"}], "/@", "edges"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"Graph", "[", 
        RowBox[{"newEdges", ",", 
         RowBox[{"VertexLabels", "\[Rule]", "\"\<Name\>\""}], ",", 
         RowBox[{"GraphLayout", "\[Rule]", "\"\<BipartiteEmbedding\>\""}]}], 
        "]"}]}]}], "\[IndentingNewLine]", "]"}]}], ";"}]}]], "Input",
 CellChangeTimes->{{3.828855435281008*^9, 3.828855559365436*^9}, 
   3.8289705446625843`*^9, {3.829014973212191*^9, 3.8290149760229816`*^9}, {
   3.829374109621324*^9, 
   3.829374146331476*^9}},ExpressionUUID->"5516c7d7-259c-4478-89b4-\
197619fa05c2"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Build", " ", "the", " ", "bipartite", " ", "graph", " ", "of", " ", 
    "Algorithm", " ", "1", " ", "from", " ", "G", " ", 
    RowBox[{"(", 
     RowBox[{"a", " ", "digraph", " ", "representation", " ", "of", " ", 
      RowBox[{"$", "\\", "bar"}], " ", 
      RowBox[{"A$", "."}]}], " "}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"FromGraphToBipartiteInOut", "[", "g_", "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "edges", ",", "newEdges", ",", "in", " ", ",", "out", ",", 
        "edgeWeights"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"edges", "=", 
        RowBox[{"EdgeList", "[", "g", "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"newEdges", "=", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"\"\<x\>\"", "<>", 
              RowBox[{"ToString", "[", 
               RowBox[{
               "#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
               "]"}]}], ")"}], "\[Rule]", 
            RowBox[{"(", 
             RowBox[{"\"\< x\>\"", "<>", 
              RowBox[{"ToString", "[", 
               RowBox[{
               "#", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
               "]"}]}], ")"}]}], ")"}], "&"}], "/@", "edges"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"edgeWeights", "=", 
        RowBox[{"Table", "[", 
         RowBox[{"3", ",", 
          RowBox[{"{", 
           RowBox[{"Length", "[", "edges", "]"}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"newEdges", "=", 
        RowBox[{"newEdges", "~", "Join", "~", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"\"\<u\>\"", "<>", 
               RowBox[{"ToString", "[", "i", "]"}]}], ")"}], "\[Rule]", 
             RowBox[{"(", 
              RowBox[{"\"\< x\>\"", "<>", 
               RowBox[{"ToString", "[", "i", "]"}]}], ")"}]}], ")"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", 
             RowBox[{"VertexCount", "[", "g", "]"}]}], "}"}]}], "]"}]}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"newEdges", "=", 
        RowBox[{"newEdges", "~", "Join", "~", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"\"\<x\>\"", "<>", 
               RowBox[{"ToString", "[", "i", "]"}]}], ")"}], "\[Rule]", 
             RowBox[{"(", 
              RowBox[{"\"\<y\>\"", "<>", 
               RowBox[{"ToString", "[", "i", "]"}]}], ")"}]}], ")"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", 
             RowBox[{"VertexCount", "[", "g", "]"}]}], "}"}]}], "]"}]}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"newEdges", "=", 
        RowBox[{"newEdges", "~", "Join", "~", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"\"\<u\>\"", "<>", 
               RowBox[{"ToString", "[", "i", "]"}]}], ")"}], "\[Rule]", 
             RowBox[{"(", 
              RowBox[{"\"\<y\>\"", "<>", 
               RowBox[{"ToString", "[", "i", "]"}]}], ")"}]}], ")"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", 
             RowBox[{"VertexCount", "[", "g", "]"}]}], "}"}]}], "]"}]}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"edgeWeights", "=", 
        RowBox[{"edgeWeights", "~", "Join", "~", 
         RowBox[{"Table", "[", 
          RowBox[{"1", ",", 
           RowBox[{"{", 
            RowBox[{"2", "*", 
             RowBox[{"VertexCount", "[", "g", "]"}]}], "}"}]}], "]"}], "~", 
         "Join", "~", 
         RowBox[{"Table", "[", 
          RowBox[{"2", ",", 
           RowBox[{"{", 
            RowBox[{"VertexCount", "[", "g", "]"}], "}"}]}], "]"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"Graph", "[", 
        RowBox[{"newEdges", ",", 
         RowBox[{"EdgeWeight", "\[Rule]", "edgeWeights"}], ",", 
         RowBox[{"VertexLabels", "\[Rule]", "\"\<Name\>\""}], ",", 
         RowBox[{"GraphLayout", "\[Rule]", "\"\<BipartiteEmbedding\>\""}]}], 
        "]"}]}]}], "\[IndentingNewLine]", "]"}]}], ";"}]}]], "Input",
 CellChangeTimes->{{3.82897051456357*^9, 3.8289705745157347`*^9}, {
  3.828970615925475*^9, 3.828970727786312*^9}, {3.8289707608572397`*^9, 
  3.828970841046894*^9}, {3.828971318431396*^9, 3.828971326445506*^9}, {
  3.8290139460519333`*^9, 3.829014090224289*^9}, {3.82901433081234*^9, 
  3.8290143750453587`*^9}, {3.829014441400444*^9, 3.8290145713478107`*^9}, {
  3.8290146069676943`*^9, 3.829014607100479*^9}, {3.829374151957879*^9, 
  3.829374173892303*^9}},ExpressionUUID->"50907179-b59c-45d5-aa0c-\
76bb04acf8e9"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Build", " ", "the", " ", "sets", " ", "I", " ", "and", " ", "J", " ", 
    "from", " ", "a", " ", "MWMM", " ", "of", " ", "the", " ", "bipartite", 
    " ", "graph", " ", "constructed", " ", "in", " ", "Algorithm", " ", 
    "1."}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"ComputeSetsIandJ", "[", "g_", "]"}], ":=", "\[IndentingNewLine]", 
   
   RowBox[{
    RowBox[{"Function", "[", 
     RowBox[{"mwmm", ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"StringDrop", "[", 
           RowBox[{
            RowBox[{"Last", "[", "#", "]"}], ",", "1"}], "]"}], "&"}], "/@", 
         RowBox[{"Select", "[", 
          RowBox[{"mwmm", ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"StringTake", "[", 
                RowBox[{
                 RowBox[{
                 "#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 ",", "1"}], "]"}], "===", "\"\<u\>\""}], "&&", 
              RowBox[{
               RowBox[{"StringTake", "[", 
                RowBox[{
                 RowBox[{
                 "#", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 ",", "1"}], "]"}], "===", "\"\< \>\""}]}], ")"}], "&"}]}], 
          "]"}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"First", "/@", 
         RowBox[{"Select", "[", 
          RowBox[{"mwmm", ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"StringTake", "[", 
                RowBox[{
                 RowBox[{
                 "#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 ",", "1"}], "]"}], "===", "\"\<x\>\""}], "&&", 
              RowBox[{
               RowBox[{"StringTake", "[", 
                RowBox[{
                 RowBox[{
                 "#", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 ",", "1"}], "]"}], "===", "\"\<y\>\""}]}], ")"}], "&"}]}], 
          "]"}]}]}], "}"}]}], "]"}], "[", "\[IndentingNewLine]", 
    RowBox[{"FindIndependentEdgeSet", "[", 
     RowBox[{"FromGraphToBipartiteInOut", "[", "g", "]"}], "]"}], 
    "]"}]}]}]], "Input",
 CellChangeTimes->{{3.829373692427351*^9, 3.82937392699746*^9}, {
  3.8293739665319033`*^9, 3.829374044762154*^9}, {3.829374181395331*^9, 
  3.829374213446095*^9}},ExpressionUUID->"f7447f38-d5cd-4a06-aa25-\
f09e57f5931c"],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Paper", " ", "Example", " ", "1"}], " ", "*)"}]], "Input",
 CellChangeTimes->{{3.829374236307253*^9, 
  3.829374241446886*^9}},ExpressionUUID->"5a83d87a-48cd-4a24-978c-\
f3ad8b0df977"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"g", "=", 
  RowBox[{"Graph", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"1", "\[Rule]", "3"}], ",", 
      RowBox[{"1", "\[Rule]", "5"}], ",", 
      RowBox[{"1", "\[Rule]", "9"}], ",", 
      RowBox[{"1", "\[Rule]", "10"}], ",", 
      RowBox[{"2", "\[Rule]", "3"}], ",", 
      RowBox[{"3", "\[Rule]", "1"}], ",", 
      RowBox[{"3", "\[Rule]", "2"}], ",", 
      RowBox[{"3", "\[Rule]", "6"}], ",", 
      RowBox[{"3", "\[Rule]", "7"}], ",", 
      RowBox[{"4", "\[Rule]", "5"}], ",", 
      RowBox[{"5", "\[Rule]", "1"}], ",", 
      RowBox[{"5", "\[Rule]", "4"}], ",", 
      RowBox[{"5", "\[Rule]", "8"}], ",", 
      RowBox[{"6", "\[Rule]", "3"}], ",", 
      RowBox[{"7", "\[Rule]", "3"}], ",", 
      RowBox[{"8", "\[Rule]", "5"}], ",", 
      RowBox[{"9", "\[Rule]", "1"}], ",", 
      RowBox[{"10", "\[Rule]", "1"}]}], "}"}], ",", 
    RowBox[{"VertexLabels", "\[Rule]", "\"\<Name\>\""}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.829374244684671*^9, 3.829374253139031*^9}, {
  3.8293743281408978`*^9, 
  3.829374416307386*^9}},ExpressionUUID->"a67ceaa9-f63e-4c13-a828-\
17864050821a"],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{1, 3, 5, 9, 10, 2, 6, 7, 4, 
      8}, {{{1, 2}, {1, 3}, {1, 4}, {1, 5}, {6, 2}, {2, 1}, {2, 6}, {2, 7}, {
       2, 8}, {9, 3}, {3, 1}, {3, 9}, {3, 10}, {7, 2}, {8, 2}, {10, 3}, {4, 
       1}, {5, 1}}, Null}, {VertexLabels -> {"Name"}}]]}, 
    TagBox[GraphicsGroupBox[{
       {Hue[0.6, 0.7, 0.5], Opacity[0.7], Arrowheads[Medium], 
        ArrowBox[BezierCurveBox[{{2.0547997353464895`, 0.8209363867490936}, {
         2.7362532311305015`, 1.0452801307823671`}, {3.4178410498967313`, 
         0.8213448104048108}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{2.0547997353464895`, 0.8209363867490936}, {
         1.4113000075769886`, 0.6095552236581457}, {0.7679510379174419, 
         0.8213947832005367}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{2.0547997353464895`, 0.8209363867490936}, {
         1.8631335972994942`, 1.2127646056473118`}, {1.9414570488199556`, 
         1.6418691366678402`}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{2.0547997353464895`, 0.8209363867490936}, {
         2.1330578931297426`, 0.3918083667273962}, {1.9413252652593365`, 
         0.}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{3.4178410498967313`, 0.8213448104048108}, {
         2.7363875541127225`, 0.5970010663705383}, {2.0547997353464895`, 
         0.8209363867490936}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{3.4178410498967313`, 0.8213448104048108}, {
         3.5422076673768865`, 1.2768311753851969`}, {3.912655701928702, 
         1.5695821581639762`}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{3.4178410498967313`, 0.8213448104048108}, {
         3.8864831653204606`, 0.9759079817992421}, {4.355383748404429, 
         0.8221307094738425}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{3.4178410498967313`, 0.8213448104048108}, {
         3.7887113780852393`, 0.5290778409080432}, {3.91370514434782, 
         0.07373034702574366}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{0.7679510379174419, 0.8213947832005367}, {
         1.4114507656869426`, 1.0327759462916435`}, {2.0547997353464895`, 
         0.8209363867490936}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{0.7679510379174419, 0.8213947832005367}, {
         0.461613161503078, 0.45904663355028164`}, {0., 
         0.34926336885041276`}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{0.7679510379174419, 0.8213947832005367}, {
         0.30693010632279044`, 0.9320711115888667}, {0.0015989380603658176`, 
         1.2947864637882085`}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{1.9414570488199556`, 1.6418691366678402`}, {
         2.133123186866957, 1.2500409177664478`}, {2.0547997353464895`, 
         0.8209363867490936}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{1.9413252652593365`, 0.}, {
         1.8630671074760854`, 0.42912802002168116`}, {2.0547997353464895`, 
         0.8209363867490936}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{3.912655701928702, 1.5695821581639762`}, {
         3.7882890844485493`, 1.1140957931865882`}, {3.4178410498967313`, 
         0.8213448104048108}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{4.355383748404429, 0.8221307094738425}, {
         3.8867416329806934`, 0.6675675380810387}, {3.4178410498967313`, 
         0.8213448104048108}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{3.91370514434782, 0.07373034702574366}, {
         3.5428348161593153`, 0.3659973165225465}, {3.4178410498967313`, 
         0.8213448104048108}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{0., 0.34926336885041276`}, {
         0.30633787641436444`, 0.7116115185006794}, {0.7679510379174419, 
         0.8213947832005367}}], 0.0392297151991166], 
        ArrowBox[BezierCurveBox[{{0.0015989380603658176`, 
         1.2947864637882085`}, {0.4626198696550125, 1.184110135400565}, {
         0.7679510379174419, 0.8213947832005367}}], 0.0392297151991166]}, 
       {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[
        0.7]}], {
         DiskBox[{2.0547997353464895, 0.8209363867490936}, 
          0.0392297151991166], 
         InsetBox["1", 
          Offset[{2, 2}, {2.094029450545606, 0.8601661019482102}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{3.4178410498967313, 0.8213448104048108}, 
          0.0392297151991166], 
         InsetBox["3", 
          Offset[{2, 2}, {3.457070765095848, 0.8605745256039273}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.7679510379174419, 0.8213947832005367}, 
          0.0392297151991166], 
         InsetBox["5", 
          Offset[{2, 2}, {0.8071807531165585, 0.8606244983996533}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.9414570488199556, 1.6418691366678402}, 
          0.0392297151991166], 
         InsetBox["9", 
          Offset[{2, 2}, {1.9806867640190722, 1.6810988518669567}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.9413252652593365, 0.}, 0.0392297151991166], 
         InsetBox["10", 
          Offset[{2, 2}, {1.980554980458453, 0.0392297151991166}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{3.912655701928702, 1.5695821581639762}, 0.0392297151991166],
          InsetBox["2", 
          Offset[{2, 2}, {3.9518854171278184, 1.6088118733630927}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{4.355383748404429, 0.8221307094738425}, 0.0392297151991166],
          InsetBox["6", 
          Offset[{2, 2}, {4.394613463603545, 0.861360424672959}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{3.91370514434782, 0.07373034702574366}, 0.0392297151991166],
          InsetBox["7", 
          Offset[{2, 2}, {3.9529348595469367, 0.11296006222486026}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.34926336885041276}, 0.0392297151991166], 
         InsetBox["4", 
          Offset[{2, 2}, {0.0392297151991166, 0.38849308404952937}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.0015989380603658176, 1.2947864637882085}, 
          0.0392297151991166], 
         InsetBox["8", 
          Offset[{2, 2}, {0.040828653259482414, 1.334016178987325}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}}}],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FormatType->TraditionalForm,
  FrameTicks->None]], "Output",
 CellChangeTimes->{
  3.829374417004002*^9},ExpressionUUID->"6dc2c2bb-7d26-4ad9-b723-\
9302bf108569"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ConnectedComponents", "[", "g", "]"}]], "Input",ExpressionUUID->"05f04675-680d-4f08-82cc-38c96cd91c45"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{
   "1", ",", "3", ",", "5", ",", "9", ",", "10", ",", "2", ",", "6", ",", "7",
     ",", "4", ",", "8"}], "}"}], "}"}]], "Output",
 CellChangeTimes->{
  3.82937443688916*^9},ExpressionUUID->"839d39dd-6501-4133-b9ff-cac7afb92315"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FromGraphToBipartite", "[", "g", "]"}]], "Input",ExpressionUUID->"facc1c05-2853-464a-8a18-0180983c7b22"],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{
      "x1", " x3", " x5", " x9", " x10", "x2", "x3", " x1", " x2", " x6", 
       " x7", "x4", "x5", " x4", " x8", "x6", "x7", "x8", "x9", "x10"}, {{{1, 
       2}, {1, 3}, {1, 4}, {1, 5}, {6, 2}, {7, 8}, {7, 9}, {7, 10}, {7, 11}, {
       12, 3}, {13, 8}, {13, 14}, {13, 15}, {16, 2}, {17, 2}, {18, 3}, {19, 
       8}, {20, 8}}, Null}, {
      GraphLayout -> "BipartiteEmbedding", VertexLabels -> {"Name"}}]]}, 
    TagBox[GraphicsGroupBox[{
       {Hue[0.6, 0.7, 0.5], Opacity[0.7], Arrowheads[Medium], 
        ArrowBox[CompressedData["
1:eJxTTMoPSmVmYGAQAmImKL5g+5E1uu+cfYpM2B+nrR/3B/k6voiq+WLfb6Mi
FXfy3X5c8i5v8j5qzH2BU/7H7J0nPhc8wikfNZ3DobbzBlz+1bWrCmF33uK0
38hQeOu9UqYDMHkHg61rNOYxH8Alf3L6/m1zrJhwygf9P3lA4DoDTvmtZ1dM
5Xz+D24/b+l/DzW/Fzj9L3/3adbFVww43Ycuf2zO3pUf5f/g1H89+9LemxE/
4fL6wpqF3/Y/whk+S5KWGvUm38IpD6Vxul9SqNCxY/+//bjc/yVTbG3uyt8Y
8gCcqyn3
         "], 0.024320598136584104`]}, 
       {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[
        0.7]}], {
         DiskBox[{0.2387193469062212, -1.1067533356561166}, 
          0.024320598136584104], 
         InsetBox["\<\"x1\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -1.0824327375195324}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -0.9620810041978006}, 
          0.024320598136584104], 
         InsetBox["\<\" x3\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -0.9377604060612166}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -0.7691845622533795}, 
          0.024320598136584104], 
         InsetBox["\<\" x5\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -0.7448639641167953}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -0.5762881203089583}, 
          0.024320598136584104], 
         InsetBox["\<\" x9\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -0.5519675221723741}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -0.38339167836453714}, 
          0.024320598136584104], 
         InsetBox["\<\" x10\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -0.35907108022795303}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -0.9331465379061374}, 
          0.024320598136584104], 
         InsetBox["\<\"x2\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -0.9088259397695533}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -2.307553686760138}, 
          0.024320598136584104], 
         InsetBox["\<\"x3\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -2.283233088623554}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -2.452226018218454}, 
          0.024320598136584104], 
         InsetBox["\<\" x1\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -2.4279054200818697}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -2.278619220468475}, 
          0.024320598136584104], 
         InsetBox["\<\" x2\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -2.254298622331891}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -2.105012422718496}, 
          0.024320598136584104], 
         InsetBox["\<\" x6\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -2.080691824581912}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -1.931405624968517}, 
          0.024320598136584104], 
         InsetBox["\<\" x7\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -1.9070850268319328}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -0.7595397401561584}, 
          0.024320598136584104], 
         InsetBox["\<\"x4\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -0.7352191420195744}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -2.114657244815717}, 
          0.024320598136584104], 
         InsetBox["\<\"x5\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -2.0903366466791327}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -1.7577988272185379}, 
          0.024320598136584104], 
         InsetBox["\<\" x4\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -1.7334782290819537}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -1.5841920294685587}, 
          0.024320598136584104], 
         InsetBox["\<\" x8\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -1.5598714313319746}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -0.5859329424061793}, 
          0.024320598136584104], 
         InsetBox["\<\"x6\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -0.5616123442695953}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -0.4123261446562003}, 
          0.024320598136584104], 
         InsetBox["\<\"x7\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -0.3880055465196162}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -0.2387193469062212}, 
          0.024320598136584104], 
         InsetBox["\<\"x8\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -0.2143987487696371}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -1.9217608028712958}, 
          0.024320598136584104], 
         InsetBox["\<\"x9\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -1.8974402047347116}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -1.7288643609268748}, 
          0.024320598136584104], 
         InsetBox["\<\"x10\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -1.7045437627902906}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}}}],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FormatType->TraditionalForm,
  FrameTicks->None]], "Output",
 CellChangeTimes->{
  3.829374444378549*^9},ExpressionUUID->"5ee707e7-30cf-4b61-aa30-\
d4c3720e0523"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"HighlightGraph", "[", 
  RowBox[{
   RowBox[{"FromGraphToBipartite", "[", "g", "]"}], ",", 
   RowBox[{"FindIndependentEdgeSet", "[", 
    RowBox[{"FromGraphToBipartite", "[", "g", "]"}], "]"}], ",", 
   RowBox[{"GraphLayout", "\[Rule]", "\"\<BipartiteEmbedding\>\""}]}], 
  "]"}]], "Input",ExpressionUUID->"8779a4d5-710e-477b-ad26-12647eea1408"],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{
      "x1", " x3", " x5", " x9", " x10", "x2", "x3", " x1", " x2", " x6", 
       " x7", "x4", "x5", " x4", " x8", "x6", "x7", "x8", "x9", "x10"}, {{{1, 
       2}, {1, 3}, {1, 4}, {1, 5}, {6, 2}, {7, 8}, {7, 9}, {7, 10}, {7, 11}, {
       12, 3}, {13, 8}, {13, 14}, {13, 15}, {16, 2}, {17, 2}, {18, 3}, {19, 
       8}, {20, 8}}, Null}, {GraphHighlight -> {
         DirectedEdge["x8", " x5"], 
         DirectedEdge["x9", " x1"], 
         DirectedEdge["x3", " x6"], 
         DirectedEdge["x6", " x3"], 
         DirectedEdge["x5", " x8"], 
         DirectedEdge["x1", " x9"]}, GraphLayout -> "BipartiteEmbedding", 
       VertexLabels -> {"Name"}}]]}, 
    TagBox[GraphicsGroupBox[{
       {Hue[0.6, 0.7, 0.5], Opacity[0.7], Arrowheads[Medium], 
        ArrowBox[{{0.2387193469062212, -1.1067533356561166`}, {
         1.2803601334060954`, -0.9620810041978006}}, 0.024320598136584104`], 
        ArrowBox[{{0.2387193469062212, -1.1067533356561166`}, {
         1.2803601334060954`, -0.7691845622533795}}, 0.024320598136584104`], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2387193469062212, -1.1067533356561166`}, {
          1.2803601334060954`, -0.5762881203089583}}, 0.024320598136584104`]},
         ArrowBox[{{0.2387193469062212, -1.1067533356561166`}, {
         1.2803601334060954`, -0.38339167836453714`}}, 0.024320598136584104`],
         ArrowBox[{{0.2387193469062212, -0.9331465379061374}, {
         1.2803601334060954`, -0.9620810041978006}}, 0.024320598136584104`], 
        ArrowBox[{{0.2387193469062212, -2.307553686760138}, {
         1.2803601334060954`, -2.452226018218454}}, 0.024320598136584104`], 
        ArrowBox[{{0.2387193469062212, -2.307553686760138}, {
         1.2803601334060954`, -2.278619220468475}}, 0.024320598136584104`], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2387193469062212, -2.307553686760138}, {
          1.2803601334060954`, -2.105012422718496}}, 0.024320598136584104`]}, 
        ArrowBox[{{0.2387193469062212, -2.307553686760138}, {
         1.2803601334060954`, -1.931405624968517}}, 0.024320598136584104`], 
        ArrowBox[{{0.2387193469062212, -0.7595397401561584}, {
         1.2803601334060954`, -0.7691845622533795}}, 0.024320598136584104`], 
        ArrowBox[{{0.2387193469062212, -2.114657244815717}, {
         1.2803601334060954`, -2.452226018218454}}, 0.024320598136584104`], 
        ArrowBox[{{0.2387193469062212, -2.114657244815717}, {
         1.2803601334060954`, -1.7577988272185379`}}, 
         0.024320598136584104`], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2387193469062212, -2.114657244815717}, {
          1.2803601334060954`, -1.5841920294685587`}}, 
          0.024320598136584104`]}, 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2387193469062212, -0.5859329424061793}, {
          1.2803601334060954`, -0.9620810041978006}}, 0.024320598136584104`]},
         ArrowBox[{{0.2387193469062212, -0.4123261446562003}, {
         1.2803601334060954`, -0.9620810041978006}}, 0.024320598136584104`], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2387193469062212, -0.2387193469062212}, {
          1.2803601334060954`, -0.7691845622533795}}, 0.024320598136584104`]}, 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2387193469062212, -1.9217608028712958`}, {
          1.2803601334060954`, -2.452226018218454}}, 0.024320598136584104`]}, 
        ArrowBox[{{0.2387193469062212, -1.7288643609268748`}, {
         1.2803601334060954`, -2.452226018218454}}, 0.024320598136584104`]}, 
       {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[
        0.7]}], {
         DiskBox[{0.2387193469062212, -1.1067533356561166}, 
          0.024320598136584104], 
         InsetBox["\<\"x1\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -1.0824327375195324}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -0.9620810041978006}, 
          0.024320598136584104], 
         InsetBox["\<\" x3\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -0.9377604060612166}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -0.7691845622533795}, 
          0.024320598136584104], 
         InsetBox["\<\" x5\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -0.7448639641167953}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -0.5762881203089583}, 
          0.024320598136584104], 
         InsetBox["\<\" x9\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -0.5519675221723741}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -0.38339167836453714}, 
          0.024320598136584104], 
         InsetBox["\<\" x10\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -0.35907108022795303}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -0.9331465379061374}, 
          0.024320598136584104], 
         InsetBox["\<\"x2\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -0.9088259397695533}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -2.307553686760138}, 
          0.024320598136584104], 
         InsetBox["\<\"x3\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -2.283233088623554}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -2.452226018218454}, 
          0.024320598136584104], 
         InsetBox["\<\" x1\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -2.4279054200818697}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -2.278619220468475}, 
          0.024320598136584104], 
         InsetBox["\<\" x2\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -2.254298622331891}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -2.105012422718496}, 
          0.024320598136584104], 
         InsetBox["\<\" x6\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -2.080691824581912}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -1.931405624968517}, 
          0.024320598136584104], 
         InsetBox["\<\" x7\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -1.9070850268319328}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -0.7595397401561584}, 
          0.024320598136584104], 
         InsetBox["\<\"x4\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -0.7352191420195744}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -2.114657244815717}, 
          0.024320598136584104], 
         InsetBox["\<\"x5\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -2.0903366466791327}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -1.7577988272185379}, 
          0.024320598136584104], 
         InsetBox["\<\" x4\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -1.7334782290819537}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2803601334060954, -1.5841920294685587}, 
          0.024320598136584104], 
         InsetBox["\<\" x8\"\>", 
          Offset[{2, 2}, {1.3046807315426796, -1.5598714313319746}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -0.5859329424061793}, 
          0.024320598136584104], 
         InsetBox["\<\"x6\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -0.5616123442695953}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -0.4123261446562003}, 
          0.024320598136584104], 
         InsetBox["\<\"x7\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -0.3880055465196162}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -0.2387193469062212}, 
          0.024320598136584104], 
         InsetBox["\<\"x8\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -0.2143987487696371}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -1.9217608028712958}, 
          0.024320598136584104], 
         InsetBox["\<\"x9\"\>", 
          Offset[{2, 2}, {0.2630399450428053, -1.8974402047347116}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2387193469062212, -1.7288643609268748}, 
          0.024320598136584104], 
         InsetBox["\<\"x10\"\>", Offset[{2, 2}, 
          {0.2630399450428053, -1.7045437627902906}], ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}}}],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FormatType->TraditionalForm,
  FrameTicks->None]], "Output",
 CellChangeTimes->{
  3.829374457231099*^9},ExpressionUUID->"f44240e9-7593-4df7-b164-\
382f8bd1c3d9"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FromGraphToBipartiteInOut", "[", "g", "]"}]], "Input",ExpressionUUID->"c8fc6875-db9d-44b7-9010-6e650884a5b5"],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{
      "x1", " x3", " x5", " x9", " x10", "x2", "x3", " x1", " x2", " x6", 
       " x7", "x4", "x5", " x4", " x8", "x6", "x7", "x8", "x9", "x10", "u1", 
       "u2", "u3", "u4", "u5", "u6", "u7", "u8", "u9", "u10", "y1", "y2", 
       "y3", "y4", "y5", "y6", "y7", "y8", "y9", "y10"}, {{{1, 2}, {1, 3}, {1,
        4}, {1, 5}, {6, 2}, {7, 8}, {7, 9}, {7, 10}, {7, 11}, {12, 3}, {13, 
       8}, {13, 14}, {13, 15}, {16, 2}, {17, 2}, {18, 3}, {19, 8}, {20, 8}, {
       21, 8}, {22, 9}, {23, 2}, {24, 14}, {25, 3}, {26, 10}, {27, 11}, {28, 
       15}, {29, 4}, {30, 5}, {1, 31}, {6, 32}, {7, 33}, {12, 34}, {13, 35}, {
       16, 36}, {17, 37}, {18, 38}, {19, 39}, {20, 40}, {21, 31}, {22, 32}, {
       23, 33}, {24, 34}, {25, 35}, {26, 36}, {27, 37}, {28, 38}, {29, 39}, {
       30, 40}}, Null}, {
      EdgeWeight -> {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 
        2, 2, 2, 2, 2, 2}, GraphLayout -> "BipartiteEmbedding", 
       VertexLabels -> {"Name"}}]]}, 
    TagBox[GraphicsGroupBox[{
       {Hue[0.6, 0.7, 0.5], Opacity[0.7], Arrowheads[0.029855907012080796`], 
        ArrowBox[CompressedData["
1:eJyFlLFLQlEchR8GTs0tISoiooOIuN+xXWhqCSFoC8RF0NVVcWptcLElaPch
KEGGkEImYSCB0D8Q5JTQ79zhwOE9eDweH+fde8/97kvXbqpXR0EQlA53zG5c
m9xsPjz5Dn/ylZfH673Du+L3md/lbX0neTOZW3fmX5KfnZ5/Ngpbyfvp3ls3
NXDgGE/Nj/lF+X28egh9HvMBzxfjT9PjTaj4JFt7vZusJL9MjD7arYXk/8/n
KO7nhz5Uv8xtfJ/HetT6mFs/klv/kls/fnz0pfaHuX3P59GnyjO3Pnwefav+
mNt++Dz6UP0xt+/7PPpSeea2Ps67iLxT5wO+K3+Z8/mAj6p/5uwvfFR+MWd/
4ZPaP+bsH3xS55M5+wef1Pllzv7BJ3V+mLN/8En9P5mzf/Ap4v/K++v+AKc6
fEY=
         "], 0.01971161135153643]}, 
       {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[
        0.7]}], {DiskBox[{0., -0.7840169943749477}, 0.01971161135153643], 
         InsetBox["\<\"x1\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.7643053830234112}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.7840169943749477}, 
          0.01971161135153643], 
         InsetBox["\<\" x3\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.7643053830234112}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.7014888897039006}, 
          0.01971161135153643], 
         InsetBox["\<\" x5\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.6817772783523641}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.6189607850328535}, 
          0.01971161135153643], 
         InsetBox["\<\" x9\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.599249173681317}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.5364326803618064}, 
          0.01971161135153643], 
         InsetBox["\<\" x10\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.5167210690102699}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.7014888897039006}, 0.01971161135153643], 
         InsetBox["\<\"x2\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.6817772783523641}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.6189607850328535}, 0.01971161135153643], 
         InsetBox["\<\"x3\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.599249173681317}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.4539045756907592}, 
          0.01971161135153643], 
         InsetBox["\<\" x1\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.4341929643392228}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.37137647101971205}, 
          0.01971161135153643], 
         InsetBox["\<\" x2\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.3516648596681756}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.28884836634866495}, 
          0.01971161135153643], 
         InsetBox["\<\" x6\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.2691367549971285}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.2063202616776178}, 
          0.01971161135153643], 
         InsetBox["\<\" x7\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.18660865032608137}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.5364326803618064}, 0.01971161135153643], 
         InsetBox["\<\"x4\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.5167210690102699}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.4539045756907592}, 0.01971161135153643], 
         InsetBox["\<\"x5\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.4341929643392228}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.12379215700657069}, 
          0.01971161135153643], 
         InsetBox["\<\" x4\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.10408054565503426}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.04126405233552356}, 
          0.01971161135153643], 
         InsetBox["\<\" x8\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.021552440983987134}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.37137647101971205}, 0.01971161135153643], 
         InsetBox["\<\"x6\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.3516648596681756}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.28884836634866495}, 0.01971161135153643], 
         InsetBox["\<\"x7\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.2691367549971285}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.2063202616776178}, 0.01971161135153643], 
         InsetBox["\<\"x8\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.18660865032608137}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.12379215700657069}, 0.01971161135153643], 
         InsetBox["\<\"x9\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.10408054565503426}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.04126405233552356}, 0.01971161135153643], 
         InsetBox["\<\"x10\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.021552440983987134}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.04126405233552356}, 0.01971161135153643], 
         InsetBox["\<\"u1\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.06097566368705999}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.12379215700657069}, 0.01971161135153643], 
         InsetBox["\<\"u2\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.14350376835810713}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.2063202616776178}, 0.01971161135153643], 
         InsetBox["\<\"u3\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.22603187302915423}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.28884836634866495}, 0.01971161135153643], 
         InsetBox["\<\"u4\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.3085599777002014}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.37137647101971205}, 0.01971161135153643], 
         InsetBox["\<\"u5\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.3910880823712485}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.4539045756907592}, 0.01971161135153643], 
         InsetBox["\<\"u6\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.47361618704229563}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.5364326803618064}, 0.01971161135153643], 
         InsetBox["\<\"u7\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.5561442917133428}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.6189607850328535}, 0.01971161135153643], 
         InsetBox["\<\"u8\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.6386723963843899}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.7014888897039006}, 0.01971161135153643], 
         InsetBox["\<\"u9\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.721200501055437}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.7840169943749477}, 0.01971161135153643], 
         InsetBox["\<\"u10\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.8037286057264841}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.04126405233552356}, 
          0.01971161135153643], 
         InsetBox["\<\"y1\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.06097566368705999}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.12379215700657069}, 
          0.01971161135153643], 
         InsetBox["\<\"y2\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.14350376835810713}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.2063202616776178}, 
          0.01971161135153643], 
         InsetBox["\<\"y3\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.22603187302915423}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.28884836634866495}, 
          0.01971161135153643], 
         InsetBox["\<\"y4\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.3085599777002014}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.37137647101971205}, 
          0.01971161135153643], 
         InsetBox["\<\"y5\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.3910880823712485}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.4539045756907592}, 
          0.01971161135153643], 
         InsetBox["\<\"y6\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.47361618704229563}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.5364326803618064}, 
          0.01971161135153643], 
         InsetBox["\<\"y7\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.5561442917133428}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.6189607850328535}, 
          0.01971161135153643], 
         InsetBox["\<\"y8\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.6386723963843899}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.7014888897039006}, 
          0.01971161135153643], 
         InsetBox["\<\"y9\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.721200501055437}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.7840169943749477}, 
          0.01971161135153643], 
         InsetBox["\<\"y10\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.8037286057264841}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}}}],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FormatType->TraditionalForm,
  FrameTicks->None]], "Output",
 CellChangeTimes->{
  3.8293744740297337`*^9},ExpressionUUID->"a20cbf2f-dc6f-4e20-9afd-\
638f41e2258a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"HighlightGraph", "[", 
  RowBox[{
   RowBox[{"FromGraphToBipartiteInOut", "[", "g", "]"}], ",", 
   RowBox[{"FindIndependentEdgeSet", "[", 
    RowBox[{"FromGraphToBipartiteInOut", "[", "g", "]"}], "]"}], ",", 
   RowBox[{"GraphLayout", "\[Rule]", "\"\<BipartiteEmbedding\>\""}]}], 
  "]"}]], "Input",ExpressionUUID->"fb4b3bc8-0ee0-4b89-8f06-1688db1bf4f4"],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{
      "x1", " x3", " x5", " x9", " x10", "x2", "x3", " x1", " x2", " x6", 
       " x7", "x4", "x5", " x4", " x8", "x6", "x7", "x8", "x9", "x10", "u1", 
       "u2", "u3", "u4", "u5", "u6", "u7", "u8", "u9", "u10", "y1", "y2", 
       "y3", "y4", "y5", "y6", "y7", "y8", "y9", "y10"}, {{{1, 2}, {1, 3}, {1,
        4}, {1, 5}, {6, 2}, {7, 8}, {7, 9}, {7, 10}, {7, 11}, {12, 3}, {13, 
       8}, {13, 14}, {13, 15}, {16, 2}, {17, 2}, {18, 3}, {19, 8}, {20, 8}, {
       21, 8}, {22, 9}, {23, 2}, {24, 14}, {25, 3}, {26, 10}, {27, 11}, {28, 
       15}, {29, 4}, {30, 5}, {1, 31}, {6, 32}, {7, 33}, {12, 34}, {13, 35}, {
       16, 36}, {17, 37}, {18, 38}, {19, 39}, {20, 40}, {21, 31}, {22, 32}, {
       23, 33}, {24, 34}, {25, 35}, {26, 36}, {27, 37}, {28, 38}, {29, 39}, {
       30, 40}}, Null}, {
      EdgeWeight -> {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 
        2, 2, 2, 2, 2, 2}, GraphHighlight -> {
         DirectedEdge["x8", " x5"], 
         DirectedEdge["u6", "y6"], 
         DirectedEdge["x9", " x1"], 
         DirectedEdge["x3", " x6"], 
         DirectedEdge["x2", "y2"], 
         DirectedEdge["u9", "y9"], 
         DirectedEdge["u2", " x2"], 
         DirectedEdge["x6", " x3"], 
         DirectedEdge["x7", "y7"], 
         DirectedEdge["x4", "y4"], 
         DirectedEdge["x5", " x8"], 
         DirectedEdge["x10", "y10"], 
         DirectedEdge["u4", " x4"], 
         DirectedEdge["u8", "y8"], 
         DirectedEdge["u5", "y5"], 
         DirectedEdge["u7", " x7"], 
         DirectedEdge["u1", "y1"], 
         DirectedEdge["x1", " x9"], 
         DirectedEdge["u3", "y3"], 
         DirectedEdge["u10", " x10"]}, GraphLayout -> "BipartiteEmbedding", 
       VertexLabels -> {"Name"}}]]}, 
    TagBox[GraphicsGroupBox[{
       {Hue[0.6, 0.7, 0.5], Opacity[0.7], Arrowheads[0.029855907012080796`], 
        ArrowBox[{{0., -0.7840169943749477}, {
         1.6505620934209424`, -0.7840169943749477}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.7840169943749477}, {
         1.6505620934209424`, -0.7014888897039006}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.7840169943749477}, {
          1.6505620934209424`, -0.6189607850328535}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.7840169943749477}, {
         1.6505620934209424`, -0.5364326803618064}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.7840169943749477}, {1.6505620934209424`, 
         0.04126405233552356}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.7014888897039006}, {
         1.6505620934209424`, -0.7840169943749477}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.7014888897039006}, {1.6505620934209424`, 
          0.12379215700657069`}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.6189607850328535}, {
         1.6505620934209424`, -0.4539045756907592}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.6189607850328535}, {
         1.6505620934209424`, -0.37137647101971205`}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.6189607850328535}, {
          1.6505620934209424`, -0.28884836634866495`}}, 0.01971161135153643]},
         ArrowBox[{{0., -0.6189607850328535}, {
         1.6505620934209424`, -0.2063202616776178}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.6189607850328535}, {1.6505620934209424`, 
         0.2063202616776178}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.5364326803618064}, {
         1.6505620934209424`, -0.7014888897039006}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.5364326803618064}, {1.6505620934209424`, 
          0.28884836634866495`}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.4539045756907592}, {
         1.6505620934209424`, -0.4539045756907592}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.4539045756907592}, {
         1.6505620934209424`, -0.12379215700657069`}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.4539045756907592}, {
          1.6505620934209424`, -0.04126405233552356}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.4539045756907592}, {1.6505620934209424`, 
         0.37137647101971205`}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.37137647101971205`}, {
          1.6505620934209424`, -0.7840169943749477}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.37137647101971205`}, {1.6505620934209424`, 
         0.4539045756907592}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.28884836634866495`}, {
         1.6505620934209424`, -0.7840169943749477}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.28884836634866495`}, {1.6505620934209424`, 
          0.5364326803618064}}, 0.01971161135153643]}, 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.2063202616776178}, {
          1.6505620934209424`, -0.7014888897039006}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.2063202616776178}, {1.6505620934209424`, 
         0.6189607850328535}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.12379215700657069`}, {
          1.6505620934209424`, -0.4539045756907592}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.12379215700657069`}, {1.6505620934209424`, 
         0.7014888897039006}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.04126405233552356}, {
         1.6505620934209424`, -0.4539045756907592}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.04126405233552356}, {1.6505620934209424`, 
          0.7840169943749477}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.04126405233552356}, {
         1.6505620934209424`, -0.4539045756907592}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.04126405233552356}, {1.6505620934209424`, 
          0.04126405233552356}}, 0.01971161135153643]}, 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.12379215700657069`}, {
          1.6505620934209424`, -0.37137647101971205`}}, 0.01971161135153643]},
         ArrowBox[{{0., 0.12379215700657069`}, {1.6505620934209424`, 
         0.12379215700657069`}}, 0.01971161135153643], 
        ArrowBox[{{0., 0.2063202616776178}, {
         1.6505620934209424`, -0.7840169943749477}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.2063202616776178}, {1.6505620934209424`, 
          0.2063202616776178}}, 0.01971161135153643]}, 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.28884836634866495`}, {
          1.6505620934209424`, -0.12379215700657069`}}, 0.01971161135153643]},
         ArrowBox[{{0., 0.28884836634866495`}, {1.6505620934209424`, 
         0.28884836634866495`}}, 0.01971161135153643], 
        ArrowBox[{{0., 0.37137647101971205`}, {
         1.6505620934209424`, -0.7014888897039006}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.37137647101971205`}, {1.6505620934209424`, 
          0.37137647101971205`}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.4539045756907592}, {
         1.6505620934209424`, -0.28884836634866495`}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.4539045756907592}, {1.6505620934209424`, 
          0.4539045756907592}}, 0.01971161135153643]}, 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.5364326803618064}, {
          1.6505620934209424`, -0.2063202616776178}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.5364326803618064}, {1.6505620934209424`, 
         0.5364326803618064}}, 0.01971161135153643], 
        ArrowBox[{{0., 0.6189607850328535}, {
         1.6505620934209424`, -0.04126405233552356}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.6189607850328535}, {1.6505620934209424`, 
          0.6189607850328535}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.7014888897039006}, {
         1.6505620934209424`, -0.6189607850328535}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.7014888897039006}, {1.6505620934209424`, 
          0.7014888897039006}}, 0.01971161135153643]}, 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.7840169943749477}, {
          1.6505620934209424`, -0.5364326803618064}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.7840169943749477}, {1.6505620934209424`, 
         0.7840169943749477}}, 0.01971161135153643]}, 
       {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[
        0.7]}], {DiskBox[{0., -0.7840169943749477}, 0.01971161135153643], 
         InsetBox["\<\"x1\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.7643053830234112}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.7840169943749477}, 
          0.01971161135153643], 
         InsetBox["\<\" x3\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.7643053830234112}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.7014888897039006}, 
          0.01971161135153643], 
         InsetBox["\<\" x5\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.6817772783523641}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.6189607850328535}, 
          0.01971161135153643], 
         InsetBox["\<\" x9\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.599249173681317}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.5364326803618064}, 
          0.01971161135153643], 
         InsetBox["\<\" x10\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.5167210690102699}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.7014888897039006}, 0.01971161135153643], 
         InsetBox["\<\"x2\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.6817772783523641}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.6189607850328535}, 0.01971161135153643], 
         InsetBox["\<\"x3\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.599249173681317}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.4539045756907592}, 
          0.01971161135153643], 
         InsetBox["\<\" x1\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.4341929643392228}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.37137647101971205}, 
          0.01971161135153643], 
         InsetBox["\<\" x2\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.3516648596681756}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.28884836634866495}, 
          0.01971161135153643], 
         InsetBox["\<\" x6\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.2691367549971285}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.2063202616776178}, 
          0.01971161135153643], 
         InsetBox["\<\" x7\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.18660865032608137}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.5364326803618064}, 0.01971161135153643], 
         InsetBox["\<\"x4\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.5167210690102699}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.4539045756907592}, 0.01971161135153643], 
         InsetBox["\<\"x5\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.4341929643392228}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.12379215700657069}, 
          0.01971161135153643], 
         InsetBox["\<\" x4\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.10408054565503426}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.04126405233552356}, 
          0.01971161135153643], 
         InsetBox["\<\" x8\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.021552440983987134}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.37137647101971205}, 0.01971161135153643], 
         InsetBox["\<\"x6\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.3516648596681756}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.28884836634866495}, 0.01971161135153643], 
         InsetBox["\<\"x7\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.2691367549971285}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.2063202616776178}, 0.01971161135153643], 
         InsetBox["\<\"x8\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.18660865032608137}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.12379215700657069}, 0.01971161135153643], 
         InsetBox["\<\"x9\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.10408054565503426}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.04126405233552356}, 0.01971161135153643], 
         InsetBox["\<\"x10\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.021552440983987134}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.04126405233552356}, 0.01971161135153643], 
         InsetBox["\<\"u1\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.06097566368705999}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.12379215700657069}, 0.01971161135153643], 
         InsetBox["\<\"u2\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.14350376835810713}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.2063202616776178}, 0.01971161135153643], 
         InsetBox["\<\"u3\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.22603187302915423}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.28884836634866495}, 0.01971161135153643], 
         InsetBox["\<\"u4\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.3085599777002014}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.37137647101971205}, 0.01971161135153643], 
         InsetBox["\<\"u5\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.3910880823712485}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.4539045756907592}, 0.01971161135153643], 
         InsetBox["\<\"u6\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.47361618704229563}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.5364326803618064}, 0.01971161135153643], 
         InsetBox["\<\"u7\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.5561442917133428}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.6189607850328535}, 0.01971161135153643], 
         InsetBox["\<\"u8\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.6386723963843899}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.7014888897039006}, 0.01971161135153643], 
         InsetBox["\<\"u9\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.721200501055437}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.7840169943749477}, 0.01971161135153643], 
         InsetBox["\<\"u10\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.8037286057264841}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.04126405233552356}, 
          0.01971161135153643], 
         InsetBox["\<\"y1\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.06097566368705999}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.12379215700657069}, 
          0.01971161135153643], 
         InsetBox["\<\"y2\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.14350376835810713}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.2063202616776178}, 
          0.01971161135153643], 
         InsetBox["\<\"y3\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.22603187302915423}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.28884836634866495}, 
          0.01971161135153643], 
         InsetBox["\<\"y4\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.3085599777002014}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.37137647101971205}, 
          0.01971161135153643], 
         InsetBox["\<\"y5\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.3910880823712485}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.4539045756907592}, 
          0.01971161135153643], 
         InsetBox["\<\"y6\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.47361618704229563}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.5364326803618064}, 
          0.01971161135153643], 
         InsetBox["\<\"y7\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.5561442917133428}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.6189607850328535}, 
          0.01971161135153643], 
         InsetBox["\<\"y8\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.6386723963843899}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.7014888897039006}, 
          0.01971161135153643], 
         InsetBox["\<\"y9\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.721200501055437}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.7840169943749477}, 
          0.01971161135153643], 
         InsetBox["\<\"y10\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.8037286057264841}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}}}],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FormatType->TraditionalForm,
  FrameTicks->None]], "Output",
 CellChangeTimes->{
  3.829374489096682*^9},ImageCache->GraphicsData["CompressedBitmap", "\<\
eJzUfQd4VcX2/ZWQQBKagNgFQUVBI70IggFBRJGOlIDSQhEkipRQFUVBakAx
1NACCEqXIoQSEUEJAiJRCIolPgXlYUSiRt/+z9ozc+6cc8+5uQF+733/fB+g
uW3uzFp7r71nz55WPV/o33dwzxcG9O5Z4ZHneyb0H9B7aIXmQ54Xvwq7xucr
dET8WVrBh/8mn0//5f85hr/M3/x/94uy/E845eXl0Y8//kgnT57kf8X/G09+
Jcizqsk3Ks3/RFJmZia99tpr1KFDB2rx6KPU/JEW/C/+H78Xjxtv/GIBXhUj
P6gU/1Oc/vrrL5oxY4Z4Wktq0KgJ1azbiBo3b0Mt2nTjf/H/+D0ex/PE840P
HnMF73KvHEhJ/ieC32L48OHUpGlzqtOgKQ0c9gq9tTItjJZtPiQeFv/Jv8JD
eAqeipdYP335fcLo99w/9a/UbF7ue1c1B1iYx41HGzdrTTNTNhfhFxfGf/Kv
8BCe4hhQOH12KpuGTX2XUtbtpwNHv6Zff8tVsx/qe6qBlFAvwipjIjFc8cxI
40X4FR7CU6yfPgodaQe+oB6Ji6nb8EXUZ9xy6vdiKr381nv07o5PKfP0vyjv
73980QX6jCrmwMIYYlhlMZfijfCKMJ5X/E485nMOqRid/u4ctR38FtXv+jo9
IP7EPj2dHhvwJnV8bj49NWoxDZ64ipKW7aId+09Q9k8Xiob4QWpcxdWXAd9A
AaBQrHW0+jJYdvwKD+EpjtGF8eRgZOKPeDr+LkoN46ZS8z6zqM3gZOo6bCEN
ff0dXtmDx76m337/I6xAH3mPOc4wtgWgq2CM+J18BdgTU/MBSlr8HqVuPkj0
9tZD/Fdv/CVeNGXR+/Rg96k8vEj1t5zGN8Q0zqORM9bRu+8fpi++/pG+z/7B
8QFhkqbid+LDfY7xwD6xCWnTTT39Bmb0XWVupP7la9CIqk1ocM3W1KtRD+rc
YjA90WEMNXtqCjXrnUSP9J1Fj/abTY+L1XzimTk8X+2HzOUhPTl0AXURcxc3
YhH1GJlCT49eQr3HLKO+ApSMSvz1OP4S9Okzbhn1GrOUnh61hLqPSKEmPWcI
wOF7hvNiNOuTRB0Gvk616jUyBhrGA8XgxZdwfq/AeS7D03Bz2fLU4v421K7m
k9Tj3sdp8B2Nacwt1en16+6gecXL0ZJiZWhpmZso+bYqNP2e+jSxVgsa3bgz
Pd+yH/XvNJye6jmROj7zhhiY+KbCJ3RImEddXljIpOs9dhn1f2mFQPTbNHTK
u5Q4Yz2Nnb2RMTZpwTaatngnzU7dTclvp9PCdz+kZRsP0KotnzA5N+0+Rtv2
fU7MYPxVCX/5bqOdH2XS1g8+p43iCVjjleIFSzcc4Dd4a1U6zVq+S7zxDnpt
/jbxQVto7KyNNGL6Onp+8jv07Ktv84Awt93FInR+YQG1T5jLi9T+2bfo6R4T
+Au17vwSNWk3nh7q8BI92GkiPdB5UlGe/iLUqMdUatn/DbGGi2nOyr2Utu+w
mPIQ4eXBkdLMkRp1HqT7qtSkwf1fox7dXqQu7UZQp5YJ1L5pf2rboCe1qd2V
2tTqQh2qd6TeVR6h5ys+QC/edB/NLF2eFkWVprWFCheiTUJlRNH66OK0+qby
tPzuajS/1kOU1LgNvfZoDxrfaQiN7DWeEobMpAFjFpdkuJXlKcHUDJ+6ltdn
4tytvDZvrNhDC97Zx+uyZvth2rTnmLBKmbT30Enm/tEvvqMvz/xEZ7J/oR/P
/Ur/zrlEuX9I/8R/i/f+z3/+Q5fE787/+jv969wF+vr7n5mWR8Rr8R57PzlJ
28U6b9h1lNZsyxCfdZDmi8+cvXw3TU3ZQa/MlUsIbyJwdB0POcwa7qL6zYQz
w7cuRRt919A7YeG0KiKKlkWWpIXFrqP5pW6k5OsqUPLNlWnhndVoafUGtKrB
w7Qy9jFa9nBralglJjR75W3vb2QzDHvVq/9z9OdfeXAq9MPZC/Rp5reM4SUb
PmKT9dzLqdTruTn09MAZ1KPXa9QNq9x+JD35WAJ1fHgAxdXvRv3vaU4jyteh
idffTW+UupmWFS1OG665RvALX7IkvVeyFG27szJtq9eQtj3elrbE9aGNg0fS
u2NepxWT59GiOWvojcXbef2wjnruxIT55OSVYT7id3gM84t5fkPwcD6v9UFe
B9Dr/Q9P8PrItf6e1w3rh3VUay392zFjsaFFzl/AYv9KX2f/zF4WEwEZwIst
3hSLvXrbIebtvDUfsBHABL2cvIXGJG2gF6YYi12Ghry2mkZMW0vj3tgksSnG
+6bgHii/fJMY7/YMthfwmOmHTtHHn52hY19+T1+K8X7zwy/00885dOG3S/TH
n3k+6ayK0MoN+6l7vS4UF/MEdRH2r1O19swsYQfFugqeiRnvEBtPY0cn04jE
saG43qBapYilIypUrkGdnpnCXxIzLBAjPktOICYPk/bRka94kuat/oCtJVYM
TiJ+/HLqk7jIhqIecS/SM08Op8RW/Whio/Y0U1jpedfeTKvCIyMZNDfSttKl
aXfVqvRRs2b0aY8edGLkSDqdlERnVqykb97fRd9mHKOvv/6ByQxSYwIxkSA7
SI8JxkTDGMAoYAEYXMJYgIVigVzBhfXEuoLMABfWG+uOrwbSAw/ABYxB5lc/
8lcHbmAsLmlwrXaA65cLF5ldX32vwfUdz9eej79ktq1PO8qCAazD/MEhTFm0
g+dxtAAX1IvQWE5wjX9jM706bytNF8R5c+UeBlfqpo/pHeFjNsPwCb/zQUYW
fQJwncymk2KuGFy/5EDe8jJer4zEhZxcatbxJWotYFScwVSU2jXsSf36Taa9
Ypj4KvsPZlDDRk1DU5tB9Xi4TTuPGP0iTV6w3VdIWUoTZlEK/OAnpg7zj6kC
/zA1AyasEB+C10VbUBswfB6NSnyLpo6YSXOHTKCVvRJoU5snaWfdB2jHbbfR
5vBw8b7S72y79toAnH0lcJa9Zg39sm8f/f7VV/T3H3+EGysqOMncxDRiOsFZ
cBfTjOkGp8FtLAOWA8sC7mOZsFywCVg+sYx+BK7ibw1LgkXH4uMbwtIAFPjG
jEAxKwANwAMLhRkBqAAuzJAAm0TgBDXef/75D128JBEolDkr+RPiRYdPfEsf
Hf2Kdh/8UkiT4wKBRxQCD9BcoW2g5l9f+L6BwHdp0CuryhruN0GgcKRQKePF
14FymbFkJ8uLRWsFCjd/zJLovb2fCfXzhZiWUzw9CLJOfXOWvv3hvInCqgqE
x0/9gAWl5k2eURYtmtrW685eZ/7K3UxyjBIziOl66eXXTGz5ggdmIYWwkUFD
2M+zfvBEagmFVLhSWASsD9YLFgTrKZ4rHsXrivHrYGVSVqTRutQttHvxGsp4
cx5lvvwKHXvmGfqkbVv6oF49jdYAsD78sATriBESrKtXm2CVYWsZduyYYcw0
Zhz8hx2QQD3F9gF2AiuFFZNA3cMriRWFfQFQEwxbKUDA5mi0QipAAnMFswXw
YHlgzmDWAC6ADOYOSAX4AEKA0UJqVxOpv/9BP/9bIfXbszzdGZ9/w3Df/fGX
LKLX7fyUFffi9R/RXPGhQOrkhdtpwpz3aNTM9fS8GNwzL680kfrcpDUcX734
5mZ6bZ5A6tI01t0ICBmpgqhAKnT7vsNZdOj4N/TZSSD1J/ruX+fp7PnfKOci
kPr3gwpDeRcv0k/bttFxAY7U2+6iSTdVgdotqtwwhG/79qOo18hFzA8xawoz
RXmA3//07yvLdlxJXqiwAqoCM3tp/DHBXEY9R3t3uDz27sIgwUUKlynGiC9U
ihkLwwWDBVcJE43l/unr7+jXY8d4nr5dtIhOTpwowd2uHYN7Z/nyAeCuUoXB
fbh7dwb36ZkzLXBfPH0a4L7JAW4sDhYJZgXmBYuHRYTZwaJicbHIMEswT1h8
gADLAvMlwKHAXRa4YUsHcANPwBXwBYsIvAF3sJSwmLuVGYYlhUUFXjW4YXHh
KfBT3cD3b7/n0jkxXiz/6W/PSXyL1+//9DTtEmTZkn5c4PsIrXzvEwYnosyZ
YryTBclemrOZo9HnJ69xwzcewlMmzdf43kspa/fTCvFWawW/t6RLfH94+DRT
CqY2Swz5ux//zUP6TVDvr7y/W/Fooyjvt9943eAOsVabCxfGMtGKiGiaXO4u
Gli5CXVr2COc8R5BTwi8N6/fk5o8Npweinud2j2bDG8cxoO8lgcIA6R/riAP
WZDMa9EQgH6D1he/+vUFQAwwj1H6IsLQiQA/SAAygBQgxyUVQGLJ/zx3zg/6
lBQG/WeDBknQ16+vQW/pj62lSjHq9zdtGoj6Dz7QqL/DQv3fbIqwZFg6mCiY
KiwplhZLDNRjyVcoFMHUARKABkwgTKET9TBKsJ6AENDGqBfWFa8HGmF1YX2B
UqAVn4dpBYqBZlhtWG+N+kgb6v+wxgvIAXpyvFk8XkAT40VaBJAFdDFeLJlG
PRA0cIIN9SCCRj2eCqKAMDzkLZ8wkUAoDBkfBaLpIftRnwt/3Z1HW8IT9RvF
n4XRZWn8bdWpf5Oe1PXJMRzL9B2zhHo37lGIWVCEWtbtQU0a9KX6Dw2mWi1G
Ut2OE6lF/CzqOXqJ0qhhrJoQkEpxHDqW1X5AsB2MYiHA/RaHSEEY4xcp7xsi
pYgSKTv4MTwHggavQQJaDj1aQv7nnxnyZ7dvl5B/9dX8IX/PPX7IC8/GkH/7
bQn5rCz6Ozc3RkFeWCV3CIn1NCHEhtOA0EwHhAReLMgLKHnjZ60dP9Jq+vFj
t5q5mIIzBtrBzrMOdsInmeyET8qHnTA8Gu1wsJqg0i35CQq3ZBIUbslO0LM2
gorFG6wxFIh2n0zHcWaOZpetQGMbd6K+Xf1oB54AYZhAEOu5ai3pwQcHUu0m
z1GNpkOpZvPhVLfdBGrcYxp1eWFBuEI9IlaMRILPG8Jqe61yCEi+3VQo3wdT
KEVsCgUCVSsUETIpJ2Eg+bPPJJIXL/YjuX17ieQKFWhzRIQ7kuPiJJKFvwKS
f05P10iup5AM0gExWAubBBBrZZcAn9okgJS4hgR4/R0Lyfhq2v8DPjb/vy64
/2d9a/h/MQXbDCTr0MFUVwgdbOpKhQ6WukLoYKgrYMWBZC2wED2YAgvRg01g
HXQILCN6gMD6+59/xppI3rqVnecHdesyksN4jcJpZVRJmv1gKxrz9GjqMygJ
KFZSvDhjAs4eiRzxdpwhHJ+0npo+0EeiudkwqtPmRd7zaj1oDnY+fBrSEAOY
FYxARgUqcR4ctneZekN8rKU3ljv1RhGpN8Qsab2B2VB6Q+0AKtj+8ksgbAcP
Ztjue+CBQNiWLClh26QJw/bzYcPcYNvEgC1Mh5VDUJEZ5xCMyAwLFywyEwsf
AFtYO04gGGGZlUBQYRmwZg/LztrCMjEFM11gGyzifUcFBTriRWrGjHhhr4TG
sMPWK+j9yBb0cnrGCHqRnjGCXgxxWgiw3SSkx9si9Huz3ygaOfItA7aFeThw
1shH/uvchXAVk/64bz91rtmR6jwxjup3nsT7e0+NWhxhAXYVIw5PbiQBWzUE
wFaxKYYLUjGID0bWHYMYNtWvGDBHUAyYE60YkJqCYijhBtj332fAnhIiB4A9
JASPF2B33X23BGy3bn7ArlolAXvqFAD7uEIBqOyW9OK0qy3pddSW9MKS2pNe
75gosCe9NtuSXpx6NZJeMvXqT3oBiGbSS8xCf0UvYJbTiT/b04kfO9KJyGib
6URktB3pRBu9rHwiZ7T9+cSlKkuj84mwQGY+ERbGyCdifAtDACy0clq9B2jt
4FE067VF9Pyrq3xhCrCYNSTTsSsjFqaoUr85J07QW4u2yH3NoQuKKKAiHgEi
8aTGEqj3hQDU+x2CAB+G74gPxpaRUxBghbHimAuQVguC0g6g5hw/LoG6ZIkE
6rPP+oF6++12oJYoEQjU6dMlUPfu1UDtZJgrvflk3x/41rY/gK9h7g/IzSf/
/gCmQaDTbfMp6P6AQJa5P2BtPimQiuH5HlIo1e4Rm6aMUrXvglm277sctu+7
6E09te/i39STKDU39cx9F5iXoPsu39v2XbBa7+aL0ghGKbTu/qEjae2cFTRt
wVbgTQMVI8FWohIEMqIKYyZnCbEmvJQvwkApJg3PkJNkITAYSmup52Autf/H
J+J749Nd/b9YctgqQAIQgf8vx+8TRX+ePy8RumNHIEIbNNAIDQBobKwE6Asv
MEC/X7nSBOjTToD+at8dxSoE3R1dbt8dxSq7ANTauVe7owCNfXc00747qjew
1O4oAHqDA6DwUdjdx84vdoB5x/7QSV4A7BDLHfsDDDLsIE/VG4P+HXsr2W0C
FM+x7zofsO86H7LvOmMM5q7zLhOdW7ZwrPBBnTqB6BRxxucjRtLBFetozeaP
IOrDDL+PISi/X1K9I+AP3YWHATfhn6x0A34Ha4JnxkqUVg8BpfUcTh9fSjt9
jMDp9OE1YZxgrOBltdO/0UTp55/7UTppkkRpx46M0rSKFQNQWrkyozSja1eJ
0mnTLJT+JkJGgdKBCqW6YEMvP2wDuGUtvyrY8C//QdvymwUbFkrL+etL1LYw
EDBJTBi+7NSU92n6kjTWrDP4352sBaYv3kFTxR+AH5r2FfE6vDagHkSCy6t8
RZLAX74CEpjlKyCBUb7iO5wvuIpY4MpMTKTv3ttKBw99wREiZLmHo75WKUuI
JoweMMGwQfVdB78IM0CGmBJPlkGDr2YIIHtQPQdLB7bgQ7FEBXHYQuL5bnUB
2XdLlzLIjg8ZIkHWsKETZFuKF5cge+ihQJDt2SNBdunSMH73clwlpB0gBOXH
n30tAupMNn3LNx8UEU86owBLOVpEO89NXsOKsefopVxdhpQ4aiab9JxBDz01
nYsBG3SbUpqLtMrhP/lXeKhprxlckIcaLxQv4i2QsQLTYE3xEchWzV+zj+P7
jWIIuw9+QYfEGgD7RvHIV/kCo6gNGAgh//Xdj5wqALZdfCOMmzC2UiYV5QQC
GKFXGMhHcgM/wgzonVJMBRYYL2oqMVI7BIw0MdwlPhhWFoMAdfN1l0elu8RW
YwWFkb/+/W/GyLmdOyVGJk/OFyN33eXHyNChEiMrVkiMfPklMNLViJR10GGr
9TgavNbDGXRgu7A0f6so6jPWX1iJP7I6cRX70AQRQaNIULymEKduo/jlyBWC
yTBgz7yykgaIlzyVuNgs4CztKH3xBwpSgulAwZJgKlCwJJgKFLQEgyc+eBlY
+ysnh9NQSFG5eDrAQBCurLJDTk+HkYsR6WpeqBX90P5PT1dX4yHKpbPZZ+jM
mTOUnX2e8sRvpe9UsMBTzlCiPPFAvrgUyhG/LWQ9dp5S4tRjvkTxTJ25D6PM
1Hj+fevkjJC2VZsbfhWGBB4Kj0FMBPrVd5VfPWD5VQALfrWSCWcRRTGcly3z
w7lTJwnnSpXovSJFXOHcpQvDOWvqVIbzud27NZwbusDZVjhyxF44giUxC0eQ
9DELR4QRsSQV7JhVNTIveNUIkj5m1QiSPmbtUmk1ThTk6KyPFUFbWR8ZQVtZ
n032rI8ZQQtq+ZwVOaOdFTmr7RU5VsrHoyIHxNhgEOPH997jqDC9dm2DGJFM
DESUmhh4LlwO/Go+Xrqc9tJHAr20eItwhVVkiDEb+L9K+eK+qBvu+ScrLZli
feINcTxI/B0TR6kHZBwkS4ZVar4wZadNVq/2UcKarELq11lrEqxfT0jL1uM7
lhwnuZSUIb5M/lx6LIh8gId0kw9AJ1YO6NXyobLm0oULgVxKSGAuffjggwFc
KlaMufRh48bMpePPP+/GpdsMLvnz/mdteX+ztAV5f3sC9X1naYudS6quxZ/3
T7fy/mZdC/L+troW4baNuhbfA2qcbjVDOvGvM6hm4h9cshL/KoMKfsMx51cz
pLP+On1qZf1V+tSZ9QeX5ubLpSg/l0aN4swNnosf7HN4CZvt8uiF+IjrFZ08
hE0RBVcYGfXjuyMY4COcgJcsWpNQSDNIRGZx8XEUI/5P/y5xwxnr3aNNVqEe
Mo+2Jsaod4ylNNRVnE8DJ/l3MQkb4OLcaBVKQUQbN8UlZieY4sJCwhFg4bBg
UFxVnLRKS2NaZb3+uqTVk08G0upWSas775S06tzZT6vUVEmrL74ArZhPekfY
LKXBTq2tlGaLo5TGviMMDtn4ZO4Im3U0eB/7PlpWsDoaXy+DT9aWsN5IOxm8
TElvCVsbaTPsfNJlSv794O22/WD/LtrntjIlvR9s8uklzSchxELm08WLjEzE
3bAlGLsYpyneEMwq8XZjcPEmt3yvCxXWQswdozj9u/hUOqtPhOVmUZLlrlrT
gRxSFRG+itqj5WVSgn5pXCJNiNMfl0CZeRThwpioEBjTIUDUfWeJOsyDU9Rh
uWD2YO6wLFrUyST3bXTpl/N05uNP6dja92jfm4to29hJtKb/C5TSvhe9GduG
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
F2l1yw60sUKlgC2Spk157w2Lh5D9RoerRqHsmKQNpque6XfVsq96tB2AGzYw
AI+OGUdTugyhzi2HUIcm/ahrzQ40s3R5YZxlSQbmFIfNML9fC7QppGn4oCYC
RzHViW4mmPjaWiBCeWtTUi7I4ufXUNJEU1LG1W8oqVGWeybN0Is+Sj123mos
eaUo+9vhe/Fc7Xtn2nxvMfa9OFD05oo9tGT9R7R6awat23GEz9l7IqkYIwnH
eHEiE2150I0RfULQpfHk8Sw6uWQ5HR34DO/0btJtpVRSyIEwvecJN4sSR5Q2
ervZJ5Ue8AiP5TVpQJ5AD5CHPPvHbdvKO4/Cw4srcbj9+uvZCsLEwSqyiRMg
xUsAWgE833VqJdFaAOTUU41pER+lWyQgv4tUIgztP3l5ZQqAlXxaMxayQJlL
ZzKPUXpaOlSgZfnObrVE4+T0s//1Jo3i7/MHKN4IerYKX33tVQIxf9I1ys6h
tg53U0KmwW+oljV85xjODDfqMY0e6PZ6OJ/1Kin+dyp3S8VmD8574WkI370Q
i3YL6JPo724mQ3mU32E7GSV3ztwmKogtGOfm+m42PbX4Dh6eGgJT8LKzWnm3
AFo4Sr3E7GGnTOFDEJaHLcbV8fCwCKAR2QPscM5w0kAynDaQDWFpaU0D9EIC
MOiFJGDQC+Rq0OvCKHSiQK2fjohwAEJ4H/0w+mSpQw78ttif/C0zs+QVgM+7
d2IJE3zi4Qx/76jWE+jAmfNs6bOPbTXAGIu+N/+T9okWOc6mW3LY1zqFTwTr
TqZXSo6LBi8QKUGcQh/gmA/MEzQDIiqIWGG15db/TdR77FLuXIo/OMqPA89I
oKOLaYeEudy9tLt4rKfcGOWPhQwBeP0yJEvLEP6+LjwJoMkrr3BhtEkT1hOn
/+WlJ0B0oYG7Kj3hFp8je44fZPxxkAMHiHbdeafPis6VmsHREhGdF1d2WUyx
nS8i4GK+iABM8UUdtSguCSPiNSaMiN9MwhzanEajpr5jOSDsHyJgtVqKnjun
l9enK1FxJAqb1Eg9RF8RKPNvbljYAGUOJbcWiJJYTdyQZWE12iRIwXoZhtzE
TfvJnANaV/O9JfoA/ZVS4UcHFXAO0kkFCBxFBZ1xhazAPiva3aL1LdrgossO
Ou4Y7kDfdwe4IibDSIBN7FVqKVVYx3gj5tGLHZ+l2bWb0UpbjKdKq5s0tVFB
lwqawkcMy2PLIU7h10345Px0jttpo3Pwtmuv9dnSAN278+kXwdObTAocOiQp
MHeupEB8vI0CESo/sbZQYRpZvja1qdmZY8NeVVpQ6q13MC2QdNO0QJoDtEBy
TvgRrSTYIqjDcIUVC9BDHxU8wntZLSAK0j6wWIG6aB6Y3FoSIpziWsf4JVZs
PK3JyNY9Gq5iG8HANmu5mWuodWyMzKPk+vXb+a3WcJIyzuuenldnk1cSAj1s
JCGyJCE2FYgQKDkFIdCaTd2ldJ0yPL8JyH22YDGldelBm0QY6Qd7MU62Lap4
L01p0pFG9hqHDDGPEp+IEn+MAmkojEzIpXIByilgVwM7cko5dVeT7FROr4q4
FleT2KRSYSmVRoxg0v3n77/1PXi5P/wgKbBpE1Ng/TPDKb7DMOokgtMnRXA6
sUIN2nDNNVGKvtvLlbMh/qNmzayDUagzRM8L8ZZWc+qr0K0v2rUb5ZkN0t6r
1nyUl5tLubl5SvWH3KOvmAXBdItIqZm5FjKzN5ia/oarhMwjTmR++T0jE2G9
RObe/JH5kYHMbxmZ6gZKvY2ElCgMHk4vYPX9wl2eWsfBB5jh73fuolMnv7N2
fFF8oHIwOgWjWwViYBDDGCzOo1z8/Q9bUwMIGdQGj7YLGYQaSsg8pbw9bD3S
1gNeSuVLevp2TqTk+x4wNQsUE46PXczK0lUHSBeZTVhV5Ughbc8FmLF9rMGM
HTu2561a8Q4I7Hm4QitaS2mDHKnNsuArbD8Kef75669CIYKorJqB3EyduZtA
QnFIjVvAnijRlhw5S0nW7QNxtOFYNuXm5dLZzDRKsH6fQFl5pBIHV6uOOYqL
bpywRE0eVh8Bpwcs0Y8SsETGxAWWt+cLy3A/LCdO5BMXUAf6GkM35QFgOZM4
GCE2UDBqSGN8E7R+xg9OQqBSGWdmDIWBhkBaYQhg9lRrsPeDozRw4FS+NKp9
vTgae0s1lgGYWygKHERTisKne+54lLIUV18+91//8iN03jzIAmGrZN4PthX1
MuePHg0BKFYnxly9OxZDicmpYZSaysXNKSmUuvUYF8U42nsFtl+y9/LR8Wdu
1gara1i43qg44K890H27rhR221xghy1wDTv0ycSioh2+B+zQRBiwQzNMwA5t
qRXsKl8m7MqokWOLBBl7YANF0MAJCvOwRSI3NaK5fradqqlt3ieJuyfhBGgX
EUbiwgzptXlnwqfBhabBH06YTEMefppPuUBT9q/clJYWLcli0fDVPt34x6N6
pbRaMJR2a5NWXH+1wvKszdYWLSi2Vm3PRdet4mB3JsfYF93nm0xq2XWg5N0q
LppzGxVuv5eeHDSVj2Ujo+rRKsJKtKF7WOqEBIqNiRFhW4z4O4ziEpIoIzuX
n1H+KmHtHYU1zCSwhh6tjLU9+WMteUsA1tB0lbEmL0W/zwtrZgDkgjW5LVmW
b8g6JWYHLhR5ZtT1xT49nU+w65PszfvM4ktWeo5eapXN4tyXds34Nso1d1Er
xomBtDQ+6rrlzrv5Kkl9XWTXau1ocbN22tH69PFYZw3Kh4dPKz8Xxo0nNM6K
qNIzxDIImZAEhqhA8Q8akurifK+egrqNnB9/eXQgZQIlJCYicp8wAUmlxESa
kJzGu1352rLrGNYVS91AQ2+sQi8J+TqiahPq1agHtek0lismkeR5Ul0RNeiV
lQEtTYAV4BTnXjVO77hK+Fvsgj+UNwJ/6Ats4m/ghED8LXfB3/cSf8LL1DTx
9/bbfBIIm5AB+Gve3Ia/CsqXuLrHopZ73CM+EVliZItxFgTed9TM9bp6AYVz
GDsEmsP5qj6g0fTn+fOcMsW9PVtLcRMhmlamIh8UbVu/B3Vt8wLNnziPcs7+
7NPNjDzKSDQaYSQ1GgspTMKVIv5BESvSXmhbgdp6XH1SxBM6BW9pV5a9crVa
DemmMuXpCcWpjtU70OA7G9PEG+6ht669hWbffDeNvq8p9XywBz3SOpGT9OiL
AnehS3dVprGQWnDdagdpcMbltgw3XN5ylWD5hgFLtK/WsMShOYalsHtYWqQb
HbDE7RiAJdrNO2GJtxNTXr8gsHz1VT73BljqGknEwziHhCjXiIexJ4zNC+VZ
dUcM9L2EwwZS4bCxx4ETS2ZNA+gFysPkwy1Bcvz0c05z9YHwzbhRCm0YhQPV
Z+VRHjCoQWfq+uQY6vnsbJoi3lV8ksapLCrJtBWVCNWgN2FRaQh5h8OcwOyf
v/xiZVtCiw3y7bd3E4clVarVo9jHu9P0N9fT0Odn8fnZji0GM7+c8FwUXZpW
RxajeRWq0qt1WtJzLftRl+4vc4NAXBTQUvz7mKoyRz9INAzsPWZpRIgwRZMx
AdOrleKcFADT7wNgCjx6wBQPA6Z4OmCKlxswbRwCTNEP0gum+QTAsJq/XLio
dz6wbQDkwt4CxThYh205XFFuht3w7W8oBcW+HVsOIuxuoD/VcO5plSrpWhoE
0HuaPUKzX3id4kcsMDcLfLUVYD0KUap64qvgnf0qWqkeNA/u9MwUy4JjneEh
QMFRr62gp/pNZaR2evRZaieQ6kTpBt81tDa6OC2qdB9Nf/AJLiIaPHgGt/7G
3RXolIztTeiieJUSxlZn77HLcOtBpAOx2JXUiEU9ERCLsg4gVoSAxa4SYscY
iAXUGLGfaMQedEdspDtiD0nEAvji7XzNLxOuFU1nf/QrPq3riIVhMmE+xUTo
IA/gRuYTZ30d/t/nKgCEoMGcagFQXX2qJQA6dYIACFP5l21lynBLBWygBVb6
8cFfSw9wAcyegAKY+4Lh8LI6EUbY0u6vTXqdSSgQJL10OcYxqo7wgxXWeAZn
cVjLxHTnet0C8AxEbSheklZWqUGzY9syphMSZuoiYtyvOETM6RiBV6QD4bFw
HAP7LUZnT2d7Pg1t7CgC2thSkdD+FSta+CpBO8EBbTh9QBsiAJiFKPCANkAi
oX3AgPZ3FrQfN6G9ahWfa8VZMie0cfTZgvYff6gSSykYcBjdSzB8xwn0O10F
w/GgggEjho/HaIUGu9sQDLjGB7eHWDn3CC76QZsZ6GyUTgMr4p31ATdV48Dv
ocHtrLFBjlSAP0bNCCp7BiQkUoMHm1zNfolRnv0S8YM0tQ35YSbyVcFq8QAG
YPgmC7o/OoiG3N9SMaAMGKAEu5B/pa6lDTXrUWqbOJrZdxQNHTpLecHizHN9
AG/VFtzW8RkXoiIJiLXA0GBysD74XH/LyuLMCeQgwAlsKzInBIB3rd9Fa9vH
0bLIkvRuWHiBwd9HgR+BlxP8CNAAfgRsAL9AYAD4hUMHlGDGnOBvVwDwY7sF
54VN8MNSnwgiQw6yDNFH4VmGCD7AE7AMEd7AVYbM8ssQjFjLEN0giGXIzp3c
i8SSISqP36wZt825mGUdTYHvWfFeQBmDFiay5uaws+ZGkiCS6Y1vh2zv3Lf3
usHa93/f7VGfGTPY4XOjh77v2EGPQmpyNUN6dR1Lwx/tTZPvqmuxQ9uRraXL
0M6GjWlrj3haPWoyzZ7OLSOkcSole4q4HBtEUSyaz2Gt8MmSLBmSLPAfkixF
VfK81/Nvcaq7Q42O1OPex2lA1Ufo5e7DaPnKncwZ9iMCWPAjVp1/cJp0NmmS
7UKTVEkTvMagCTSIpgmmCzSB9gVNIChAk86XSRN9aCqI/MGuL3Z7hbOs7yZ/
BIMAP7BJEMySP7A1GPV8Q/6A1JA/OlvP8mfpUrv8KWzJH/QI+uvXXwsrHqCe
3kUJaZpgXWHc9MM48yQ+TAqhMjxWeFm9MFhuZLMvB+yX0aGyaIj8iHDnh25J
D370GzSDxvUaS7NbdKVlt95JG33XyBqKorStbFna//DDdPDZ52jfzGR6b/V2
69CiWFa9NtiycjmvyBl5fekh5obpIgJXSZcTPOPYTDLoonlSCMG0+C5t6nSj
Lh0Sqc/IhT7dPQVPG81uZwe7HcAFFEKwBwrhtLsA4H0hUOhxTaELkkLY3rgc
Cu2WFEKmAxS68NslXw9FIYCyIBS60yGzIJYCZNZRLbOaOmQWmIVXgWWvq40U
vUzwA1BF8I2YACWzjCuLC/NN4QFaqzBrLbTWghYUWitcYUtJLmddqaYQ9BQ+
TD+MDSUxPfcq7GLMmGwhP3y6KQXqAFFz4Zc+V60Tp955y48y+qouB2V0/dWg
sYvp1TFv0cJnxtD6Fm1o63Xl1LZ3FPMFESGm6qsVqyhzf0bAeUnh703Xr89e
mMclxQh9+q425o2AwuEd+2h5u6fo1evv5q3SF+56kEZ2HU6jJ7+N0DDKjRur
JTeQ3XNwQ6vzYNx4yIUb2HkGN7ATzdwQK+rBDWyZeHGjj8EN9JJCJhn7aAHc
aNHClRtahSFOFjGyqcJQvqFU2BPqS8IZ+VXYUXZKGLhfhUX5VZj4UshaQIUh
x5bz60W/8qpY0aa8xEKjVdTF06eLBFdeddTDzoYsOBQm4m2dEsL+O2pfhWX1
6dY84If68RUOAm7VIrRyiBjXB1FcMR7B2m/am+to5bQU2jl0NO0X67D9uuvC
1XaUCXM41YtffZ3v6csE4/QlasT06UsgTRYElfIMmn/95jvmAAqCP1G+AxOF
98LeBYpnXDgA+2fjwFEbB24NgQO1DA6g2kJzADACB4A2QAlFCQ4O8HEXwQGU
HIEDqPXQHADBBxaEA5MmcfMHcOAuU2IJVs8NrLYwJNaTDomVaUgsDB4SS790
0Ih5NKFtf76gZG3RKI31jSVK0o7W7enovBS69Mt5XZufj3wKKCYSiyG0rcY6
1BUsov8oWhjzUmNdholqmyh/POtKM1c8y6O/EJQb1u+lgykr6fNRo3leBaaV
7S4eAGp0hMMPvJTbKU6wVFfGOE9xouTw9Icf08cdXDJAP/xQRKEKb23DtXip
iWv4Bg9cY66cuIb/ty6PDI5rfdgdkJC4/q5guN7DuAaRP1CX9GlcJ1wmritr
3fNzDu8seegejFaAuad69vnPjtPhMS/S9uq1/GcCClNquVtpesMnaETvF6nf
uGVhavx+BXRQKaDvOSeNzSWlZXxu+SMNagQduE7SUX+kUYpCKJyPFDNn9UHE
gukuW3JXwVc1RFCXCAbqohaoIfdOfHyMsteu422wA6axDnfDtU83hPU6IIrr
MiPUx8BRjZqwhEa3HiCER3WaWrYiLSxzCx145llguWQQLEPT5INlrLLGMr4I
sHxCYfnipT+Lh4DlWwwsw80DyzBxEssHDCwH6JRALJ9iLMMxAcvDrxDLsLoY
ukOnCOHBowLjhGfRWEaWB/dvosuZpTWinVqDDT9YIPe2jrKL03ImXC0aLp/B
rmLs0zPokb5JvH8DawxJIxZd50M9Sp40nvEwqqvEzKmrRcJ47MjJ4RmqP/B9
IeK5VDA8R/IGh8Yz1vHiN99wIxkD0z5PUH/9tU+n3kFmr/OocgWirWyMPov+
ZM1ONLTLCEpO2RqgTso4EA6FjscR6WqEI/oNQPgqG8KBAUb4ERvCQ7kvtpQD
4Vwmwgg/wgjHrLkhXBhvSC5G+GY/whGea4SPMRG+YgUX9KqWtnaEi3jLRLjO
zQdVIR+xXrJqPmWCBrd6QuQ5EzRPP81lTX/9+qtUGNHMHggv+DZQBTYCFhxn
Lh1Xj6iFlWki7IsgTYTND1hswPXPv/5WaZZw1vbO6qsqCsPwZkq9qzR3GJsy
rUsU5O8PEfL6HLgr5KMMyH+uCy34pKUD9sFQH6Hwg6wumt1JmXKcZcqESan0
VKsEn1syRWdILemyyS9ddO6mnIF81Ak5kY+UqES+ob9LMPLRwZaRL3AhkS9j
UGAQcRYMlAPmhYOgHLtGmCgkzz1Qjg0MoBw5WifKJxQE5ZMn8/EioPyeAE3i
2PLaxNGwQ5NwDkVwhYvgw8KsHMp993FbYQSz//nnn5IK5c4cCv4bLgzUgboD
jRDNOzM52HSBjsEmpKFj1E6FZ2GXTr7A3qitMEurwBVooKsu3tVDBHrZYECP
dgU6fmxgF5Ofn43X5erZnxymje270XQhRsbffD89V/kherbzCOo/OsXndqzC
PFIKQOimZWCNRjZasjKyxXMZ2cJnYIXFxOskPsof0N63cY9pVLfLZGGFJvNF
SPgdWkei6BGnXvFv77FLiwaBKHQiIIoJxIgmXSFEtdRA4b7V5FVKDSRqgkiN
nbffbqY1kI9Ed1whNfQlBDDyGLdOa2C/VtgBXRNmChLQwRQkzl0ubN1hmxB5
DWybCzGiSt0j+Cu4lHhpW4uHkeb1i9Mwrk5QR4R1l/GaISK2XDDEhrsh1moe
FBS1wpc5URuuqO7Mb2wWIeG+gc/SpweOBRz3NPMmkKn60MUnqu4TukBOXElO
HGGMcHbrxQIkv72XXkneQgnCuQGKbQcnc73ZQ09Pp4ZxU9h51u70GsW0fVl8
p6pPTBDvcV/rCVSzw6tUv4uEdNNeM7g27UmhHLEYMOjI0y/fhBx/JmMN/gbb
lFMuE7tVDBGB81HJbrtFUkTkuoiIDh0CRETPnlpElFGg2uc4yApLYDW4LOKq
McAX59YTNgGgKYBvbNVpTaE/JqDaay1Xe2nzCcGne4PqS6cwGgRfeEZjiV1d
iCCbr57h5qvZ2ef5nIk+L5UfrnUL/wLgWjejKCiu8+2P+cMP1nMsfcK9L49b
Jz38aZQigSc3UTiqtIi+MENjHe8DziA+wXvhO8GfPW9mLIpJ0yvWBTs1sEsL
393Hphj9B1CGiYvZUSmMQjZbtc8qXi+MEKgEMzFqoNRA/lgT+KmpfMJ/1513
BgAfJ/tN4Fc1dAXe1kNXIOvu1BWvvcbXZZu6IibG1BW6+7fH3sz11nrk8V4z
yAWrGkxmYCcMMgMbzP9SG0a6p6FHvVgNNWa8TLsNEd5o7AN9WmnoyaC8HAF2
gD6bzufkqbOm+Tcb9m4Um5WW7GwUm3pANmMNlU26bVAQNsFiYxHVyWErTe/N
pugANqGE3otB2s3i/Ao+w3mS1O8Pw9nd40wUzBUWXMBefK23Vu1FBZMYJzNE
mNX+L9n0M/Zz8a2xdwFxgtwumn0h7/mbMPBFlaNxC1K3iq+OjHqWIiVCbux3
gZSQUNjzAqgCqCXeh6m1RVILOShNLaEKhhSAWqgmR2eZf/7800JTPnoI+uP8
r3Y99P77POfeekj3o/XQQxUMPQTqwk+wHlrjrodQXeCmh8LUx+A9XKrVqhsM
nm9k2MFC7LiKCbagDKuoeXbbZTMplw6kTsBpRc2k1gnJlCnbIYTUctm9Xa74
nb9dbmxAu9zEDWessYdKV93sogB01Y10vOkaxnTdV78+9u9VUV2YjaKRyjkh
7YT3BQ+w8vA6yAGh1hRnUZr2momsRQQ3kCrOWqxJzxnsiNoMeotPOkJnYRNy
BXscSUXsq2kq6mr/YPkivXeMfDSGFEDNtZKaAJegpmYm9t41M5EJdjJTDiFX
t+UvKDPvVWvjpfaEHYKjgZMx1d4vv9C3ixdLtVeypKX2RHDIam/tWqg93eve
Q+1VVpOG1CCqpaD2wDgwD9ZgjE3traIXxcQMFlhBXIfUacKk1WIG/qVuRQnn
SQWj8TFIw4v426e7deBraaOQczH3snih2khHCJfVmuLijB6CskeqjXMF6PVr
dI+OiU+ls2avX4v13DfHOjuaH+NuKzjjdHNCN8YVUZUUKyJL0NpH29Ked7Yx
bLE7AdhqJ4a8nXBi+uABCDZQmFT8+jnh37B4/V5awTIPB8B6cEC+TO8HcsEx
BzMH/ULzZyk0Q9k+K+FGsBPf2kYahGDS3WqCfcYEMzje/jIJpmv0LVW5YLuX
qhRECEVVjh7NCV+hKnWLfw9VWU0hUatKkBiqEoSGgkQUGzd8EV9UzqnbblOo
tbB4fVX7L0wu1CcrTfE6U2lWUdOBGAraBc9HXudf5y4oVynTtjiP8sXXP6oj
GGVDZ4X/UDa1nswHYfknJ2ur1VmtdVKG4lxF7fRC6WJ8TPeiisGn+6zGJ2YL
4wPn9ZnJ/KimD5IWWItG2bzA1s37KGXyQprUdywNe7QP9anVjjpVa09ta3YO
40RxOCeKOzZ/hgvLUT7bZ/h8NaJITr/aPcRnTg/hkKzyGBYkK7LBdslahBWZ
/xiW/4g16oR0l8dgXNRJalxgZflfwUUZHNqtRhAuevjbZoYbQu8rNDRMu+OO
wiYNH3vMlYaWAt0SqECXB1egFSrYFGiLFnzlx+9ffaVTZR4KtC4/HGkV3sEs
4jobqM1FYh5YiYrQwFWJCj+I7AcrUUE1rKO+pQOU1B+F3SQcGNIV2gjQ1fWP
6vmhkQPPSYyxmiha5MhO05254/HcfPt7O/s3Z1P6hlRKSU139G/OtTruJmWo
Ipb8KafZblIOUTGSvJ2HLmBRBzuGbSicj0MSuO+4ZdTfyqqXlDXo/adR7w7D
aUDNNpRQqSGNuq0mXy02rcztfNUYDr+uL3cDV/ObGRbdJwPCBfsiwJPXATHd
nkUfEPvYyBTqE3fBiKRv1QaRZJbFQaR1nkRC0O8WQxpEqhsikaZM4b6JIFKM
egnADgsDmoYuGD9p394pGHFfjhKM+hYFD8FYVz3sUbEXZiwL60kRuVl6cnmg
noRWBPfgfmEL4YKRPbxJe3ojlENHzE27j1kn6dUtiwa/8u9yL8dXlF1gjlAR
OTk5ytVlqualMbQmK/fyu5hbjazP+v2poJW+EDQ/Wt2o7NQ53nr5yTNvgORg
IbXcoBaS0Wj/ImREYY6hoqiBUBKPDXiTp27ivK20QlhFZ6ZOmDIdUyNVCZzp
rrK45FFEcrYsp+AgzpVpDmpBiAym29F3M4PpPPqOEmstLLVTDMbBu9w46JHp
dOEgMp2YZ73JZOZxRCyi94oKwMH71UukpvzMU1N+b9eUmZl8dBCdSA1NiSuA
DE2p74vw0JSagyhSmh9YSVjMWpY83vtkybnvc1NyWsui5SWSnPBlSHoiZwV5
WVpxxRnTbdh1jL8ttgWNjoQF6PYerlCefSCV4mKMvtsixEpJO0DJ8TGaOL7/
qxbwRSgvN4dyxaDPn0mnxFj/CDJyyGr0kh9fdVfbs4qvmBPwFVulTr5GWzrx
HVv6HJQBzFdvy2Cth6vZTOk6g6XrZ/qSCRUlRgZummEjSUQ+qMh23aRw0Fcn
vL1aAnhrUX9LAByJ0jY/GH1jAugrJTdcNuiryxgc9IVnQUciJ315j/hktj5u
ppsaXwZ9oUXhjINoUfEdbVp0+3b6bNCgIFpUX5ngoUXrqYc9aiZ1Hgu1kbAe
eBosCZjuJlFHGxIVG3VaouqWfi7RIVtsvS8BrQ+LLD5PhRVXpXm+DkD9qpXT
NuyRk4yr5KTD/K+0zQ+z/rYumfCZedaUDLnnWNKT/MVtZ+/xYxLfrUbCjfgg
mCa+9sZc9Pb7H8HPH4QzTpz2QMYbxYJtNvKNSGgPbGSUgpkG3XFUq+tg7Rec
6hp4BZRfnbvVMpmmKahjmAKuaBJfQ7d3Mk0BTJCHKfAqFxGmQPdNYlOwbBl3
i02rVMkyBWJO0GrTNAXV1EuCqGmUE6GUyKmmU1K81DTSd3k5Ofo2yXzUtEe5
6S3GMuApWk3jHA6s09hZG61lgNJhNb3ar6a/UnvxehvbLVrV29Cm5cYfeB6Y
FNw2XPwKyOl9rUC0/VqBvCy/GYmJp7QsSbLzWWlQ5v67AgNtx3/3foFC1hfK
odSEWLsViUlWzbDJSoWaVVSoU4G9bTVwDrfiQpe9xwe+iVqUKJuRCKwPtIzE
pT/zq2TQRgL0gG3yV+gEr0iwqh0CjYWrkEDXFFgL3QjWHgf4O1oI72PBFEEc
OjrJXpVzubwAwSGg2EjNGHbObbWOHwfWOlqWobjfMnjUOsIy/PxNtmkOfAH2
YOpU7kcNe6B7xuAEKOws4ndD2UPOIa1TAGUv5hEFDkLZ6xpED2VfT60ACnGH
2Apxs3xm3xD4cNgjyHrYJrzclPVDVXFHf0F2bNWgIyjSXpD12gtC8aiPtw6Z
IlMMD3fyzE9WHcP/1QUJERarco4lW9ngDWfydGYqLyvVeqlgve0ykf+juxKs
u0Moj7LSknQfWopLzfTpoMWt0t1f77uZ10FX4SE0b/XMHMTi4lsjLo/kjNjY
WRuClb5bR9lcCV7MjeDBiG1tKxWQ19r9eDXrQIAgPXw07yVhE7e+6hmKZoNo
Lpi0LM3WvAMBg74mL4DnLpX7YjbDFfEGDZ9LE9oOoDerP0Srri1XWLUc2xge
QWtrN6TNA4bS7uXr6NjnX1vlzU6VjxScCK9Mlf9GanCVX768TeWLacNVC0Ll
36n4kY/K96g2lrnw0pyQ1iofVgUPo0wfQ8P8YRcc84kdceRRdb4Nqh8nZeCi
F63drwuVIcRQXYGblIoUiClRymmFereDRdrW7PL86WR/DYWftFfxeofSLn35
z1PG1jWUlJSKK1T5Rx+4WjayOT+vfJc3aZ5xHEUY12glLC2Ha/JRHbbCdgvq
Oj1aEOk8rMchBpOmn+78kD52p2ekg564ziMUeupjujaRrk6wjhEGRogMZXTC
uHAVraL7jltmHXDQwt08EYLGIX/8medrpsYEiv749beUkTSH0tp3ps0332r5
zvWFw2nBXdVpcvOuNDz+Feo/Zont1DjSw9Y5ss2u58jMpnBIyWFyjVvf85Pe
7doFSG/h35X0rqwImI/0hmlAaGKrrT7xrdlmBtIavf6wabRgzT42GZDeumYP
5dvak2oi4ssj2wprXrhA6A96K0Xg5SY5GYqHMZPR/d/ioZDT+jau5GM5Nh7m
32OxiOHrAs7gLp9Hd6h3bjJkqaUd2jarwr8rEztKnbaTYtY8lKu5ZRzKtS5s
yi/VpsM0j0OfWL/JU1fR7La9aX7x69CsxSRZscsh2VdfWR3AkUTFOncWNhiK
CtoVdRUJQduIfM8iEvpb983kuHTpUo4R0ypWlFwqKXVoq1amDrVOpgceQ/Yf
3Uww6gcDOOd+Dvk6Q97CMnnIW1gCp7ydOJE+qFfPJm+rVTPl7d2hyFvPmvDa
ao3cwlQdmyDGwMgxt5jjV5K3CEEk0QIIwNCg/iHUSzR0h6RcQ2xOTj+raZST
kWSR8Fgu2dqAe/TPjWRJXEP8qmnzlrTtg88COjIMsRRiCfH3YmpWU7vWJtRy
0FsiXlpOzw7uR7eo8bQcv9XJmnIhkkZXG7t2OSrCpz27t3qOBlZuQi/fWJUW
lrmZjg6S0WDJy2SMVI3FXNPBiH9x0tbZcMRo/cKZZpd+IxCOVjdPNxKFWyQ6
PW0a33aBYE5H4fo4Q7Az/Qn2bJOfS45eFX4uaYmFd0c+2ktfHgrQl6hrxpV9
pr6MiDD1ZZXQ9CU89MbAe3k1lwJqYXcfs1pkYT7UyxiJyB0grXTsy+9MWPs8
+kKXVlML/eW/MyaGktMy+c6YMwdSLSUZO/lAcZM73n3Qb69cg7q/MMc6ZQ/Y
BPQrEeHSkV3z6R7jsojWSaTuQ1enf/Inhzzs7d5B0jwH3aF6R3qmSjNK7jmU
jh/6nMX1tS7sQNlZfuy40dAVXpslOlejhZ1baxIz++o81qtFnI4iQ6XLX39Z
LQPsdHFvb2TRpaRFF93eCCU12O1FWqYnLrocmcKxML6pFHUHeAcYlt2m6hYt
8lR1YpKFqrtXwR5C0lR1iMLFu2lWOCvEkeywerC4l6nqyhds22k1Jz2LbPuD
sAFqPmnxe7IPavM2wW40yTtj3Q4svoUCaexkfQTDeaNE4EUVRTmtGlPzAZq5
YK1bGzd95BOXmKRMiMf1JfJPbBxNTk3jC0/Lh0iFOmpiTCqMfGkxKKAOSUdw
7dtTHRNpypvrVebhLKhQ+jKZoO/bC8YEXRmAclJ8a1huefRXNnEzM4teLUyg
vmwbhKExQZrfkhYTPJvgSSbw0HGnK675wBHBB7pNEXOM6KsYp3nbDE7mgH7Y
lLX5dQHrkr/mwiSjrE5oLn1JmVNzgX+G5uLmptvsFwqLFdQL71ZDqhmBbQfN
CN2TAs/la5CEv8DXkEUVstgRK+XXbG7Ytl/Conc8KSfLBcjpfA6jRGjeQ7Ow
doi4r2e4gN0bdtGrbeLpqXsfl+0v/E0BZCi/ZKeJe8X0ggNfl64FA76u4fBq
aYLjkk7FhKVgxfSJXzFdaxrXJUv4ZMDO2283gY+7003g11ZTojUNtAdsO454
o2QSlxSj3AhTgh1OlJRgXxo7naZ8gk4J1k1VAP0xLYj++ssSRDtuu80URJhQ
XPn7+9df67vOPARRffWwsz0pKvSE/dBA32acu9PBRZSabVTZyo3Z45xFw1sh
BMYeWrEQkRfK/S0BUqpuiHDVfWGR7N3ToTPNLF2eb4d9+v4nHP0r5C4QIg6E
gIjhAdmylwnZUiFAVj+HS/8cB4eDqRYYU92MBKpFN2b98+efg0J2+nS6cPgw
Q7aOegmQgXQPdoEC0kiW4ghXGkfXKAZrpC1A7YVpZyNt1SG4kVPOtG0bIGf6
9NFypnpockaWLR+05l31C9WYdhP55QsEwHzveJFRc+37qtOoHj1UE7qC4VVv
TrwdHkmzbriTXu/xAo2arE99u+NV15YVFK+hdMfS1Yt+bWFvK+LXFhHWed/l
y9+nLaNfpV3tOtH228oHw6Qu69VpFuQ7HGkWoAeoEUAsnQ8mzZsNDEzC9GNs
5s0GLs3dddycc+IE35L2Qd26NkFRvbopKGoEFxTazgZWAB/HmmlMukns2/OB
V0GueIlQedMmVCuiCM0RShtXrf64aVPBsBlYRofF3D/wWdq3J0NHhEExWi5U
jD78sA2jUSFgVN8Y7tZI5NUpK+nV9gNpTrVG9Hap63x6Pwxp+aX31qEl3QbS
mjeW056PPmcFJ2ClfLvKV5ySvl3EaLZ8hTBtcNPCPVcwQOl1k0wQUPpvkjng
dpOMdXEAnP/WrXxrobfz143Z8nH+HiWxddUauancisFQdlkXuIRbe2uxTR6m
0W3a0Ps33mgdj1UwNTAYKlYD+6SYJV6OLEZQzF5/mZgNpVL7RtN/L17M/ct2
VqigbeUmsa7r6jVmeE4cNp36j11iKVnYCbd+IpAF+vh6EB+Pbw6rZF1cEulx
ZZf/AiRTtAbi1vXOLt0eBw7+m4ULpYMvUULjVkyhdPAbNsDB6w7HHg5e49ZZ
C4qydkE7jVs30apvFJjy8svUuMGD+WzvFuRalkjPa1n+zs3liw2vDp5D6Y8S
tMgJJ1URP2ObFrC+QcP6++/tsC5XLiisdYPEYLC2rlJwhzVLgNat6bQwCLgQ
FxJAF0ZDYbh1FDGzF7IQP7CjCLIX+qS0JSUCd2wwC0pKNAgKff+lil7Qd96q
aEBfb00G0xHjxnFhpdAReoc1Hx3hUfuooe/UtsKMKegXpV+PHuVUzo577qGh
Q4YUsETpKlzGojMcV8wL1dg/FF54XOwSjBc35suLon5ejBiheYFXaU64VfJa
tbahU0J3l/LqBGLmNWDw9PlLsxMIhMz1LkJGiFFTyABTSsg8GkAJ9+tv/ZSI
tChhu//2/UOUlrSAdnfpQdtuvMln0yqPPUZnkpOhVTSyPbTKA2o18H2cRX66
ANBNPUuhUoav9MJhvQ8bN5bnPsSnQ7r/ly5Y0cfv/puY97isJRjm9QnCkHyB
wPzB2fNo+mtLXEvW9TZfAYBuVtDn11hDyx59EJJlT7aUPZpjqMGDhoD3N2QP
NIMhezoZQA92z7h5fHDQ8GR65Ym+NP/umrS2SKRurvxOVHGaU1PEY0+PpIkz
33G/A1reQW7dIpePyPEohdOYdxPnOmLEdUuo2RezrlhXnKNt8+cq3Yaij2r+
N/Gdz80qbvi+2cS30JqB+C5G75W6llbeU51mNGhFL3Z8lsYkztGY5hljPKek
8B1QO8vb0xkiajHxXMmhZZx9LIT+DjhUqHtWQPdoLaMLK7Azg4jEoWWwZ2do
Gb03yIJD6NzdNW3N7NdXqkzL2vWg6YlJ9Jy/wTSghzGw6U61wxZjUbD1KlZx
6BN/gdgqSxRmnPhW3y7tJs0rKGhg2LjdaEt0tArPw3ifSf34Qri35K7/ARpD
OIOEOYJR+VIFlLfki8YwWhdehN4pfi1tii7mC4Ca+GoXjhxhqMWoIfIBOKdG
EEvq1wjRXLAOTx0/PpU3JTokzKVuw+R1vFoEoGYDxcBW+QUSDlu28M21O269
1cOJ63JvYaAYjbCwbEp3S1OKd3bKaAt42BgTwIPQx8iRBreAd+H3W4Log0PH
v3lAPexxT7I2l27CuLxCAbwOkPFRs2bijeT0i6/KMSueoS4Ruft/AK6gF5K4
g0tf9oi3RV9edOB5LzIyQmMoKoojkc+HDaPs1as5oqurRmL2IFi26QANE6uD
OtiGcVPV7mwU18ai02UXgRvrFJWjJ4Fwxd0MEYDL1AFbR9yPfkQ/btxIeb/9
phWVCR8AEfBBMRHgg+IiJ3xQMYkBYMfECR9kAAV8dPPhfLwtzte5FAZpu+Wm
MG9T65yXk8N4SLvjDtV3Kgx3nvH98XiGuq6jSjD41Kr1fwKfoFd/uMPnOmPh
ArxdBL87Whnu7tiFljRqSQvuiKF3oku4aUSNLl1Vp50YFlJYIl1YjTphZMbh
DjC+Jes/CvCRWGe3g/fwkW0dXu+DOnVMr7e3Rg36Yvx4rhMVYXZ5hTTMLiPt
ZDYjDQMrCNKwvSyR9h0j7ZcLF71us1MeUhsqj2IbjTQ3XXergsRvwuNhabcU
Ly6+goQOTlFpD6mQpnuz/zeRFvRSDnek2QLiRYvo0x49kNI2nR2yhZazy9M3
fPlTT0Oen03jOj9Psx/uSO/Vb+SekVVQvHj6tK3LOVYeKx4QCO/RPlC3PvA6
W+4Mv81TJvpsubBAvkfcXOktt9hc6eOP05m5c3Grzn0GQlH4LxF6ykDoHkYo
8mFuCJ22eAcfR0W3bvQV6jNumbBsR4FQbewCqltmc3WLDrXdRNotCivn0tJY
qqCJXJTCFOyBai+jL7aI+R9AMOglGRKCqHjaqKpqAcHw0CD4VVISZ88AQd2j
0y37uX39bvru3bWc1lN6LhgadaZSRqtZbHuG2KNVLDgAIJZAVwx4HG2GSbVv
DajjzbBU+ngzVvJBp2cWsbjTM8fHa8/8QDA0bpZoRFQCNBZS+784sQqZYL9c
ZVkhG1il7sPBNZSn4SAbijZhTnHATYA1RoEVa+VSoaLtpZuw0575YlYWX+KL
b6btpUAi/fHTT/wMdTlFtf8BWINedBHhBytumnt9BmV0724DZmRkADDlZkXx
AGAiLWeGsVbQAZAKBe+V4tEo1TtUcN/QY8p9mzEowABwCCOgK3ahp9zO3Tq9
OuoS4U9hc7D42qvX1F7988/pywkTKL12bdOrQ28bXr25IiVc78tvbeEKWghU
NFzFzAKp2AJTSI1yIBHHM4FEHJnWSMQRS4VE3ZbAo65Em81ge/i/fPABX34r
RZSEFnpGndvFjZX1pRM1/gdI1N2oNRJTl2+npG7P0pz7G9LqkmU05DZGFKFd
zR+lrBkzLMh59Tg1IGdF7QWFnRYU7KpFOODpqk9hFu5QI3EeEIVlwDZNKK5a
rLRfIAhX/eN773E+wttVt1BTx6HppoDQVJ8LwyoBmUi9YzMWu1IORNo8OXZn
AyD5sYLkt2cx0OvVJ3uUlWhIuolJ3fwN0e3+2Fi90cwYA6XUj4Zkrf+hJ//z
3DneND4M63frrYVVshVQXHJ/fXqtRXd6of9r1H/sUrUVvCrAw4cC0SKXCVGd
hwzmv8UyY9lFRKwTNeAZRqf9tzofafPf0G82/33U77/Lm/57/nxP/y3WRfjv
lgooGJ8t/JXnOnXgnXNRQfSkC0Tn5Q9RtKIBRNGlSkE0Wn2yR5FJAzXpqB51
ik1d7HLx1CltNWHxdVJw/0MPwejzk3QxI3oQnNdXnZw9L4VdCLc+4LGAXvXW
rqE8yi3bqyVn5Ohjcv9NLugMkCsXoqQSaNeOvpo1i349doxPS+HHUwSv4uAa
YQxEpL8yOzhFovKlSKQbRSzRgNwfAG6qBmBMqQadgIJqMM8ruquGd5VqOGCp
BiT//E23g6qGL198kYu3BYAeUwj1CNhvM7khVszJDayknRulLG7g+4EbyEKC
G6hQ0dxARzePChZtt7238cO5+mtrqVIMlN1VqtCPW7aoTZ4wJn9utryaJP97
GoJhP4wyU+P5962TM3y6Z1hedjolxDp6gcUmUFoWNz5Q7xv8EofCzmb1OghD
i6Bkf29dPY7/Jtmsamo3soW7kc2nqzwKQDivdtQm4WRy5Fo3wvGocWD7zZI3
cT1715g21LZ+D+rUYjB1fXIM9eo/lWbOWae1keogIsURNvRDEUcAL8QRpLAW
R7qJq00c3XyzTRy1akVn5s2DOGql2OUhjqq4sAtNDcAuHAzF0uGwNaiv783D
obhH+s6yWny0G5LM4Uggy86BZcHOr0k2RXH6DEIcc4qICslc/CBtiN8BJT9t
23Y5iA6jY8lxkkJJGZYOprPp/o4haJYTH2drq5cuG3aJ5TWoFEUhdqH3cymP
UlvrhgYqk3W1uRS8wtLBIV8wEumDNwUgUckQSFRCkQgCDbtRM5M3Ur9BM6hb
l3HUqeUQavfAU9T5/naUeFsteqvkjbS2EA+SPdn+pk1tYq+5+jxLvh06yVMU
KN+KWfINB7Yh3iHfEEvmygu8/dLtiScCpFu/flq6tVYE8pButdUa/Pb7H7wu
6NgDAqEJFwiE+5tAlobdp2IDhzo9N18RKYo3AhEXwE2hF7ck0BFJII4yzoE1
XlcmCBdt3Q8qBsqXqmxSXZCRgheeTEslRBR4SEylKskpIJbdWBRptMiNp3R1
/0ieYJZu4hEzIU07o4pqnvJvJp9LGWtSKDklBedaU3ADaGrKZKurVevEJPHb
VMo4m/d/Q6cwphMw4c8SKLq0b2+ji07JFIAuXmc8TLpoV4bqAyTqlWiTmq2o
pdkgl1zckhkpOcnziPp0v777Tum7A6y2cDO4blw1dOBkmvpQe0q9pRJtvOYa
TY60+6sxmFi7/ec/bRT8PLSbjC5KehXROEiTZZEG3Sy114nyIstaSRa07QRZ
0FlUkKW8Iot3QBNuC2i2lixJP27ebOmtn9PT+fIULLB8ftH8MKtxaDLEbGmj
Xzo5/bz+9fkD2oFx62blZbwbwhc2GsILeRYrQCJ91YQD/s6SV5sPtdRg2YUs
WECH4+KQhQlXUICZ+bBRI06eidnSvjkoG3ZINghDBjZEh8AGPWNIQAGveFuh
XcwEFKJjRARCwxRVKwz1HSyH4GTGo/p1SFyd+ZHS31hIm1p1oPWlyypVX4w2
hIVx66iJrXpTQsJMyxFonYY+XNBpJ6RO0yG/h/BqoB7me3BF/GSr1Pn8m2LK
wiJsdzIEW5VgCKbMyRDUZIIhMxRD0IPfwRB9BNgZ3Qij4hnd/HbypBV9/P3H
H3Tpm2/4/+7wRKz9CgM3J2K1TDyzQVl3vqvKf61OhrpWR6ixs/+PuCuB03Jq
3+9n9ppWEqHsKUorKWmVJSSldSptExVGKS1aJe27SlRa0USmVZEWW0UkUREi
WSohrV989/9c5zn3ec/zvM/2zgz/+f2m7zPzzvs+z3nu65zr3q6bIZKL6QbW
AZTOyIlKfsydSZMnz6SZM4dHT5es0fJnWw6eYomn/EIT66450GSLIOCAmTpV
Fsri/7vwOW6gCIkysdOr8yTNFWUICry9dY+ssYTCT0zQ7EsZNCsaD6z69tWw
qs/3LJgW/BGcqqsLFUpQoQpmWl8veZV2f/5NlMyJq3GLxSHUpcncDk3m1Md4
UjSGmmtt0skzJR1QwzpZUNsloQbJey+ooY1homJuGmrC9VFQ4+3I2/VJkmIJ
DtdHtzrFMZ6A9XHcEKbl1urNhMBGVPbwqOnpK4Tl49CCc9RbHeXPFwhff4g3
BZtrpLt48wtu1/jBLckGN/C9//31l+6o8QtN+IqcuuPPimsXENb9lSz5q2+N
jTTlDU1Sx30P8WKtJj9sBN2GDZOLZgbdxH/ix2j1FcSNm+JABTENBEcrBPVN
Ksihvl5KbBIRZtAqJEA41Me1DBYBXOdOAK26LqyJo67rCgN6GO0C6EFcXkJv
lRv00n2hB8CjkAnyPcpD4hpgNweJxehLxGHyARMEuNHAFYZe6qPHzGFWCob/
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
7qZFw7OoXsWKYvEqin8TKCNrMm23+grsg4ODJ2VxG7WfjXOlvyZaLlHHxx9n
osXxs/ywcZZBhY3vnTmLlt16Ny0pWsIvU8ET2myeSNeuzI6sTylKY0pcRa2u
byrNvMkNGdTjqjrUr3RV6lbuVmrXpBd16TdbrwM2Y0dQg2Pi3gypkKz8hkwo
AoJQDDLUGORuFVP9v+MbbfqSPm0Lok9MKt08FTPM6HIyDM7oS8vSClpmfvlV
dPTz3RFWANIU6fbbYyiS2LflyHKWNfiHZrHdGMIsuRJTshVhf2+XLevKVtiR
zw+DZN1rGf+ev5Keadadple6hV4pel7Ezyovd1rlzJmmVSbykSlO1yUVqlGv
+x6ljPZPUcdHptLY51ZJq8O+8U7zljSzyIU04oLy1KtsXXqoZT9YKieQPYyV
k3Lexpoqd078KdLXsC6OTCnSw8I+KKJFGJolW1XxO9d4f/39IRkeM6kMQgtM
ZaqoK3Hj+5ep7cs02Bl3tqHlKgwx65pqMoiCTXvI1OX08vg5tCGzJ22oUCGi
2YmgHO/WrCnL58R6dY7L5gLnl1ke9I2Vq9PQXr10/tbPRNnLBjsABQAV8GIH
x49fnO+Gah9GlpU1iZ66txu9XOcOWnvJJb4Ge2EYgy1gp8zicn5Yv5HmvrLR
GReydpa0mDDwq+lFKCczi5aveM/hDXsaM5evehtzkpsxa58FIjMPDluklWnr
d5ooiQuosSm5BD7gTzyqqSvxrutMs5NsrFXWE7RwyUaa0KW/3Dey04to4309
OZVeq1WfNj89no798GM30w5re0dywowVS9ZR2mrJKTRdXAh46p979oQxYn5n
efyLPdV5/JcqZR3/mzZFKxzz04jdqg4SadZUsW1MfjZ8Z3CALSfH2LJiudw1
xGGXaLLxU3RgWnaV7pfhkHwbxNdwVAOsnIOG8Vo5583MGmlEZ9r3myvV0hyR
HrOCkemG2N496MYN6qK8ixdTbPQZMUroSSoeoQ09p8QF9Pwtd9HAdv3ooSdf
5CpdubFPWyGnJkMnD4hsr3AEzUyMeMRDQAUmxnz3GzVXRkHyYaZYms4/1r2l
HvURJ4gezypOFIWVUDs+i2a6kpJq1SR/Fmuk9cL/WZgk6yReHLU+KSZcPvww
TrhweMEjnVeQzyWf9D6HHzExygEb99PhU0cRUfy4Sef9WtYS73CtJVZUyFVV
ih87EyBz6iII0Fo5hoc1z90Y+y7d8wFHET6lXJaUFDduc2zXroAR7bhJHEYA
k9Xy8lekmVp7LA46OpCwwdpi5h002AQTizCVxKxM+On5P2mskOeksZPffSfH
a+YWe7p93mBbYg8y2RbeDmEawbZYcPKfRWBqjAigKxITTCSKPz26bZu44iDk
tWtnIo9rrDxyc1y/7Ic8rsj2Rl5aDPIO/HyUvtzvDTWYP5QgGGpsJM6iW7yf
+D3X/wTnJxIlinh0j5OnZVuDBsQTqaluys3puJwf8IkTctzxpkqV1HZtxXUg
6v39vHmI6wRIf7oB7g51LwASorwQnkLvL3ruB4uTTpx4YkGtZcWuw9USHviJ
/PMjyLhqOhiKae5QzF5PXzwzWoromKI5kiT26WORxNOnWRz0n8WevYSFjYbx
93H79njPVH9Q8fhWD/ZXPASoLMMpboBqF4NKlnijfvTeh2fIrDVCp/BMGnaa
JDu+W/Z+QVqVASCetQTjBxVimCsd51T1dNzwg40SGAJ7iopwJspTTg7Rtnje
zQowbo4NCwjIGNG0aXLu8croIYUE907EiDDX+vRpLjOLAzMNjMeptgdhy9bj
BLCB9+jj/NcmirH7GAyMBPpi7QZaeEcLeuncC1y5Hwe3/lnrT5HW//2BQ24k
Tg1ATKI1LsrOrNznQeHCqDVYVnheDA8DdOCPQMYGwwOgbtCw82Rp/237zpZZ
5Ziwqzhk4M/oBrTkGHlmwOO/Z/+yLryAZFvQwoXOiS0RIdAGTR3FxuooO3fz
ZziPLdNgH3xAuwcMwEggrncGl0BgHy/i3qw4jJwrOcDClIyoWHXLyLEt8J6V
HIeFhpjjxeTbz4g5HytJ1OLFsr9Ak6hkyklKknNBhjbvSVlD5zP3CtPMEF/Q
3/I/ftj0Lr32yACaUa0+LbzwUno9IdEWeipf3rlhx+PpsK/izpi+55S5n6Fz
Q5+3w1HAjQW5HQZero2yfa5qBplAYIqXWGkwMz2RnEg8BcWJeC8A6Bp1nUJ3
dJsqc3RZo5ZoOnWLugc3p4TTCJIgvfqqlWW84AI2B3AkzA5ZpSZNqMImswrE
AxLgP4tWRCFRW1nHL78ek2eVxYosSEBaRxiZAoO3fatZXFzi4mfmLFKLoBbK
ahVh4fvSfGXzZokExXVyO2U8rOmzaGuA64187OISF9GMijfTgvYP0+6c1TB9
NgFXBBR0reP3oDVq+0u1mX6O+J597sU0s2NvGjc9x9lLi41VWvg3P8sdNDpJ
z7D0VzYbvkS6l6nHyCtjw/777/+Z1Xdvb93LPIZLkjSNEVcAR96Wu7D767XU
xbn5BNwEDIrzzdSpkuLoNFgqvVWmDH32yCOS4ux58klnodHlxjWGNH3mDd/8
cFg+BAux1kVjZaBggldY51WEZY/9zLu8esvfP/5YFsFhLquNiggbQDcvy4zm
tVEtrIGzOqKvgae67u2//njIr+WEpUIcxs+AfjGtGD1Y6W5q2ThLZtZGjl4o
rO03Hspubt+jx71M7e5+TFz/vdVaiz+994a21LZ5f3pm6jLTwFltwc2+WRAG
AsZ3PfSspvPYdXfsPmAcPggZHZZLbQ8ZCZLy7udycnMYJVgOK+E1j42yM3am
J5LJvP8+M5kEtSvIsFKtWrL859jnn+PFsaVBo0fLS+ZRbXHYNtMJBHARGMPV
DZqyPFndKMANrxgvqmeZd/kQ5s2hMhtJSU+3RXoyMmTLpDi4mPb8W0bOoh4x
Rl65ckwYJ5bAhNVxKKT+hcF/+cJcGtniYWpeu5NRuHORXDdvAf/gjDCqUSc1
7ULPFS5Jr52TaDIf1i0zzX+goK4NO0+SnBtebPOsWYJzRxcbW/2ilVtp/vIt
cu8WJmzGbHjM37Hjp/iR+Rl9dXUTbvSdhxq40hYV2hHH2oH58xHa4YCzW08F
a1bHYfMV1RPEFAfQMGHk+gmOit5MhOe046RD6zj+qr4FAg5O+oGgjLoyZJhA
YVBfZ5RrgMJAX0BRGNbu+bdAoOW3cgUCLl8KAkFBxVMsHvOq5jHZS9bTvtlz
w4uSBqcMnPyGZeH8vANr703naje9oGPmrJUzxfnMgFmjVEiGgHh2ZLLE0F3d
p0vtJBAbOORamtsfHFwj68bpWTTg5PffS4LzQaNGpuGA4Ox69FE5EfnvM2e4
mdatf4Fr4X3AgbAUfrxNgcNiL1Z8CnsAXxieGpLrCgiwSw0QdF3hAMFfWvEh
hTF/gPCEKpAgyBm8fdVVriSIAxr/FjRK5Aka8c2X8IzicLFX3ApDwUgZJz5h
+YadMkoDpPDM1mAtkMIyC+0oipPmsO/7QzJ0zhmDzoPmS58WYZ2MvnPOoQ4D
XnQtg4p6FVx86wcbLiZ18wu41loTqf79aeN119nyc8IVliOSP/9cD90dOjSm
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
nW5dy3todMuu1L7lY+J04gsFDJ6v0YLWREvXCz6HUwfOl8fH0hbhWRdXrUEL
LrmSXr+gHK1ILA4YsbFsLFGCtl12mQyA7Gna9DL1LbtuvllepHnReAkIQeHh
JPJDbNFC1gqsj4sLJiSE08NxwZuLot1ia7Gq1s306tU36Ye99Ka6tLNpc3nE
deq49Dva0oiW3Yy7i6LuLftSSstOtP2Ou8S9WqDY3aCBVOTRHFAYBm5D3ILY
uFnn2n7llXpZSlIxH7AbTJRH2PvEvn2MX7vBCtwlZSQggjgN9CSVzg8dDuc8
mKRGUnGaJf64lHpKdcQpG4YsmrH0jPj/1yNLr37uEz+LA4GG6uOxZa+mB268
V6L73urt5Jq8sljUferjN8TyjMVEcmfx0/eqhvR6bOIQ9RWvxSZR12tv1zPt
p513caCC/CyOZpxXPuRPcfbHr6gnVvz4wB51wUuj4+i5ctfQg9fdKV6NOEo8
DRwHQSTY2Ro0rVqH7rzxRv3kSzDQhHNPF0tjw1q18TzsZrawljHl5VB6ygBq
xMOHkhvRgPHplJ1H3hPErJfYuGYtOrhoUaAWshjilBjuidwb42V9UpKsM8lZ
siRwiTwmib5as4aOjhwpMc0zrlMTS1GPKs2th9a0Nw3tOITen50qwIG/iRJ/
s5Z2vjKXJvQaKR7KyA6DseD2Gil/Jz4T+Le+/+TKVbR+3DR6pP0watJ6ODW8
azi1ajea0l6cI1ZU6xgIQcuYhyXYKjGNpS171qxAbXlMDGWkLqHej6VI9alH
H51Ek/s/r7/32S5P0arnXqHs5SsDZdX1fSmub+2MNBry5DRxnPgr8SZ6PTqZ
5r00nw4vfA3Olc32Q0glrVsn/zBRfR0UFjG5HY8Kdacwc10md/nlkqu89cij
NPWhQXwVL3YfQdsmzqJTa9YIeFlXgf3kgX79IC0SLAIXSxyK9z5PDT5NHIfL
2FiqVHCJVpp4OKKuOu5E+gpaPiaFnuk8RN996pPj6MjiJfKISuq4XfOX0oQx
s6lb30nq7qNowONTKG3SAjq+bJUAk/XkMcESHk8vMYL3oIX5pEDQZepcW8qV
05hOUIswxJPwhlAPj+X3v6r2wMWrFGhcC0ve2NFLhKRALy9SZ5RJvVmz5PWL
zznYvTwqhp68tjF1aPMUPdRnEj0xToaNuQ/Oi2CyvBlXhrJU3F19p1O3EYsk
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
JSsdPmFZOoRZQ/XlIBOPIjntzPSuFpqQvIp2IkvIeaaasF4VpS1VnERkK7y3
97774K/ffmvML/uZQhci3ltcqKTsFBQUouvV1jonRniq2p3ZeUJ4FTk/mHvS
Ss4J0c5U1V5lwgsE5a1MXtDhOGKSUJ8QnBkdVo3FvQrIfYOibIjn4RXUPoj7
MGI0QQHCou9mod1rOZgqjBoSfcxUu/+z0tgTasUe3reTvBCnIrp4tkjRX42F
eHoksFGFR4+Z4Dh3za3LXSstzMDJKJnUjgn3TZrJOeahp1FHdrdYLrQ5ZzbT
iPhkulz8i/jEtjZVZRodHjXKFSj4gzjfqNbwFyYVfCklw3sKBPCdR2JaLm9R
hqwzPI9a9SgxKQSmCSptb3wdvN21obgeDTmUdWa8EFHGmN3sIvAv04WIqh5y
rjFlf+m45vbiWkaLFiLgRIFi/nHHDt7SqsAuBRSKySDvR0ZHI+2Je/EZBYIp
znLGLldzxhjjzuDm6eG7ZcGNJ9lXs3niy2K0S0bEWa5cpAMsphxiAuCUI5+L
6cp1faUxTzGjcPVWz/sCOCMLPvqIt7ApdiuzvRgX18WoWV2ZBSWCT4UyYkjM
B4fZXlLn1m0DK5iCWiFffDmsTd9tlDLCfk1GtdFSRtAPdpONoKpMl7KWFvzC
iVAR/CKYEAQj3qicu7uCBb9Qf594W0HloOw8mzQtKMpUgz+J6IGeM8BxmlaI
Jx84nWhXmda6EVksK9mmcu9DkbJrGJ6sZaWmFBipF6MFT5tuZTP7iJteC96C
BQo321QCN+mAG9FnMXpCjZIIgKPPP09bzXLJtVIz8sIgo8gw14pR2+9cK32G
3ozM72jTy4koZ22zfnD+xx8xYJxEITYlF7Sf4pxkNTdYlvIC6QE0Wj8pacps
SiOuEU5pQogyXT+pguClFALKmMKqJXSsX1sIwQG27hFKre8ZU3Uc1FzVZIxY
z8NyS6NSnjz3DuXJj9eqQ1XIkSO5rw3RGVisc4qxHAwxbDbnMjM7e12iXLpd
YTz+UAoHLtFvLNyqW6JJ1zlQEv8UjzFdoilr4VLKBx3Vl5w+zSMJ0E2OYThY
9YaUBW60Sy9e5C3Lnv5U01H6kx9zWBSVLtsJOo1PcTj0g9h/KP1COUc/b+HW
rZzXnplQ7N8yfQFlPTWPd0ycwIQa2Qq813ZKhZC2TO2E9pUgNNpyovje71NS
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
Rw==\
\>"],ExpressionUUID->"a730f6a8-50c3-4c83-998f-9043c40d6f5a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ComputeSetsIandJ", "[", "g", "]"}]], "Input",ExpressionUUID->"a2902e9c-4e88-4293-aa62-db1968cd5298"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"\<\"x10\"\>", ",", "\<\"x2\"\>", ",", "\<\"x7\"\>", 
     ",", "\<\"x4\"\>"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"x2\"\>", ",", "\<\"x4\"\>", ",", "\<\"x7\"\>", 
     ",", "\<\"x10\"\>"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.8293745053045673`*^9},ExpressionUUID->"7d5e26dd-fbe8-4c0e-9e16-\
c6a1ab9b64a3"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Paper", " ", "Example", " ", "2"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"g", "=", 
    GraphicsBox[
     NamespaceBox["NetworkGraphics",
      DynamicModuleBox[{Typeset`graph = HoldComplete[
        Graph[{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, {
          SparseArray[
          Automatic, {10, 10}, 0, {
           1, {{0, 2, 3, 6, 8, 9, 11, 12, 13, 15, 17}, {{7}, {10}, {10}, {
             2}, {4}, {10}, {8}, {9}, {9}, {2}, {3}, {1}, {7}, {4}, {5}, {
             3}, {6}}}, Pattern}], Null}, {VertexLabels -> {"Name"}}]]}, 
       TagBox[GraphicsGroupBox[{
          {Hue[0.6, 0.7, 0.5], Opacity[0.7], Arrowheads[Medium], 
           ArrowBox[BezierCurveBox[{{0.15270391151523355`, 
            1.9958168686082358`}, {0.44168126299274024`, 2.421732057925725}, {
            0.9270538238615957, 2.592977890908399}}], 0.039631784583956], 
           ArrowBox[{{0.15270391151523355`, 1.9958168686082358`}, {
            0.18430929115115013`, 0.8904551208499936}}, 0.039631784583956], 
           ArrowBox[{{0., 0.23497940678214557`}, {0.18430929115115013`, 
            0.8904551208499936}}, 0.039631784583956], 
           ArrowBox[{{0.9832467416469708, 0.5370407215826077}, {0., 
            0.23497940678214557`}}, 0.039631784583956], 
           ArrowBox[{{0.9832467416469708, 0.5370407215826077}, {
            2.210546158709714, 1.1031402404365442`}}, 0.039631784583956], 
           ArrowBox[BezierCurveBox[{{0.9832467416469708, 
            0.5370407215826077}, {0.5256622885182675, 0.5823700499041904}, {
            0.18430929115115013`, 0.8904551208499936}}], 0.039631784583956], 
           ArrowBox[{{2.210546158709714, 1.1031402404365442`}, {
            1.8238766087286968`, 2.138279208800326}}, 0.039631784583956], 
           ArrowBox[BezierCurveBox[{{2.210546158709714, 
            1.1031402404365442`}, {2.861237986909044, 1.2112429541836043`}, {
            3.44907295868468, 0.9120171231422809}}], 0.039631784583956], 
           ArrowBox[BezierCurveBox[{{4.42115918030205, 0.769748492855453}, {
            3.9117213096282795`, 0.6810322233896896}, {3.44907295868468, 
            0.9120171231422809}}], 0.039631784583956], 
           ArrowBox[{{0.42418359526484184`, 0.}, {0., 0.23497940678214557`}}, 
            0.039631784583956], 
           ArrowBox[{{0.42418359526484184`, 0.}, {0.9832467416469708, 
            0.5370407215826077}}, 0.039631784583956], 
           ArrowBox[BezierCurveBox[{{0.9270538238615957, 2.592977890908399}, {
            0.6380764723840892, 2.167062701590903}, {0.15270391151523355`, 
            1.9958168686082358`}}], 0.039631784583956], 
           ArrowBox[{{1.8238766087286968`, 2.138279208800326}, {
            0.9270538238615957, 2.592977890908399}}, 0.039631784583956], 
           ArrowBox[BezierCurveBox[{{3.44907295868468, 0.9120171231422809}, {
            2.7983811304853665`, 0.8039144093952189}, {2.210546158709714, 
            1.1031402404365442`}}], 0.039631784583956], 
           ArrowBox[BezierCurveBox[{{3.44907295868468, 0.9120171231422809}, {
            3.958510829358453, 1.0007333926080466`}, {4.42115918030205, 
            0.769748492855453}}], 0.039631784583956], 
           ArrowBox[BezierCurveBox[{{0.18430929115115013`, 
            0.8904551208499936}, {0.6418937442798642, 0.8451257925284072}, {
            0.9832467416469708, 0.5370407215826077}}], 0.039631784583956], 
           ArrowBox[{{0.18430929115115013`, 0.8904551208499936}, {
            0.42418359526484184`, 0.}}, 0.039631784583956]}, 
          {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[
           0.7]}], {
            DiskBox[{0.15270391151523355, 1.9958168686082358}, 
             0.039631784583956], 
            InsetBox["1", 
             Offset[{2, 2}, {0.19233569609918955, 2.0354486531921916}], 
             ImageScaled[{0, 0}],
             BaseStyle->"Graphics"]}, {
            DiskBox[{0., 0.23497940678214557}, 0.039631784583956], 
            InsetBox["2", 
             Offset[{2, 2}, {0.039631784583956, 0.27461119136610157}], 
             ImageScaled[{0, 0}],
             BaseStyle->"Graphics"]}, {
            DiskBox[{0.9832467416469708, 0.5370407215826077}, 
             0.039631784583956], 
            InsetBox["3", 
             Offset[{2, 2}, {1.0228785262309268, 0.5766725061665637}], 
             ImageScaled[{0, 0}],
             BaseStyle->"Graphics"]}, {
            DiskBox[{2.210546158709714, 1.1031402404365442}, 
             0.039631784583956], 
            InsetBox["4", 
             Offset[{2, 2}, {2.25017794329367, 1.1427720250205002}], 
             ImageScaled[{0, 0}],
             BaseStyle->"Graphics"]}, {
            DiskBox[{4.42115918030205, 0.769748492855453}, 0.039631784583956],
             InsetBox["5", 
             Offset[{2, 2}, {4.460790964886006, 0.809380277439409}], 
             ImageScaled[{0, 0}],
             BaseStyle->"Graphics"]}, {
            DiskBox[{0.42418359526484184, 0.}, 0.039631784583956], 
            InsetBox["6", 
             Offset[{2, 2}, {0.46381537984879784, 0.039631784583956}], 
             ImageScaled[{0, 0}],
             BaseStyle->"Graphics"]}, {
            DiskBox[{0.9270538238615957, 2.592977890908399}, 
             0.039631784583956], 
            InsetBox["7", 
             Offset[{2, 2}, {0.9666856084455517, 2.632609675492355}], 
             ImageScaled[{0, 0}],
             BaseStyle->"Graphics"]}, {
            DiskBox[{1.8238766087286968, 2.138279208800326}, 
             0.039631784583956], 
            InsetBox["8", 
             Offset[{2, 2}, {1.8635083933126528, 2.177910993384282}], 
             ImageScaled[{0, 0}],
             BaseStyle->"Graphics"]}, {
            DiskBox[{3.44907295868468, 0.9120171231422809}, 
             0.039631784583956], 
            InsetBox["9", 
             Offset[{2, 2}, {3.4887047432686358, 0.9516489077262369}], 
             ImageScaled[{0, 0}],
             BaseStyle->"Graphics"]}, {
            DiskBox[{0.18430929115115013, 0.8904551208499936}, 
             0.039631784583956], 
            InsetBox["10", 
             Offset[{2, 2}, {0.22394107573510613, 0.9300869054339496}], 
             ImageScaled[{0, 0}],
             BaseStyle->"Graphics"]}}}],
        MouseAppearanceTag["NetworkGraphics"]],
       AllowKernelInitialization->False]],
     DefaultBaseStyle->{
      "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
     FormatType->TraditionalForm,
     FrameTicks->None]}], "\n", 
   RowBox[{"ConnectedComponents", "[", "g", "]"}]}]}]], "Input",
 CellChangeTimes->{{3.8293737819358788`*^9, 3.8293737899592247`*^9}, {
  3.8293740900050592`*^9, 3.8293741018847017`*^9}, {3.829374221857616*^9, 
  3.829374231817099*^9}},ExpressionUUID->"0b1aa2b0-1770-4bfa-85f0-\
03b3d6349386"],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, {
       SparseArray[
       Automatic, {10, 10}, 0, {
        1, {{0, 2, 3, 6, 8, 9, 11, 12, 13, 15, 17}, {{7}, {10}, {10}, {2}, {
          4}, {10}, {8}, {9}, {9}, {2}, {3}, {1}, {7}, {4}, {5}, {3}, {6}}}, 
         Pattern}], Null}, {
      FormatType -> TraditionalForm, VertexLabels -> {"Name"}}]]}, 
    TagBox[GraphicsGroupBox[{
       {Hue[0.6, 0.7, 0.5], Opacity[0.7], Arrowheads[Medium], 
        ArrowBox[BezierCurveBox[{{0.1511035505050209, 1.9967797151929974`}, {
         0.4396458309280885, 2.4230696626023036`}, {0.9248906935785586, 
         2.5948753380752345`}}], 0.039622005441498506`], 
        ArrowBox[{{0.1511035505050209, 1.9967797151929974`}, {
         0.1833840113341476, 0.8910707688656929}}, 0.039622005441498506`], 
        ArrowBox[{{0.4249691915238918, 0.}, {0.1833840113341476, 
         0.8910707688656929}}, 0.039622005441498506`], 
        ArrowBox[{{0.9820868030159834, 0.5378517228336631}, {
         0.4249691915238918, 0.}}, 0.039622005441498506`], 
        ArrowBox[{{0.9820868030159834, 0.5378517228336631}, {
         2.208895561671419, 1.1053009710852453`}}, 0.039622005441498506`], 
        ArrowBox[BezierCurveBox[{{0.9820868030159834, 0.5378517228336631}, {
         0.5246518033262532, 0.5831219620079872}, {0.1833840113341476, 
         0.8910707688656929}}], 0.039622005441498506`], 
        ArrowBox[{{2.208895561671419, 1.1053009710852453`}, {
         1.8219976268819664`, 2.140625613878992}}, 0.039622005441498506`], 
        ArrowBox[BezierCurveBox[{{2.208895561671419, 1.1053009710852453`}, {
         2.8596050428097834`, 1.2133913263210734`}, {3.4474468859323046`, 
         0.9141450711858347}}], 0.039622005441498506`], 
        ArrowBox[BezierCurveBox[{{4.41955370270819, 0.7711622086071279}, {
         3.909988085563427, 0.6827996686040922}, {3.4474468859323046`, 
         0.9141450711858347}}], 0.039622005441498506`], 
        ArrowBox[{{0., 0.2362710802867125}, {0.4249691915238918, 0.}}, 
         0.039622005441498506`], 
        ArrowBox[{{0., 0.2362710802867125}, {0.9820868030159834, 
         0.5378517228336631}}, 0.039622005441498506`], 
        ArrowBox[BezierCurveBox[{{0.9248906935785586, 2.5948753380752345`}, {
         0.6363484131554912, 2.168585390667191}, {0.1511035505050209, 
         1.9967797151929974`}}], 0.039622005441498506`], 
        ArrowBox[{{1.8219976268819664`, 2.140625613878992}, {
         0.9248906935785586, 2.5948753380752345`}}, 0.039622005441498506`], 
        ArrowBox[BezierCurveBox[{{3.4474468859323046`, 0.9141450711858347}, {
         2.796737404793938, 0.8060547159494365}, {2.208895561671419, 
         1.1053009710852453`}}], 0.039622005441498506`], 
        ArrowBox[BezierCurveBox[{{3.4474468859323046`, 0.9141450711858347}, {
         3.9570125030770607`, 1.0025076111869007`}, {4.41955370270819, 
         0.7711622086071279}}], 0.039622005441498506`], 
        ArrowBox[BezierCurveBox[{{0.1833840113341476, 0.8910707688656929}, {
         0.6408190110238831, 0.8458005296907395}, {0.9820868030159834, 
         0.5378517228336631}}], 0.039622005441498506`], 
        ArrowBox[{{0.1833840113341476, 0.8910707688656929}, {0., 
         0.2362710802867125}}, 0.039622005441498506`]}, 
       {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[
        0.7]}], {
         DiskBox[{0.1511035505050209, 1.9967797151929974}, 
          0.039622005441498506], 
         InsetBox["1", 
          Offset[{2, 2}, {0.1907255559465194, 2.0364017206344958}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.4249691915238918, 0.}, 0.039622005441498506], 
         InsetBox["2", 
          Offset[{2, 2}, {0.4645911969653903, 0.039622005441498506}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.9820868030159834, 0.5378517228336631}, 
          0.039622005441498506], 
         InsetBox["3", 
          Offset[{2, 2}, {1.021708808457482, 0.5774737282751616}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{2.208895561671419, 1.1053009710852453}, 
          0.039622005441498506], 
         InsetBox["4", 
          Offset[{2, 2}, {2.2485175671129176, 1.1449229765267437}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{4.41955370270819, 0.7711622086071279}, 
          0.039622005441498506], 
         InsetBox["5", 
          Offset[{2, 2}, {4.459175708149688, 0.8107842140486264}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.2362710802867125}, 0.039622005441498506], 
         InsetBox["6", 
          Offset[{2, 2}, {0.039622005441498506, 0.27589308572821103}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.9248906935785586, 2.5948753380752345}, 
          0.039622005441498506], 
         InsetBox["7", 
          Offset[{2, 2}, {0.9645126990200571, 2.634497343516733}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.8219976268819664, 2.140625613878992}, 
          0.039622005441498506], 
         InsetBox["8", 
          Offset[{2, 2}, {1.8616196323234648, 2.1802476193204905}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{3.4474468859323046, 0.9141450711858347}, 
          0.039622005441498506], 
         InsetBox["9", 
          Offset[{2, 2}, {3.487068891373803, 0.9537670766273332}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.1833840113341476, 0.8910707688656929}, 
          0.039622005441498506], 
         InsetBox["10", 
          Offset[{2, 2}, {0.22300601677564613, 0.9306927743071914}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}}}],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FormatType->TraditionalForm,
  FrameTicks->None]], "Output",
 CellChangeTimes->{
  3.829373790259904*^9, {3.8293740930174017`*^9, 
   3.829374102404821*^9}},ExpressionUUID->"efaca40e-659e-44c5-bd28-\
8404f23d5796"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{
   "1", ",", "2", ",", "3", ",", "4", ",", "5", ",", "6", ",", "7", ",", "8", 
    ",", "9", ",", "10"}], "}"}], "}"}]], "Output",
 CellChangeTimes->{
  3.829373790259904*^9, {3.8293740930174017`*^9, 
   3.829374102433958*^9}},ExpressionUUID->"b6c9f4ab-8258-4106-a1db-\
e2a9aabb8823"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FromGraphToBipartite", "[", "g", "]"}]], "Input",
 CellChangeTimes->{
  3.828855531067569*^9},ExpressionUUID->"0aa855e4-1145-48af-826a-\
c9cd15e7240b"],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{
      "x1", " x7", " x10", "x2", "x3", " x2", " x4", "x4", " x8", " x9", "x5",
        "x6", " x3", "x7", " x1", "x8", "x9", " x5", "x10", " x6"}, {{{1, 
       2}, {1, 3}, {4, 3}, {5, 6}, {5, 7}, {5, 3}, {8, 9}, {8, 10}, {11, 
       10}, {12, 6}, {12, 13}, {14, 15}, {16, 2}, {17, 7}, {17, 18}, {19, 
       13}, {19, 20}}, Null}, {
      GraphLayout -> "BipartiteEmbedding", VertexLabels -> {"Name"}}]]}, 
    TagBox[GraphicsGroupBox[{
       {Hue[0.6, 0.7, 0.5], Opacity[0.7], Arrowheads[Medium], 
        ArrowBox[CompressedData["
1:eJxTTMoPSmVmYGAQBGImKBY45uW4duEpewupPoEqlk/7y62+KBqUf4Hzccl/
+ez/r135PVwexsclX765+ba03Sui5WF8XPK/irbvWB/xFC4/89iiJ1PWMR5Y
d/tTxb4tP+B8XPJ7Tj9IeLrmB1w/jI9LHmYfLvehy9cavZ7qXPwALh8tf6bn
FBPrgUMRmitMQz7D+TB5mHpc4c/4xPbZOunrOP2PLg/jw+ShNE73ocvD+ABc
qSMt
         "], 0.025917465579044896`]}, 
       {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[
        0.7]}], {
         DiskBox[{0.2080589836892135, -1.1260929724391087}, 
          0.025917465579044896], 
         InsetBox["\<\"x1\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -1.1001755068600638}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -1.1260929724391087}, 
          0.025917465579044896], 
         InsetBox["\<\" x7\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -1.1001755068600638}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -0.9730873076474595}, 
          0.025917465579044896], 
         InsetBox["\<\" x10\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -0.9471698420684147}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -0.9730873076474595}, 
          0.025917465579044896], 
         InsetBox["\<\"x2\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -0.9471698420684147}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -0.8200816428558103}, 
          0.025917465579044896], 
         InsetBox["\<\"x3\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -0.7941641772767654}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -0.8200816428558103}, 
          0.025917465579044896], 
         InsetBox["\<\" x2\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -0.7941641772767654}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -0.6670759780641611}, 
          0.025917465579044896], 
         InsetBox["\<\" x4\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -0.6411585124851162}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -2.210244928567431}, 
          0.025917465579044896], 
         InsetBox["\<\"x4\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -2.184327462988386}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.5441269611890038, -2.210244928567431}, 
          0.025917465579044896], 
         InsetBox["\<\" x8\"\>", 
          Offset[{2, 2}, {1.5700444267680487, -2.184327462988386}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.5441269611890038, -1.5422109398175357}, 
          0.025917465579044896], 
         InsetBox["\<\" x9\"\>", 
          Offset[{2, 2}, {1.5700444267680487, -1.5162934742384908}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -1.5422109398175357}, 
          0.025917465579044896], 
         InsetBox["\<\"x5\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -1.5162934742384908}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -0.6670759780641611}, 
          0.025917465579044896], 
         InsetBox["\<\"x6\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -0.6411585124851162}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -0.5140703132725118}, 
          0.025917465579044896], 
         InsetBox["\<\" x3\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -0.48815284769346695}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -2.626362895945858}, 
          0.025917465579044896], 
         InsetBox["\<\"x7\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -2.600445430366813}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2080589836892135, -2.626362895945858}, 
          0.025917465579044896], 
         InsetBox["\<\" x1\"\>", 
          Offset[{2, 2}, {1.2339764492682583, -2.600445430366813}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -0.5140703132725118}, 
          0.025917465579044896], 
         InsetBox["\<\"x8\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -0.48815284769346695}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -0.36106464848086267}, 
          0.025917465579044896], 
         InsetBox["\<\"x9\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -0.3351471829018178}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -0.36106464848086267}, 
          0.025917465579044896], 
         InsetBox["\<\" x5\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -0.3351471829018178}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -0.2080589836892135}, 
          0.025917465579044896], 
         InsetBox["\<\"x10\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -0.1821415181101686}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -0.2080589836892135}, 
          0.025917465579044896], 
         InsetBox["\<\" x6\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -0.1821415181101686}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}}}],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FormatType->TraditionalForm,
  FrameTicks->None]], "Output",
 CellChangeTimes->{{3.828855531299037*^9, 3.828855561182613*^9}, 
   3.828970494593837*^9, 3.8290140932741528`*^9, {3.82937362270293*^9, 
   3.829373634908039*^9}},ExpressionUUID->"edd83acd-5459-4b91-bd34-\
08b5ab7f9c40"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"HighlightGraph", "[", 
  RowBox[{
   RowBox[{"FromGraphToBipartite", "[", "g", "]"}], ",", 
   RowBox[{"FindIndependentEdgeSet", "[", 
    RowBox[{"FromGraphToBipartite", "[", "g", "]"}], "]"}], ",", 
   RowBox[{"GraphLayout", "\[Rule]", "\"\<BipartiteEmbedding\>\""}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.829373652849792*^9, 
  3.829373654570779*^9}},ExpressionUUID->"d3f84f01-69e8-41dd-be83-\
220c4e4e55e5"],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{
      "x1", " x7", " x10", "x2", "x3", " x2", " x4", "x4", " x8", " x9", "x5",
        "x6", " x3", "x7", " x1", "x8", "x9", " x5", "x10", " x6"}, {{{1, 
       2}, {1, 3}, {4, 3}, {5, 6}, {5, 7}, {5, 3}, {8, 9}, {8, 10}, {11, 
       10}, {12, 6}, {12, 13}, {14, 15}, {16, 2}, {17, 7}, {17, 18}, {19, 
       13}, {19, 20}}, Null}, {GraphHighlight -> {
         DirectedEdge["x2", " x10"], 
         DirectedEdge["x5", " x9"], 
         DirectedEdge["x1", " x7"], 
         DirectedEdge["x10", " x3"], 
         DirectedEdge["x7", " x1"], 
         DirectedEdge["x4", " x8"], 
         DirectedEdge["x9", " x5"], 
         DirectedEdge["x3", " x4"], 
         DirectedEdge["x6", " x2"]}, GraphLayout -> "BipartiteEmbedding", 
       VertexLabels -> {"Name"}}]]}, 
    TagBox[GraphicsGroupBox[{
       {Hue[0.6, 0.7, 0.5], Opacity[0.7], Arrowheads[Medium], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2080589836892135, -1.1260929724391087`}, {
          1.279098637230758, -1.1260929724391087`}}, 0.025917465579044896`]}, 
        ArrowBox[{{0.2080589836892135, -1.1260929724391087`}, {
         1.279098637230758, -0.9730873076474595}}, 0.025917465579044896`], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2080589836892135, -0.9730873076474595}, {
          1.279098637230758, -0.9730873076474595}}, 0.025917465579044896`]}, 
        ArrowBox[{{0.2080589836892135, -0.8200816428558103}, {
         1.279098637230758, -0.9730873076474595}}, 0.025917465579044896`], 
        ArrowBox[{{0.2080589836892135, -0.8200816428558103}, {
         1.279098637230758, -0.8200816428558103}}, 0.025917465579044896`], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2080589836892135, -0.8200816428558103}, {
          1.279098637230758, -0.6670759780641611}}, 0.025917465579044896`]}, 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2080589836892135, -2.210244928567431}, {
          1.5441269611890038`, -2.210244928567431}}, 0.025917465579044896`]}, 
        ArrowBox[{{0.2080589836892135, -2.210244928567431}, {
         1.5441269611890038`, -1.5422109398175357`}}, 
         0.025917465579044896`], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2080589836892135, -1.5422109398175357`}, {
          1.5441269611890038`, -1.5422109398175357`}}, 
          0.025917465579044896`]}, 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2080589836892135, -0.6670759780641611}, {
          1.279098637230758, -0.8200816428558103}}, 0.025917465579044896`]}, 
        ArrowBox[{{0.2080589836892135, -0.6670759780641611}, {
         1.279098637230758, -0.5140703132725118}}, 0.025917465579044896`], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2080589836892135, -2.626362895945858}, {
          1.2080589836892135`, -2.626362895945858}}, 0.025917465579044896`]}, 
        ArrowBox[{{0.2080589836892135, -0.5140703132725118}, {
         1.279098637230758, -1.1260929724391087`}}, 0.025917465579044896`], 
        ArrowBox[{{0.2080589836892135, -0.36106464848086267`}, {
         1.279098637230758, -0.6670759780641611}}, 0.025917465579044896`], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2080589836892135, -0.36106464848086267`}, {
          1.279098637230758, -0.36106464848086267`}}, 0.025917465579044896`]}, 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0.2080589836892135, -0.2080589836892135}, {
          1.279098637230758, -0.5140703132725118}}, 0.025917465579044896`]}, 
        ArrowBox[{{0.2080589836892135, -0.2080589836892135}, {
         1.279098637230758, -0.2080589836892135}}, 0.025917465579044896`]}, 
       {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[
        0.7]}], {
         DiskBox[{0.2080589836892135, -1.1260929724391087}, 
          0.025917465579044896], 
         InsetBox["\<\"x1\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -1.1001755068600638}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -1.1260929724391087}, 
          0.025917465579044896], 
         InsetBox["\<\" x7\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -1.1001755068600638}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -0.9730873076474595}, 
          0.025917465579044896], 
         InsetBox["\<\" x10\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -0.9471698420684147}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -0.9730873076474595}, 
          0.025917465579044896], 
         InsetBox["\<\"x2\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -0.9471698420684147}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -0.8200816428558103}, 
          0.025917465579044896], 
         InsetBox["\<\"x3\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -0.7941641772767654}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -0.8200816428558103}, 
          0.025917465579044896], 
         InsetBox["\<\" x2\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -0.7941641772767654}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -0.6670759780641611}, 
          0.025917465579044896], 
         InsetBox["\<\" x4\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -0.6411585124851162}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -2.210244928567431}, 
          0.025917465579044896], 
         InsetBox["\<\"x4\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -2.184327462988386}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.5441269611890038, -2.210244928567431}, 
          0.025917465579044896], 
         InsetBox["\<\" x8\"\>", 
          Offset[{2, 2}, {1.5700444267680487, -2.184327462988386}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.5441269611890038, -1.5422109398175357}, 
          0.025917465579044896], 
         InsetBox["\<\" x9\"\>", 
          Offset[{2, 2}, {1.5700444267680487, -1.5162934742384908}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -1.5422109398175357}, 
          0.025917465579044896], 
         InsetBox["\<\"x5\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -1.5162934742384908}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -0.6670759780641611}, 
          0.025917465579044896], 
         InsetBox["\<\"x6\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -0.6411585124851162}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -0.5140703132725118}, 
          0.025917465579044896], 
         InsetBox["\<\" x3\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -0.48815284769346695}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -2.626362895945858}, 
          0.025917465579044896], 
         InsetBox["\<\"x7\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -2.600445430366813}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.2080589836892135, -2.626362895945858}, 
          0.025917465579044896], 
         InsetBox["\<\" x1\"\>", 
          Offset[{2, 2}, {1.2339764492682583, -2.600445430366813}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -0.5140703132725118}, 
          0.025917465579044896], 
         InsetBox["\<\"x8\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -0.48815284769346695}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -0.36106464848086267}, 
          0.025917465579044896], 
         InsetBox["\<\"x9\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -0.3351471829018178}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -0.36106464848086267}, 
          0.025917465579044896], 
         InsetBox["\<\" x5\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -0.3351471829018178}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0.2080589836892135, -0.2080589836892135}, 
          0.025917465579044896], 
         InsetBox["\<\"x10\"\>", 
          Offset[{2, 2}, {0.2339764492682584, -0.1821415181101686}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.279098637230758, -0.2080589836892135}, 
          0.025917465579044896], 
         InsetBox["\<\" x6\"\>", 
          Offset[{2, 2}, {1.3050161028098028, -0.1821415181101686}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}}}],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FormatType->TraditionalForm,
  FrameTicks->None]], "Output",
 CellChangeTimes->{
  3.829373656718486*^9},ExpressionUUID->"ab4b20eb-3f1d-4a57-acae-\
6dd0058537a4"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FromGraphToBipartiteInOut", "[", "g", "]"}]], "Input",
 CellChangeTimes->{{3.828970825146286*^9, 
  3.828970826631509*^9}},ExpressionUUID->"ddf28e7d-3058-4dba-a990-\
4d167b059795"],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{
      "x1", " x7", " x10", "x2", "x3", " x2", " x4", "x4", " x8", " x9", "x5",
        "x6", " x3", "x7", " x1", "x8", "x9", " x5", "x10", " x6", "u1", "u2",
        "u3", "u4", "u5", "u6", "u7", "u8", "u9", "u10", "y1", "y2", "y3", 
       "y4", "y5", "y6", "y7", "y8", "y9", "y10"}, {{{1, 2}, {1, 3}, {4, 3}, {
       5, 6}, {5, 7}, {5, 3}, {8, 9}, {8, 10}, {11, 10}, {12, 6}, {12, 13}, {
       14, 15}, {16, 2}, {17, 7}, {17, 18}, {19, 13}, {19, 20}, {21, 15}, {22,
        6}, {23, 13}, {24, 7}, {25, 18}, {26, 20}, {27, 2}, {28, 9}, {29, 
       10}, {30, 3}, {1, 31}, {4, 32}, {5, 33}, {8, 34}, {11, 35}, {12, 36}, {
       14, 37}, {16, 38}, {17, 39}, {19, 40}, {21, 31}, {22, 32}, {23, 33}, {
       24, 34}, {25, 35}, {26, 36}, {27, 37}, {28, 38}, {29, 39}, {30, 40}}, 
       Null}, {EdgeWeight -> {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
        3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 
        2, 2, 2, 2, 2, 2, 2, 2}, GraphLayout -> "BipartiteEmbedding", 
       VertexLabels -> {"Name"}}]]}, 
    TagBox[GraphicsGroupBox[{
       {Hue[0.6, 0.7, 0.5], Opacity[0.7], Arrowheads[0.029855907012080796`], 
        ArrowBox[CompressedData["
1:eJyFlL9rAkEQhY8IVtY2IlEkiBYKIf2V9oJVGhEEO0FsBG1tDalsU6SJjWDv
IRgCSRBU8AfBQBAC+QeEpIrgvC0ePDw4juXbmXVmvzFZqRerIc/z8sf3wl48
u/Tb7Cn6ExwyN++j2p+PteKD1O+y3/iW/D55t+olHn1w7FfxzG+vN5P1MHDx
rcv0tjvby3jmWCteiJU+m9kvyU/fV3c+9oNncuGX58guUHx6VZk/TNeSl+Pj
j0574fIjn4oX3MVjv6qfuZ0vuZ3n8mM/9SdQ3Op18div/GJuv9/Fmw/y/phj
rbj54/Kbr7I/zLFW3Orj/L7qH3OeH8yDul/mPD/wWdXHnP2Hr6r/zNlv+Kru
hzn7DR9V/5mzv/BR+cec/YWPav6Zs7/wTc03c/YTPp35/+X6/H+gjHG0
         "], 
         0.01971161135153643]}, 
       {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[
        0.7]}], {DiskBox[{0., -0.7840169943749477}, 0.01971161135153643], 
         InsetBox["\<\"x1\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.7643053830234112}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.7840169943749477}, 
          0.01971161135153643], 
         InsetBox["\<\" x7\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.7643053830234112}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.7014888897039006}, 
          0.01971161135153643], 
         InsetBox["\<\" x10\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.6817772783523641}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.7014888897039006}, 0.01971161135153643], 
         InsetBox["\<\"x2\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.6817772783523641}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.6189607850328535}, 0.01971161135153643], 
         InsetBox["\<\"x3\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.599249173681317}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.6189607850328535}, 
          0.01971161135153643], 
         InsetBox["\<\" x2\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.599249173681317}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.5364326803618064}, 
          0.01971161135153643], 
         InsetBox["\<\" x4\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.5167210690102699}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.5364326803618064}, 0.01971161135153643], 
         InsetBox["\<\"x4\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.5167210690102699}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.4539045756907592}, 
          0.01971161135153643], 
         InsetBox["\<\" x8\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.4341929643392228}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.37137647101971205}, 
          0.01971161135153643], 
         InsetBox["\<\" x9\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.3516648596681756}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.4539045756907592}, 0.01971161135153643], 
         InsetBox["\<\"x5\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.4341929643392228}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.37137647101971205}, 0.01971161135153643], 
         InsetBox["\<\"x6\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.3516648596681756}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.28884836634866495}, 
          0.01971161135153643], 
         InsetBox["\<\" x3\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.2691367549971285}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.28884836634866495}, 0.01971161135153643], 
         InsetBox["\<\"x7\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.2691367549971285}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.2063202616776178}, 
          0.01971161135153643], 
         InsetBox["\<\" x1\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.18660865032608137}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.2063202616776178}, 0.01971161135153643], 
         InsetBox["\<\"x8\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.18660865032608137}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.12379215700657069}, 0.01971161135153643], 
         InsetBox["\<\"x9\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.10408054565503426}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.12379215700657069}, 
          0.01971161135153643], 
         InsetBox["\<\" x5\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.10408054565503426}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.04126405233552356}, 0.01971161135153643], 
         InsetBox["\<\"x10\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.021552440983987134}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.04126405233552356}, 
          0.01971161135153643], 
         InsetBox["\<\" x6\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.021552440983987134}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.04126405233552356}, 0.01971161135153643], 
         InsetBox["\<\"u1\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.06097566368705999}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.12379215700657069}, 0.01971161135153643], 
         InsetBox["\<\"u2\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.14350376835810713}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.2063202616776178}, 0.01971161135153643], 
         InsetBox["\<\"u3\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.22603187302915423}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.28884836634866495}, 0.01971161135153643], 
         InsetBox["\<\"u4\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.3085599777002014}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.37137647101971205}, 0.01971161135153643], 
         InsetBox["\<\"u5\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.3910880823712485}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.4539045756907592}, 0.01971161135153643], 
         InsetBox["\<\"u6\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.47361618704229563}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.5364326803618064}, 0.01971161135153643], 
         InsetBox["\<\"u7\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.5561442917133428}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.6189607850328535}, 0.01971161135153643], 
         InsetBox["\<\"u8\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.6386723963843899}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.7014888897039006}, 0.01971161135153643], 
         InsetBox["\<\"u9\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.721200501055437}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.7840169943749477}, 0.01971161135153643], 
         InsetBox["\<\"u10\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.8037286057264841}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.04126405233552356}, 
          0.01971161135153643], 
         InsetBox["\<\"y1\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.06097566368705999}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.12379215700657069}, 
          0.01971161135153643], 
         InsetBox["\<\"y2\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.14350376835810713}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.2063202616776178}, 
          0.01971161135153643], 
         InsetBox["\<\"y3\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.22603187302915423}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.28884836634866495}, 
          0.01971161135153643], 
         InsetBox["\<\"y4\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.3085599777002014}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.37137647101971205}, 
          0.01971161135153643], 
         InsetBox["\<\"y5\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.3910880823712485}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.4539045756907592}, 
          0.01971161135153643], 
         InsetBox["\<\"y6\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.47361618704229563}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.5364326803618064}, 
          0.01971161135153643], 
         InsetBox["\<\"y7\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.5561442917133428}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.6189607850328535}, 
          0.01971161135153643], 
         InsetBox["\<\"y8\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.6386723963843899}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.7014888897039006}, 
          0.01971161135153643], 
         InsetBox["\<\"y9\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.721200501055437}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.7840169943749477}, 
          0.01971161135153643], 
         InsetBox["\<\"y10\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.8037286057264841}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}}}],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FormatType->TraditionalForm,
  FrameTicks->None]], "Output",
 CellChangeTimes->{{3.828970827446974*^9, 3.8289708444361677`*^9}, 
   3.829014096452712*^9, 3.829014379609538*^9, 3.8290145749462557`*^9, 
   3.829014609936533*^9, 
   3.829373638328989*^9},ExpressionUUID->"627399a3-3c1e-4947-88e6-\
ec0e55e25d49"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"HighlightGraph", "[", 
  RowBox[{
   RowBox[{"FromGraphToBipartiteInOut", "[", "g", "]"}], ",", 
   RowBox[{"FindIndependentEdgeSet", "[", 
    RowBox[{"FromGraphToBipartiteInOut", "[", "g", "]"}], "]"}], ",", 
   RowBox[{"GraphLayout", "\[Rule]", "\"\<BipartiteEmbedding\>\""}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.828970870423959*^9, 
  3.8289708737919197`*^9}},ExpressionUUID->"17f48c55-fc00-40ab-8199-\
601c89befb3c"],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{
      "x1", " x7", " x10", "x2", "x3", " x2", " x4", "x4", " x8", " x9", "x5",
        "x6", " x3", "x7", " x1", "x8", "x9", " x5", "x10", " x6", "u1", "u2",
        "u3", "u4", "u5", "u6", "u7", "u8", "u9", "u10", "y1", "y2", "y3", 
       "y4", "y5", "y6", "y7", "y8", "y9", "y10"}, {{{1, 2}, {1, 3}, {4, 3}, {
       5, 6}, {5, 7}, {5, 3}, {8, 9}, {8, 10}, {11, 10}, {12, 6}, {12, 13}, {
       14, 15}, {16, 2}, {17, 7}, {17, 18}, {19, 13}, {19, 20}, {21, 15}, {22,
        6}, {23, 13}, {24, 7}, {25, 18}, {26, 20}, {27, 2}, {28, 9}, {29, 
       10}, {30, 3}, {1, 31}, {4, 32}, {5, 33}, {8, 34}, {11, 35}, {12, 36}, {
       14, 37}, {16, 38}, {17, 39}, {19, 40}, {21, 31}, {22, 32}, {23, 33}, {
       24, 34}, {25, 35}, {26, 36}, {27, 37}, {28, 38}, {29, 39}, {30, 40}}, 
       Null}, {EdgeWeight -> {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
        3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 
        2, 2, 2, 2, 2, 2, 2, 2}, GraphHighlight -> {
         DirectedEdge["u6", "y6"], 
         DirectedEdge["x10", " x6"], 
         DirectedEdge["x2", "y2"], 
         DirectedEdge["u9", "y9"], 
         DirectedEdge["u2", " x2"], 
         DirectedEdge["x6", " x3"], 
         DirectedEdge["x8", " x7"], 
         DirectedEdge["x1", " x10"], 
         DirectedEdge["x5", " x9"], 
         DirectedEdge["x7", " x1"], 
         DirectedEdge["u8", "y8"], 
         DirectedEdge["u7", "y7"], 
         DirectedEdge["x4", " x8"], 
         DirectedEdge["u5", "y5"], 
         DirectedEdge["x9", " x5"], 
         DirectedEdge["u1", "y1"], 
         DirectedEdge["u3", "y3"], 
         DirectedEdge["u10", "y10"], 
         DirectedEdge["u4", "y4"], 
         DirectedEdge["x3", " x4"]}, GraphLayout -> "BipartiteEmbedding", 
       VertexLabels -> {"Name"}}]]}, 
    TagBox[GraphicsGroupBox[{
       {Hue[0.6, 0.7, 0.5], Opacity[0.7], Arrowheads[0.029855907012080796`], 
        ArrowBox[{{0., -0.7840169943749477}, {
         1.6505620934209424`, -0.7840169943749477}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.7840169943749477}, {
          1.6505620934209424`, -0.7014888897039006}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.7840169943749477}, {1.6505620934209424`, 
         0.04126405233552356}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.7014888897039006}, {
         1.6505620934209424`, -0.7014888897039006}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.7014888897039006}, {1.6505620934209424`, 
          0.12379215700657069`}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.6189607850328535}, {
         1.6505620934209424`, -0.7014888897039006}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.6189607850328535}, {
         1.6505620934209424`, -0.6189607850328535}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.6189607850328535}, {
          1.6505620934209424`, -0.5364326803618064}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.6189607850328535}, {1.6505620934209424`, 
         0.2063202616776178}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.5364326803618064}, {
          1.6505620934209424`, -0.4539045756907592}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.5364326803618064}, {
         1.6505620934209424`, -0.37137647101971205`}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.5364326803618064}, {1.6505620934209424`, 
         0.28884836634866495`}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.4539045756907592}, {
          1.6505620934209424`, -0.37137647101971205`}}, 0.01971161135153643]},
         ArrowBox[{{0., -0.4539045756907592}, {1.6505620934209424`, 
         0.37137647101971205`}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.37137647101971205`}, {
         1.6505620934209424`, -0.6189607850328535}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.37137647101971205`}, {
          1.6505620934209424`, -0.28884836634866495`}}, 0.01971161135153643]},
         ArrowBox[{{0., -0.37137647101971205`}, {1.6505620934209424`, 
         0.4539045756907592}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.28884836634866495`}, {
          1.6505620934209424`, -0.2063202616776178}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.28884836634866495`}, {1.6505620934209424`, 
         0.5364326803618064}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.2063202616776178}, {
          1.6505620934209424`, -0.7840169943749477}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.2063202616776178}, {1.6505620934209424`, 
         0.6189607850328535}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.12379215700657069`}, {
         1.6505620934209424`, -0.5364326803618064}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.12379215700657069`}, {
          1.6505620934209424`, -0.12379215700657069`}}, 0.01971161135153643]},
         ArrowBox[{{0., -0.12379215700657069`}, {1.6505620934209424`, 
         0.7014888897039006}}, 0.01971161135153643], 
        ArrowBox[{{0., -0.04126405233552356}, {
         1.6505620934209424`, -0.28884836634866495`}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., -0.04126405233552356}, {
          1.6505620934209424`, -0.04126405233552356}}, 0.01971161135153643]}, 
        ArrowBox[{{0., -0.04126405233552356}, {1.6505620934209424`, 
         0.7840169943749477}}, 0.01971161135153643], 
        ArrowBox[{{0., 0.04126405233552356}, {
         1.6505620934209424`, -0.2063202616776178}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.04126405233552356}, {1.6505620934209424`, 
          0.04126405233552356}}, 0.01971161135153643]}, 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.12379215700657069`}, {
          1.6505620934209424`, -0.6189607850328535}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.12379215700657069`}, {1.6505620934209424`, 
         0.12379215700657069`}}, 0.01971161135153643], 
        ArrowBox[{{0., 0.2063202616776178}, {
         1.6505620934209424`, -0.28884836634866495`}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.2063202616776178}, {1.6505620934209424`, 
          0.2063202616776178}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.28884836634866495`}, {
         1.6505620934209424`, -0.5364326803618064}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.28884836634866495`}, {1.6505620934209424`, 
          0.28884836634866495`}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.37137647101971205`}, {
         1.6505620934209424`, -0.12379215700657069`}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.37137647101971205`}, {1.6505620934209424`, 
          0.37137647101971205`}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.4539045756907592}, {
         1.6505620934209424`, -0.04126405233552356}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.4539045756907592}, {1.6505620934209424`, 
          0.4539045756907592}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.5364326803618064}, {
         1.6505620934209424`, -0.7840169943749477}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.5364326803618064}, {1.6505620934209424`, 
          0.5364326803618064}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.6189607850328535}, {
         1.6505620934209424`, -0.4539045756907592}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.6189607850328535}, {1.6505620934209424`, 
          0.6189607850328535}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.7014888897039006}, {
         1.6505620934209424`, -0.37137647101971205`}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.7014888897039006}, {1.6505620934209424`, 
          0.7014888897039006}}, 0.01971161135153643]}, 
        ArrowBox[{{0., 0.7840169943749477}, {
         1.6505620934209424`, -0.7014888897039006}}, 0.01971161135153643], 
        {Hue[1, 1, 0.7], Opacity[1], 
         ArrowBox[{{0., 0.7840169943749477}, {1.6505620934209424`, 
          0.7840169943749477}}, 0.01971161135153643]}}, 
       {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[
        0.7]}], {DiskBox[{0., -0.7840169943749477}, 0.01971161135153643], 
         InsetBox["\<\"x1\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.7643053830234112}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.7840169943749477}, 
          0.01971161135153643], 
         InsetBox["\<\" x7\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.7643053830234112}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.7014888897039006}, 
          0.01971161135153643], 
         InsetBox["\<\" x10\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.6817772783523641}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.7014888897039006}, 0.01971161135153643], 
         InsetBox["\<\"x2\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.6817772783523641}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.6189607850328535}, 0.01971161135153643], 
         InsetBox["\<\"x3\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.599249173681317}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.6189607850328535}, 
          0.01971161135153643], 
         InsetBox["\<\" x2\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.599249173681317}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.5364326803618064}, 
          0.01971161135153643], 
         InsetBox["\<\" x4\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.5167210690102699}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.5364326803618064}, 0.01971161135153643], 
         InsetBox["\<\"x4\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.5167210690102699}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.4539045756907592}, 
          0.01971161135153643], 
         InsetBox["\<\" x8\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.4341929643392228}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.37137647101971205}, 
          0.01971161135153643], 
         InsetBox["\<\" x9\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.3516648596681756}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.4539045756907592}, 0.01971161135153643], 
         InsetBox["\<\"x5\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.4341929643392228}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.37137647101971205}, 0.01971161135153643], 
         InsetBox["\<\"x6\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.3516648596681756}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.28884836634866495}, 
          0.01971161135153643], 
         InsetBox["\<\" x3\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.2691367549971285}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.28884836634866495}, 0.01971161135153643], 
         InsetBox["\<\"x7\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.2691367549971285}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.2063202616776178}, 
          0.01971161135153643], 
         InsetBox["\<\" x1\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.18660865032608137}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.2063202616776178}, 0.01971161135153643], 
         InsetBox["\<\"x8\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.18660865032608137}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.12379215700657069}, 0.01971161135153643], 
         InsetBox["\<\"x9\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.10408054565503426}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.12379215700657069}, 
          0.01971161135153643], 
         InsetBox["\<\" x5\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.10408054565503426}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., -0.04126405233552356}, 0.01971161135153643], 
         InsetBox["\<\"x10\"\>", 
          Offset[{2, 2}, {0.01971161135153643, -0.021552440983987134}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, -0.04126405233552356}, 
          0.01971161135153643], 
         InsetBox["\<\" x6\"\>", 
          Offset[{2, 2}, {1.670273704772479, -0.021552440983987134}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.04126405233552356}, 0.01971161135153643], 
         InsetBox["\<\"u1\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.06097566368705999}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.12379215700657069}, 0.01971161135153643], 
         InsetBox["\<\"u2\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.14350376835810713}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.2063202616776178}, 0.01971161135153643], 
         InsetBox["\<\"u3\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.22603187302915423}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.28884836634866495}, 0.01971161135153643], 
         InsetBox["\<\"u4\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.3085599777002014}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.37137647101971205}, 0.01971161135153643], 
         InsetBox["\<\"u5\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.3910880823712485}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.4539045756907592}, 0.01971161135153643], 
         InsetBox["\<\"u6\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.47361618704229563}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.5364326803618064}, 0.01971161135153643], 
         InsetBox["\<\"u7\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.5561442917133428}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.6189607850328535}, 0.01971161135153643], 
         InsetBox["\<\"u8\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.6386723963843899}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.7014888897039006}, 0.01971161135153643], 
         InsetBox["\<\"u9\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.721200501055437}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{0., 0.7840169943749477}, 0.01971161135153643], 
         InsetBox["\<\"u10\"\>", 
          Offset[{2, 2}, {0.01971161135153643, 0.8037286057264841}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.04126405233552356}, 
          0.01971161135153643], 
         InsetBox["\<\"y1\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.06097566368705999}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.12379215700657069}, 
          0.01971161135153643], 
         InsetBox["\<\"y2\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.14350376835810713}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.2063202616776178}, 
          0.01971161135153643], 
         InsetBox["\<\"y3\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.22603187302915423}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.28884836634866495}, 
          0.01971161135153643], 
         InsetBox["\<\"y4\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.3085599777002014}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.37137647101971205}, 
          0.01971161135153643], 
         InsetBox["\<\"y5\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.3910880823712485}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.4539045756907592}, 
          0.01971161135153643], 
         InsetBox["\<\"y6\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.47361618704229563}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.5364326803618064}, 
          0.01971161135153643], 
         InsetBox["\<\"y7\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.5561442917133428}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.6189607850328535}, 
          0.01971161135153643], 
         InsetBox["\<\"y8\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.6386723963843899}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.7014888897039006}, 
          0.01971161135153643], 
         InsetBox["\<\"y9\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.721200501055437}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}, {
         DiskBox[{1.6505620934209424, 0.7840169943749477}, 
          0.01971161135153643], 
         InsetBox["\<\"y10\"\>", 
          Offset[{2, 2}, {1.670273704772479, 0.8037286057264841}], 
          ImageScaled[{0, 0}],
          BaseStyle->"Graphics"]}}}],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FormatType->TraditionalForm,
  FrameTicks->None]], "Output",
 CellChangeTimes->{3.8289708744789677`*^9, 3.8289713340899553`*^9, 
  3.8290141081024923`*^9, 3.829014622348688*^9, 
  3.829014985392853*^9},ExpressionUUID->"a526765b-a05f-46d8-8a04-\
873698cfb529"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ComputeSetsIandJ", "[", "g", "]"}]], "Input",
 CellChangeTimes->{
  3.829373914318542*^9},ExpressionUUID->"6ec5391f-5234-4797-9bf1-\
5e8a591e2adc"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", "\<\"x2\"\>", "}"}], ",", 
   RowBox[{"{", "\<\"x2\"\>", "}"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.829373915348969*^9, 3.829373931694935*^9}, 
   3.8293739767204447`*^9, 3.8293740151300898`*^9, 
   3.829374049297426*^9},ExpressionUUID->"793714d7-301b-43d9-9520-\
296f627b8e75"]
}, Open  ]]
},
WindowSize->{2497, 1556},
WindowMargins->{{Automatic, -2}, {Automatic, 0}},
Magnification:>2. Inherited,
FrontEndVersion->"11.1 for Mac OS X x86 (32-bit, 64-bit Kernel) (April 18, \
2017)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1464, 33, 1931, 48, 269, "Input", "ExpressionUUID" -> \
"b990963d-4306-45e6-a1e3-1f3108a53b1a"],
Cell[3398, 83, 4962, 120, 474, "Input", "ExpressionUUID" -> \
"9f00973d-557e-4f36-9c83-4c8af82ad665"],
Cell[8363, 205, 2562, 64, 269, "Input", "ExpressionUUID" -> \
"a9b2cbb4-d0cc-40e6-a931-cb0d1d3f7c2f"],
Cell[10928, 271, 230, 5, 63, "Input", "ExpressionUUID" -> \
"35540d80-af2b-4fd1-88e3-40679f57fd38"],
Cell[CellGroupData[{
Cell[11183, 280, 1142, 28, 63, "Input", "ExpressionUUID" -> \
"7b3e816d-a372-40be-bd0e-908fb3dca076"],
Cell[12328, 310, 6979, 129, 340, "Output", "ExpressionUUID" -> \
"7c07efa9-5fef-4b5d-90b9-ccba648508b4"]
}, Open  ]],
Cell[CellGroupData[{
Cell[19344, 444, 127, 1, 63, "Input", "ExpressionUUID" -> \
"89c42e8d-81ad-459d-be1d-d21bd553f97d"],
Cell[19474, 447, 286, 7, 63, "Output", "ExpressionUUID" -> \
"23ed0527-a9fb-4952-b210-5e877fc810e2"]
}, Open  ]],
Cell[CellGroupData[{
Cell[19797, 459, 128, 1, 63, "Input", "ExpressionUUID" -> \
"90354fe1-a92d-402a-bf47-24a14aa1a344"],
Cell[19928, 462, 6775, 151, 894, "Output", "ExpressionUUID" -> \
"fc1d3289-dbaf-49ba-90d1-1b4ca5cf0b7a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[26740, 618, 370, 7, 170, "Input", "ExpressionUUID" -> \
"cda0bc4b-3bb1-442a-9f13-1c6d2a324af3"],
Cell[27113, 627, 9420, 192, 1832, "Output", "ExpressionUUID" -> \
"d706542f-71b6-4039-936c-50fff6371353"]
}, Open  ]],
Cell[CellGroupData[{
Cell[36570, 824, 133, 1, 170, "Input", "ExpressionUUID" -> \
"c7e87efb-70cd-4f07-a281-4c63c4c12b0f"],
Cell[36706, 827, 12282, 261, 1452, "Output", "ExpressionUUID" -> \
"8a979f85-f815-4c5e-a530-65f018ddc7ab"]
}, Open  ]],
Cell[CellGroupData[{
Cell[49025, 1093, 380, 7, 170, "Input", "ExpressionUUID" -> \
"a8b980bd-891f-40d2-a02c-69fa91a60f63"],
Cell[49408, 1102, 157189, 2648, 1452, 19168, 384, "CachedBoxData", "BoxData", \
"Output", "ExpressionUUID" -> "75d16b80-6fa4-451d-ad39-080244c01432"]
}, Open  ]],
Cell[CellGroupData[{
Cell[206634, 3755, 124, 1, 170, "Input", "ExpressionUUID" -> \
"3362b476-bb8c-45f9-ba04-b2d742ecf85c"],
Cell[206761, 3758, 401, 11, 286, "Output", "ExpressionUUID" -> \
"99a530ef-ca7d-4f36-b6da-ca591a0f86eb"]
}, Open  ]],
Cell[CellGroupData[{
Cell[207199, 3774, 6836, 129, 532, "Input", "ExpressionUUID" -> \
"a4669000-9533-4778-9c30-b39939f80812"],
Cell[214038, 3905, 6335, 124, 1010, "Output", "ExpressionUUID" -> \
"4d61177f-b5dd-48cf-873d-80f7213599b1"],
Cell[220376, 4031, 341, 9, 170, "Output", "ExpressionUUID" -> \
"4b730e90-9c85-410e-b7a0-658d1cf5c2a3"]
}, Open  ]],
Cell[CellGroupData[{
Cell[220754, 4045, 175, 4, 170, "Input", "ExpressionUUID" -> \
"e3a2146e-585c-4f4c-8990-680a8df146ff"],
Cell[220932, 4051, 6821, 151, 1832, "Output", "ExpressionUUID" -> \
"6fd146dc-5996-4ec5-a27e-e9e1de05c0c9"]
}, Open  ]],
Cell[CellGroupData[{
Cell[227790, 4207, 441, 10, 170, "Input", "ExpressionUUID" -> \
"8f6d80ff-57a7-42fb-a450-9cb761856e7c"],
Cell[228234, 4219, 9503, 197, 1832, "Output", "ExpressionUUID" -> \
"5c80bfb7-b321-45a4-8ce3-ca38e86e20f4"]
}, Open  ]],
Cell[CellGroupData[{
Cell[237774, 4421, 204, 4, 170, "Input", "ExpressionUUID" -> \
"4801fc12-1c28-447b-b9be-ef29ac002005"],
Cell[237981, 4427, 12413, 262, 1452, "Output", "ExpressionUUID" -> \
"fa80f6a3-e9a7-40d1-a421-39be6cb48509"]
}, Open  ]],
Cell[CellGroupData[{
Cell[250431, 4694, 453, 10, 170, "Input", "ExpressionUUID" -> \
"ffeb18d1-cb8e-4460-aa28-9258e6bc35af"],
Cell[250887, 4706, 19238, 385, 1452, "Output", "ExpressionUUID" -> \
"f3c03d65-0a91-4985-98a7-83145703731a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[270162, 5096, 171, 4, 170, "Input", "ExpressionUUID" -> \
"e0c34619-0158-4c5c-8290-bf3c0ebbfa09"],
Cell[270336, 5102, 340, 8, 170, "Output", "ExpressionUUID" -> \
"9fe08afc-93ab-4cc5-8367-110db3cdd037"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature kw0Jr3o4ZsNJXDgmVgp0OsdC *)
