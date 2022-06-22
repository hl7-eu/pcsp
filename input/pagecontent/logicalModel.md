
### SurPass Overview 

The Survivorship Passport (SurPass) is a digital tool based on international clinical guidelines that provides childhood cancer survivors (CCS) and health care professionals (HCPs) with the information needed for long-term follow-up survivorship care, better health promotion, improved late effects management and secondary cancer prevention. The SurPass provides an overview of all relevant personal health data related to the cancer treatment of CCS (e.g. demographics, cancer diagnosis, therapeutic management etc.) in a Treatment Summary together with a personalized Survivorship Care Plan.

<div>
<img src="surpass-overview.png" alt="SurPass Overview" width="50%"/>
</div>

<!-- table -->

### HL7 FHIR Models

The following table summarizes the logical models used by this guide.


<table  style="border-collapse: collapse; width: 100%" border="1" >
<thead>
<tr style="text-align: center;">
<td><strong>Name</strong></td>
<td><strong>Title</strong></td>
<td><strong>Description</strong></td>
</tr>
</thead>
<tbody>

{% for sd_hash in site.data.structuredefinitions -%}
  {%- assign sd = sd_hash[1] -%}
  {%- if sd.kind  == "logical" -%}
  <tr><td><a href="{{sd.path}}">{{sd.name}}</a></td><td>{{sd.title}}</td><td>{{sd.description}}</td></tr>
  {%- endif -%}
{%- endfor -%}

</tbody>
</table>