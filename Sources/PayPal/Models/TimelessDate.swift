import Vapor

/// Date information without a timestamp.
public struct TimelessDate: Content, Equatable {
    
    /// The stand-alone date, in [Internet date and time format](https://tools.ietf.org/html/rfc3339#section-5.6). To represent special legal values,
    /// such as a date of birth, you should use dates with no associated time or time-zone data. Whenever possible, use the standard `date_time` type.
    /// This regular expression does not validate all dates. For example, February 31 is valid and nothing is known about leap years.
    ///
    /// Length: 10. Pattern: `^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$`.
    public var date: String?
    
    
    /// Creates a new `TimelessDate` instance.
    ///
    ///     TimelessDate(date: "1517-10-31")
    public init(date: String?)throws {
        self.date = date
    }
}
