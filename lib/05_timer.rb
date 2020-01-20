def time_string(integer)
    return Time.at(integer).utc.strftime("%H:%M:%S")
end