# Heartdiseas


<p class=MsoNormal><b><span lang=AR-SA dir=RTL style='font-size:14.0pt;
line-height:107%;font-family:"Arial",sans-serif;mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin;mso-bidi-theme-font:minor-bidi'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal><b><span style='font-size:14.0pt;line-height:107%'>Data
Loading:<o:p></o:p></span></b></p>

<p class=MsoListParagraphCxSpFirst style='text-indent:-.25in;mso-list:l3 level1 lfo1'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Read the <b>Heart</b> <b>Disease</b>
dataset from the file &quot;Heartdiseas.txt&quot; using read.table.</p>

<p class=MsoListParagraphCxSpLast><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><b><span style='font-size:14.0pt;line-height:107%'>Data
Preprocessing:<o:p></o:p></span></b></p>

<p class=MsoListParagraphCxSpFirst style='text-indent:-.25in;mso-list:l3 level1 lfo1'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Removed the unnecessary
&quot;id&quot; column from the dataset.</p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l3 level1 lfo1'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Checked for columns with
missing values and replaced the missing values in the &quot;slope&quot; column
with the most frequent value.</p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l3 level1 lfo1'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>(Optional) Split the
&quot;age&quot; variable into age groups using cut.default and assigned numeric
labels to the groups.</p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l3 level1 lfo1'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Scaled the columns
&quot;trestbps,&quot; &quot;chol,&quot; &quot;thalach,&quot; and
&quot;oldpeak&quot; using the min_max_scale function.</p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l3 level1 lfo1'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Remove outliers (chol,
trestbps, oldpeak) with the help of boxplot.</p>

