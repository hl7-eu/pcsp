Extension: ResourceRelatedInfo
Id:   resource-relatedInfo
Title:  "Resource related information"
Description: "This extension provides a means to link the source resource to any target related information. This extension shall not be used when other more specific elements or standard extensions apply. E.g. Observation.hasMember."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* value[x] only Reference (Resource)

Extension: EventLocation
Id:   event-location
Title:  "Act Location"
Description: "This extension provides a means to indicate where an act was, is or it is intended to take place."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* value[x] only Reference (Location)


Extension: ConditionRelated
Id: mcode-condition-related
Title:  "Condition related to resource"
Description: "The resource has an unspecified relationship with a Condition."

* value[x] only Reference(Condition)
* value[x] 1..1

