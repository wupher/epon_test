Factory.define :huawei_model, :class => DeviceModel do |model|
  model.name 'huawei5616'
  model.type 'epon'
  model.manufacturer '华为'
end

Factory.define :MA5616, :class => EponDevice do |device|
  device.area_code '福州'
  device.ip_address '191.168.10.254'
  device.address '仓山区地下井盖12号500米处'
  device.association :model, :factory  => :huawei_model
end

Factory.define :adsl, :class => EponProduct do |product|
  product.name 'ADSL宽带业务'
  product.address '仓山地下掩体避难所valut 12'
  product.association :epon_device, :factory => :MA5616
  product.rack 'rack'
  product.frame '1'
  product.solt '2'
  product.port '4'
end