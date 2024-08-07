# fhir_field_order.py

FHIR_FIELD_ORDER = {
    "Bundle": [
        "id", "meta", "type", "timestamp", "total", "link", "entry"
    ],
    "Task": [
        "id", "meta", "extension", "identifier", "status", "intent",
        "for", "authoredOn", "lastModified", "performerType", "owner", "input"
    ],
    "Binary": [
        "id", "meta", "contentType", "data"
    ],
    "Consent": [
        "id", "meta", "status", "scope", "category", "patient", "dateTime", "policyRule"
    ],
    "Communication": [
        "id", "meta", "basedOn", "status", "sent", "recipient", "sender", "payload"
    ],
    "meta": [
        "id", "versionId", "lastUpdated", "source", "profile"
    ],
    "entry": [
        "fullUrl", "resource", "search"
    ],
    "coding": [
        "system", "code", "display"
    ],
    "valueCoding": [
        "system", "code", "display"
    ],
    "valueCodeableConcept": [
        "coding"
    ],
    "extension": [
        "valueCoding", "valueDate"
    ],
    "performerType": [
        "coding", "text"
    ]
    # Add other FHIR resource types as needed
}
