def time_string(num)
    return Time.at(num).utc.strftime("%H:%M:%S")
end