<table class=MsoTableGrid border=0 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-yfti-tbllook:1184;mso-padding-alt:
 0in 5.4pt 0in 5.4pt;mso-border-insideh:none;mso-border-insidev:none'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=291 valign=top style='width:218.45pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoListParagraphCxSpMiddle align=center style='margin:0in;
  mso-add-space:auto;text-align:center;line-height:normal'><span
  style='mso-no-proof:yes'><!--[if gte vml 1]><v:shapetype id="_x0000_t75"
   coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe"
   filled="f" stroked="f">
   <v:stroke joinstyle="miter"/>
   <v:formulas>
    <v:f eqn="if lineDrawn pixelLineWidth 0"/>
    <v:f eqn="sum @0 1 0"/>
    <v:f eqn="sum 0 0 @1"/>
    <v:f eqn="prod @2 1 2"/>
    <v:f eqn="prod @3 21600 pixelWidth"/>
    <v:f eqn="prod @3 21600 pixelHeight"/>
    <v:f eqn="sum @0 0 1"/>
    <v:f eqn="prod @6 1 2"/>
    <v:f eqn="prod @7 21600 pixelWidth"/>
    <v:f eqn="sum @8 21600 0"/>
    <v:f eqn="prod @7 21600 pixelHeight"/>
    <v:f eqn="sum @10 21600 0"/>
   </v:formulas>
   <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"/>
   <o:lock v:ext="edit" aspectratio="t"/>
  </v:shapetype><v:shape id="Picture_x0020_1" o:spid="_x0000_i1034" type="#_x0000_t75"
   alt="A picture containing text, screenshot, diagram, rectangle&#10;&#10;Description automatically generated"
   style='width:201pt;height:2in;visibility:visible;mso-wrap-style:square'>
   <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image001.png"
    o:title="A picture containing text, screenshot, diagram, rectangle&#10;&#10;Description automatically generated"/>
  </v:shape><![endif]--><![if !vml]><img width=268 height=192
  src="Heart_Disease_Patients_Report%5b1%5d11_files/image002.jpg"
  alt="A picture containing text, screenshot, diagram, rectangle&#10;&#10;Description automatically generated"
  v:shapes="Picture_x0020_1"><![endif]></span></p>
  </td>
  <td width=285 valign=top style='width:213.55pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoListParagraphCxSpLast align=center style='margin:0in;mso-add-space:
  auto;text-align:center;line-height:normal'><span style='mso-no-proof:yes'><!--[if gte vml 1]><v:shape
   id="Picture_x0020_4" o:spid="_x0000_i1033" type="#_x0000_t75" alt="A picture containing text, screenshot, rectangle, diagram&#10;&#10;Description automatically generated"
   style='width:185.25pt;height:155.25pt;visibility:visible;mso-wrap-style:square'>
   <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image003.png"
    o:title="A picture containing text, screenshot, rectangle, diagram&#10;&#10;Description automatically generated"/>
  </v:shape><![endif]--><![if !vml]><img width=247 height=207
  src="Heart_Disease_Patients_Report%5b1%5d11_files/image004.jpg"
  alt="A picture containing text, screenshot, rectangle, diagram&#10;&#10;Description automatically generated"
  v:shapes="Picture_x0020_4"><![endif]></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1'>
  <td width=291 valign=top style='width:218.45pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoListParagraphCxSpFirst align=center style='margin:0in;mso-add-space:
  auto;text-align:center;line-height:normal'><span style='mso-no-proof:yes'><!--[if gte vml 1]><v:shape
   id="Picture_x0020_2" o:spid="_x0000_i1032" type="#_x0000_t75" alt="A picture containing text, screenshot, diagram, rectangle&#10;&#10;Description automatically generated"
   style='width:203.25pt;height:136.5pt;visibility:visible;mso-wrap-style:square'>
   <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image005.png"
    o:title="A picture containing text, screenshot, diagram, rectangle&#10;&#10;Description automatically generated"/>
  </v:shape><![endif]--><![if !vml]><img width=271 height=182
  src="Heart_Disease_Patients_Report%5b1%5d11_files/image006.jpg"
  alt="A picture containing text, screenshot, diagram, rectangle&#10;&#10;Description automatically generated"
  v:shapes="Picture_x0020_2"><![endif]></span></p>
  </td>
  <td width=285 valign=top style='width:213.55pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoListParagraphCxSpLast align=center style='margin:0in;mso-add-space:
  auto;text-align:center;line-height:normal'><span style='mso-no-proof:yes'><!--[if gte vml 1]><v:shape
   id="Picture_x0020_5" o:spid="_x0000_i1031" type="#_x0000_t75" alt="A picture containing text, screenshot, diagram, rectangle&#10;&#10;Description automatically generated"
   style='width:188.25pt;height:138pt;visibility:visible;mso-wrap-style:square'>
   <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image007.png"
    o:title="A picture containing text, screenshot, diagram, rectangle&#10;&#10;Description automatically generated"/>
  </v:shape><![endif]--><![if !vml]><img width=251 height=184
  src="Heart_Disease_Patients_Report%5b1%5d11_files/image008.jpg"
  alt="A picture containing text, screenshot, diagram, rectangle&#10;&#10;Description automatically generated"
  v:shapes="Picture_x0020_5"><![endif]></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;mso-yfti-lastrow:yes'>
  <td width=291 valign=top style='width:218.45pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoListParagraphCxSpFirst align=center style='margin:0in;mso-add-space:
  auto;text-align:center;line-height:normal'><span style='mso-no-proof:yes'><!--[if gte vml 1]><v:shape
   id="Picture_x0020_3" o:spid="_x0000_i1030" type="#_x0000_t75" alt="A picture containing text, screenshot, diagram, rectangle&#10;&#10;Description automatically generated"
   style='width:189.75pt;height:139.5pt;visibility:visible;mso-wrap-style:square'>
   <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image009.png"
    o:title="A picture containing text, screenshot, diagram, rectangle&#10;&#10;Description automatically generated"/>
  </v:shape><![endif]--><![if !vml]><img width=253 height=186
  src="Heart_Disease_Patients_Report%5b1%5d11_files/image010.jpg"
  alt="A picture containing text, screenshot, diagram, rectangle&#10;&#10;Description automatically generated"
  v:shapes="Picture_x0020_3"><![endif]></span></p>
  </td>
  <td width=285 valign=top style='width:213.55pt;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoListParagraphCxSpLast align=center style='margin:0in;mso-add-space:
  auto;text-align:center;line-height:normal'><span style='mso-no-proof:yes'><!--[if gte vml 1]><v:shape
   id="Picture_x0020_6" o:spid="_x0000_i1029" type="#_x0000_t75" alt="A picture containing text, diagram, screenshot, rectangle&#10;&#10;Description automatically generated"
   style='width:198pt;height:139.5pt;visibility:visible;mso-wrap-style:square'>
   <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image011.png"
    o:title="A picture containing text, diagram, screenshot, rectangle&#10;&#10;Description automatically generated"/>
  </v:shape><![endif]--><![if !vml]><img width=264 height=186
  src="Heart_Disease_Patients_Report%5b1%5d11_files/image012.jpg"
  alt="A picture containing text, diagram, screenshot, rectangle&#10;&#10;Description automatically generated"
  v:shapes="Picture_x0020_6"><![endif]></span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal><b><span style='font-size:14.0pt;line-height:107%'>Data
