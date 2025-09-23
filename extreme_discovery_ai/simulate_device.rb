require 'json'
require_relative '../aura_core/aura'

devices = ['drone01','cam02','sensor03']

loop do
  device = devices.sample
  edq_event = {
    device_id: device,
    timestamp: Time.now.to_i,
    detections: [
      { type: 'object', class_id: 0, confidence: rand.round(2) },
      { type: 'anomaly', description: "pattern #{rand(1..5)}" }
    ]
  }
  Aura.receive_event({ type: 'edq_ai', event: edq_event })
  sleep 2
end
