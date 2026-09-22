meta:
  id: barcode_spain
  file-extension: bin
  encoding: "iso-8859-1"
  endian: le
  title: Common Spanish Ticket Barcode
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
  - id: departure_time
    type: str
    size: 15
    doc: "Format: dd/MM/yyyyHH:mm"
  - id: departure_station
    type: str
    size: 7
    doc: "UIC station code, but using '00' as country prefix"
  - id: arrival_station
    type: str
    size: 7
    doc: "UIC station code, but using '00' as country prefix"
  - id: coach_number
    type: str
    size: 3
    doc: "for single leg trips, unclear for multi-leg trips"
  - id: seat_number
    type: str
    size: 3
  - id: vendor_data
    type: str
    size: 358
    doc: "'0' in every unused trailing byte, contains Renfe or Ouigo ES ticket data"
  - id: signature
    type: str
    size: 64
    doc: "Base64 encoded ASN.1 PER RSA signature"
  - id: unknown2
    type: str
    size: 36
    doc: "All bytes '~'"