Exploration:<o:p></o:p></span></b></p>

<p class=MsoListParagraphCxSpFirst style='text-indent:-.25in;mso-list:l6 level1 lfo2'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Checked the data type and
class of the dataset using typeof and class.</p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l6 level1 lfo2'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Calculated the correlation
matrix using cor.</p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l6 level1 lfo2'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Created a heatmap of the
variable correlations using heatmap.</p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle><span style='mso-no-proof:yes'><!--[if gte vml 1]><v:shape
 id="Picture_x0020_7" o:spid="_x0000_i1028" type="#_x0000_t75" alt="A picture containing diagram, square, screenshot, pixel&#10;&#10;Description automatically generated"
 style='width:387.75pt;height:231pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image013.png"
  o:title="A picture containing diagram, square, screenshot, pixel&#10;&#10;Description automatically generated"/>
</v:shape><![endif]--><![if !vml]><img width=517 height=308
src="Heart_Disease_Patients_Report%5b1%5d11_files/image014.jpg"
alt="A picture containing diagram, square, screenshot, pixel&#10;&#10;Description automatically generated"
v:shapes="Picture_x0020_7"><![endif]></span></p>

<p class=MsoListParagraphCxSpMiddle><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l6 level1 lfo2'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Removed the &quot;thalach&quot;
column from the dataset due to negative correlations with other columns.</p>

<p class=MsoListParagraphCxSpLast style='text-indent:-.25in;mso-list:l6 level1 lfo2'><![if !supportLists]><span
style='font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol'><span style='mso-list:Ignore'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Generated a summary of the
dataset using summary.</p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><b><span style='font-size:14.0pt;line-height:107%'>Clustering
Analysis:<o:p></o:p></span></b></p>

<p class=MsoListParagraphCxSpFirst style='text-indent:-.25in;mso-list:l0 level1 lfo3'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>K-means Clustering:</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l1 level2 lfo4'><![if !supportLists]><span
style='font-family:"Courier New";mso-fareast-font-family:"Courier New"'><span
style='mso-list:Ignore'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Determined the optimal
number of clusters using the elbow method and the within-groups sum of squares.</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><span style='mso-no-proof:yes'><!--[if gte vml 1]><v:shape id="Picture_x0020_8"
 o:spid="_x0000_i1027" type="#_x0000_t75" alt="A picture containing text, diagram, screenshot, line&#10;&#10;Description automatically generated"
 style='width:350.25pt;height:263.25pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image015.png"
  o:title="A picture containing text, diagram, screenshot, line&#10;&#10;Description automatically generated"/>
