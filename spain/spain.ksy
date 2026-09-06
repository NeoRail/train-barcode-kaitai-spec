meta:
  id: barcode_spain
  file-extension: bin
  encoding: "iso-8859-1"
  endian: le
  title: Common Spanish Ticket Barcode
  doc: "See §7.3.2.5. of the ADIF Network Statement 2026"
  license: CC0-1.0

seq:
  - id: ticket_number
    type: str
    size: 13
  - id: issuer_code
    type: str
    size: 5
    doc: UIC code, 0-prefixed to 5 digits
  - id: train_number
    type: str
    size: 5
    doc: "For single-leg trips, unclear for multi-leg trips"
  - id: departure_date
    type: str
    size: 10
    doc: "Format: dd/MM/yyyy"
  - id: departure_time
    type: str
    size: 5
    doc: "Format: HH:mm"
  - id: departure_station
    type: str
    size: 7
    doc: "UIC station code, but using '00' as country prefix for stations in spain"
  - id: arrival_station
    type: str
    size: 7
    doc: "UIC station code, but using '00' as country prefix for stations in spain"
  - id: coach_number
    type: str
    size: 3
    doc: "for single leg trips, unclear for multi-leg trips, can be empty"
  - id: seat_number
    type: str
    size: 3
    doc: "for single leg trips, unclear for multi-leg trips, can be empty"
  - id: combined_ticket
    type: str
    size: 2
  - id: intermediate_station
    type: str
    size: 7
    doc: "UIC station code, but using '00' as country prefix for stations in spain, all zero when not applicable"
  - id: adif_reserved
    type: str
    size: 33
    doc: "all '0'"
  - id: operator_use
    type: str
    size: 316
    doc: "contains the Renfe or Ouigo barcodes, trailing bytes fiiled with '0'"
  - id: signature
    type: str
    size: 100
    doc: "Base64 encoded ASN.1 PER SHA1withDSa signature, trailing bytes padded with '~'"
