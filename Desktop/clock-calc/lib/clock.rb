#!/usr/bin/env ruby
require('pry')

def getHandPosition (timeArray)
    hour = timeArray[0]
    if hour === 12 || hour === 24
      hour = 0
    end
    minute = timeArray[1]

    minuteDeg = (360.0*(minute/60.0))
    hourDeg =  ((30.0*hour) + (30.0 * ( minuteDeg/360.0)))
    return [hourDeg, minuteDeg]

end

def clockulus (timeArray)
    degArray = getHandPosition(timeArray)
    case
    when degArray[0] - degArray[1] >= degArray[1] - degArray[0]
        return degArray[0] - degArray[1]
    when degArray[1] -degArray[0] >= degArray[0] - degArray[1]
        return degArray[1] - degArray[0]
    end
end

puts clockulus([12,32.7272727272727272])