</v:shape><![endif]--><![if !vml]><img width=467 height=351
src="Heart_Disease_Patients_Report%5b1%5d11_files/image016.jpg"
alt="A picture containing text, diagram, screenshot, line&#10;&#10;Description automatically generated"
v:shapes="Picture_x0020_8"><![endif]></span></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l1 level2 lfo4'><![if !supportLists]><span
style='font-family:"Courier New";mso-fareast-font-family:"Courier New"'><span
style='mso-list:Ignore'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Performed k-means
clustering with 4 clusters using kmeans.</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l1 level2 lfo4'><![if !supportLists]><span
style='font-family:"Courier New";mso-fareast-font-family:"Courier New"'><span
style='mso-list:Ignore'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Visualized the clustering
results using fviz_cluster.</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><span style='mso-no-proof:yes'><!--[if gte vml 1]><v:shape id="Picture_x0020_9"
 o:spid="_x0000_i1026" type="#_x0000_t75" alt="A picture containing text, map, diagram, screenshot&#10;&#10;Description automatically generated"
 style='width:371.25pt;height:231.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image017.png"
  o:title="A picture containing text, map, diagram, screenshot&#10;&#10;Description automatically generated"/>
</v:shape><![endif]--><![if !vml]><img width=495 height=309
src="Heart_Disease_Patients_Report%5b1%5d11_files/image018.jpg"
alt="A picture containing text, map, diagram, screenshot&#10;&#10;Description automatically generated"
v:shapes="Picture_x0020_9"><![endif]></span></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo3'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Hierarchical Clustering:</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l4 level2 lfo5'><![if !supportLists]><span
style='font-family:"Courier New";mso-fareast-font-family:"Courier New"'><span
style='mso-list:Ignore'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Computed the distance
matrix using the Euclidean method.</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l4 level2 lfo5'><![if !supportLists]><span
style='font-family:"Courier New";mso-fareast-font-family:"Courier New"'><span
style='mso-list:Ignore'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Performed hierarchical
clustering using hclust.</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l4 level2 lfo5'><![if !supportLists]><span
style='font-family:"Courier New";mso-fareast-font-family:"Courier New"'><span
style='mso-list:Ignore'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Visualized the dendrogram
using fviz_dend.</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><span style='mso-no-proof:yes'><!--[if gte vml 1]><v:shape id="Picture_x0020_10"
 o:spid="_x0000_i1025" type="#_x0000_t75" alt="A picture containing text, diagram, screenshot, line&#10;&#10;Description automatically generated"
 style='width:380.25pt;height:281.25pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image019.png"
  o:title="A picture containing text, diagram, screenshot, line&#10;&#10;Description automatically generated"/>
</v:shape><![endif]--><![if !vml]><img width=507 height=375
src="Heart_Disease_Patients_Report%5b1%5d11_files/image020.jpg"
alt="A picture containing text, diagram, screenshot, line&#10;&#10;Description automatically generated"
v:shapes="Picture_x0020_10"><![endif]></span></p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto'><o:p>&nbsp;</o:p></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo3'><![if !supportLists]><span
style='mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin'><span
style='mso-list:Ignore'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Agglomerative Clustering:</p>

<p class=MsoListParagraphCxSpMiddle style='margin-left:1.0in;mso-add-space:
auto;text-indent:-.25in;mso-list:l2 level2 lfo6'><![if !supportLists]><span
style='font-family:"Courier New";mso-fareast-font-family:"Courier New"'><span
style='mso-list:Ignore'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Conducted agglomerative
clustering using the average, single, and complete linkage methods with agnes.</p>

<p class=MsoListParagraphCxSpLast style='margin-left:1.0in;mso-add-space:auto;
text-indent:-.25in;mso-list:l2 level2 lfo6'><![if !supportLists]><span
style='font-family:"Courier New";mso-fareast-font-family:"Courier New"'><span
style='mso-list:Ignore'>o<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span><![endif]><span dir=LTR></span>Obtained dendrograms for
each method using as.dendrogram and visualized them using fviz_dend.</p>

