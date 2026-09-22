meta:
  id: barcode_renfe
  file-extension: bin
  encoding: "iso-8859-1"
  endian: le
  title: Renfe Ticket Barcode
  license: CC0-1.0

doc: |
  Can occur stand-alone or in the vendor block of the Spanish common ticket container format.

seq:
  - id: ticket_number
    type: str
    size: 13
  - id: departure_station
    type: str
    size: 5
    doc: "UIC code, 0-prefixed to 5 digits and omitting the leading country code"
  - id: arrival_station
    type: str
    size: 5
    doc: "UIC code, 0-prefixed to 5 digits and omitting the leading country code"
  - id: departure_date
    type: str
    size: 6
    doc: "Format: ddMMyy"
  - id: train_number
    type: str
    size: 5
    doc: "unclear which one on a multi-leg trip"
  - id: coach_number
    type: str
    size: 3
    doc: "last one on a mult-leg trip?"
  - id: seat_number
    type: str
    size: 3
  - id: unknown
    type: str
    size: 3
  - id: localizador
    type: str
    size: 6
  - id: separator
    contents: [0x2E, 0x2E]
    doc: "optional, present if CombinadoCercanias is present"
    if: _root._io.size > 50
  - id: combinado_cercanias
    type: str
    size: 5
    doc: "optional"
    if: _root._io.size > 50
