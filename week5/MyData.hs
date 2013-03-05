data MetricUnit = Meter
                | Liter
                | KiloGram
                deriving (Show, Eq)

data ImperialUnit = Yard
                  | Gallon
                  | Pound
                  deriving (Show)

symbol :: MetricUnit -> String
-- symbol Meter -> "m"
-- symbol Liter -> "L"
-- symbol KiloGram -> "kg"
symbol u
  | u==Meter = "m"
  | u==Liter = "L"
  | u==KiloGram = "kg"

data Measurement = MetricMeasurement Double MetricUnit
                 | ImperialMeasurement Double ImperialUnit
                 deriving (Show)

convert :: Measurement -> Measurement
convert (MetricMeasurement x Meter) = ImperialMeasurement (x*1.09361) Yard
convert (ImperialMeasurement x Yard) = MetricMeasurement (x/1.09361) Meter
convert (MetricMeasurement x Liter) = ImperialMeasurement (x*0.264172) Gallon
convert (ImperialMeasurement x Gallon) = MetricMeasurement (x/0.264172) Liter
convert (MetricMeasurement x KiloGram) = ImperialMeasurement (x*2.20462) Pound
convert (ImperialMeasurement x Pound) = MetricMeasurement (x/2.20462) KiloGram
