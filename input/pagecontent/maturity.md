### Overview

Each model logical model and profile included in this has a PCSP
Maturity Level associated to help PanCareSurPass implementers to
distinguish in the CI build the artefacts that are still under
development from those that are ready to be tested or used. This
maturity level should not be confused for the current FMM (FHIR maturity
model) defined for FHIR resources nor with the under specification HL7
FHIR artefacts maturity model.

### The model

The model used is described in the following table; it constitutes of 5
levels and its interpretation should be slightly adapted based on the
type of artefacts is applied to (see next sub-sections).

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th>Level</th>
<th>Label</th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td>0</td>
<td>Draft</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>1</td>
<td>Complete draft</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>2</td>
<td>Ready for review</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>3</td>
<td>Under testing</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>4</td>
<td>Trial Use</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>5</td>
<td>Final</td>
</tr>
</tbody>
</table>

#### Logical Model

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th>Level</th>
<th>Label</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td>0</td>
<td>Draft</td>
<td>The logical model is under development.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>1</td>
<td>Profiles in progress</td>
<td><p>A first complete logical model is available.</p>
<p>Associated resource profiles are under definition.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>2</td>
<td>Ready for review</td>
<td><p>A first complete logical model is available.</p>
<p>Most of the associated resource profiles have been defined.</p>
<p>The model and the associated resource profiles are ready to be reviewed, some initial implementations are ongoing.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>3</td>
<td>Under testing</td>
<td>Most of the PCSP piloting systems have implemented the associated resource profiles for testing purposes.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>4</td>
<td>Trial Use</td>
<td><p>The model and all the needed associated resource profiles are candidate to be released.</p>
<p>PCSP piloting systems have implemented the associated resource profiles for trial use.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>5</td>
<td>Final</td>
<td><p>Models and all the needed associated resource profiles are consolidated.</p>
<p>PCSP piloting systems have implemented the associated resource profiles for production.</p></td>
</tr>
</tbody>
</table>

#### Resource Profiles

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th>Level</th>
<th>Label</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td>0</td>
<td>Draft</td>
<td>This resource profile is under development.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>1</td>
<td>Complete draft</td>
<td>A first specification of this resource profile is available.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>2</td>
<td>Ready for review</td>
<td>Most of the PCSP piloting systems have implemented this resource profile for testing purposes.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>3</td>
<td>Under testing</td>
<td>Test implementations of this resource profile is available by most of the piloting systems.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>4</td>
<td>Trial Use</td>
<td><p>This resource profile is candidate to be released.</p>
<p>PCSP piloting systems have implemented this resource profile for trial use.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>5</td>
<td>Final</td>
<td><p>This resource profile is consolidated.</p>
<p>PCSP piloting systems have implemented this resource profile for production.</p></td>
</tr>
</tbody>
</table>