<p class=MsoNormal><!--[if gte vml 1]><v:shape id="Picture_x0020_12" o:spid="_x0000_s1028"
 type="#_x0000_t75" alt="A picture containing text, diagram, font, line&#10;&#10;Description automatically generated"
 style='position:absolute;margin-left:-20.6pt;margin-top:0;width:510pt;
 height:312pt;z-index:-251657216;visibility:visible;mso-wrap-style:square;
 mso-width-percent:0;mso-height-percent:0;mso-wrap-distance-left:9pt;
 mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;
 mso-wrap-distance-bottom:0;mso-position-horizontal:absolute;
 mso-position-horizontal-relative:margin;mso-position-vertical:absolute;
 mso-position-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;
 mso-width-relative:margin;mso-height-relative:margin'>
 <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image021.png"
  o:title="A picture containing text, diagram, font, line&#10;&#10;Description automatically generated"/>
 <w:wrap type="tight" anchorx="margin"/>
</v:shape><![endif]--><![if !vml]><img width=680 height=416
src="Heart_Disease_Patients_Report%5b1%5d11_files/image022.jpg" align=left
hspace=12
alt="A picture containing text, diagram, font, line&#10;&#10;Description automatically generated"
v:shapes="Picture_x0020_12"><![endif]><!--[if gte vml 1]><v:shape id="Picture_x0020_13"
 o:spid="_x0000_s1027" type="#_x0000_t75" alt="A picture containing text, diagram, screenshot, parallel&#10;&#10;Description automatically generated"
 style='position:absolute;margin-left:-16.3pt;margin-top:308.35pt;width:494.75pt;
 height:339.4pt;z-index:-251658240;visibility:visible;mso-wrap-style:square;
 mso-width-percent:0;mso-height-percent:0;mso-wrap-distance-left:9pt;
 mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;
 mso-wrap-distance-bottom:0;mso-position-horizontal:absolute;
 mso-position-horizontal-relative:margin;mso-position-vertical:absolute;
 mso-position-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;
 mso-width-relative:margin;mso-height-relative:margin'>
 <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image023.png"
  o:title="A picture containing text, diagram, screenshot, parallel&#10;&#10;Description automatically generated"/>
 <w:wrap type="tight" anchorx="margin"/>
</v:shape><![endif]--><![if !vml]><img width=660 height=453
src="Heart_Disease_Patients_Report%5b1%5d11_files/image024.jpg" align=left
hspace=12
alt="A picture containing text, diagram, screenshot, parallel&#10;&#10;Description automatically generated"
v:shapes="Picture_x0020_13"><![endif]></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><!--[if gte vml 1]><v:shape id="Picture_x0020_14" o:spid="_x0000_s1026"
 type="#_x0000_t75" alt="A picture containing text, diagram, screenshot, font&#10;&#10;Description automatically generated"
 style='position:absolute;margin-left:416.8pt;margin-top:29.6pt;width:468pt;
 height:317.3pt;z-index:-251656192;visibility:visible;mso-wrap-style:square;
 mso-height-percent:0;mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;
 mso-wrap-distance-right:9pt;mso-wrap-distance-bottom:0;
 mso-position-horizontal:right;mso-position-horizontal-relative:margin;
 mso-position-vertical:absolute;mso-position-vertical-relative:text;
 mso-height-percent:0;mso-height-relative:margin'>
 <v:imagedata src="Heart_Disease_Patients_Report%5b1%5d11_files/image025.png"
  o:title="A picture containing text, diagram, screenshot, font&#10;&#10;Description automatically generated"/>
 <w:wrap type="tight" anchorx="margin"/>
</v:shape><![endif]--><![if !vml]><img width=624 height=423
src="Heart_Disease_Patients_Report%5b1%5d11_files/image026.jpg" align=right
hspace=12
alt="A picture containing text, diagram, screenshot, font&#10;&#10;Description automatically generated"
v:shapes="Picture_x0020_14"><![endif]></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>
