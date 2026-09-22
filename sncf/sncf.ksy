meta:
  id: barcode_sncf
  file-extension: bin
  encoding: "iso-8859-1"
  endian: le
seq:
  - id: barcode_type
    type: str
    size: 1
    doc: "From e to h observed historically, defines PECTAB (i is used with CV, h with FV)"
  - id: media_type
    type: u1
    enum: ticket_medium
    doc: "0 = self-printed/mobile (Aztec), 1 = printed at Kiosk, E = printed at counter"
  - id: ticket_type
    type: str
    size: 2
    doc: 'CV = "Confirmation Voyage", FV = "Fidelite de Voyaguer"? or similar'
  - id: passenger_name_record
    type: str
    size: 6
    doc: "Passenger Name Record (assumedly)"
  - id: ticket_number
    type: str
    size: 9
    doc: "Ticker number"
  - id: specimen_indicator
    type: str
    size: 1
    doc: "0 = specimen, 1 = production"
  - id: barcode_version
    type: str
    size: 1
    doc: "Barcode version, only 2 observed"
  - id: sequence_index
    type: str
    size: 1
    doc: "Position in a sequence of tickets (1-based indexing)"
  - id: sequence_size
    type: str
    size: 1
    doc: "Number of tickets in the sequence"
  - id: traveller_dob
    type: str
    size: 10
    doc: "Traveller Date of Birth (format: `%d/%m/%Y`)"
  - id: departure_station
    type: str
    size: 5
    doc: "5-character departure Benerail station ID"
  - id: arrival_station
    type: str
    size: 5
    doc: "5-character arrival Benerail station ID"
  - id: train_number
    type: str
    size: 5
    doc: "5-digit train number (left-zero-padded)"
  - id: travel_date
    type: str
    size: 5
    doc: "Date of the travel (format: `%d/%m`)"
  - id: traveller_sncf_id
    type: str
    size: 19
    doc: "SNCF Traveller ID (Internal)"
  - id: traveller_surname
    type: str
    size: 19
    doc: "Surname of the traveller (left-space-padded)"
  - id: traveller_forename
    type: str
    size: 19
    doc: "Forename of the traveller (left-space-padded)"
  - id: travel_class
    type: str
    size: 1
    doc: "1-digit travel class (1, 2)"
  - id: tariff_code
    type: str
    size: 4
    doc: "Tariff Code"
  - id: travel_class_return
    type: str
    size: 1
    doc: "1-digit travel class (0, 1, 2)"
  - id: departure_station_return
    type: str
    size: 5
    doc: "5-character departure Benerail station ID"
  - id: arrival_station_return
    type: str
    size: 5
    doc: "5-character arrival Benerail station ID"
  - id: train_number_return
    type: str
    size: 5
    doc: "5-digit train number (left-zero-padded)"

enums:
  ticket_medium:
    0x30: self_printed_or_mobile_aztec
    0x31: printed_at_kiosk
    0x45: printed_at_counter
