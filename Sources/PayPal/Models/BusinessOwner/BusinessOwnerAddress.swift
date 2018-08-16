import Vapor

extension BusinessOwner {
    
    /// The address object structure used for a business owner.
    public struct Address {
        
        /// The address type.
        public var type: AddressType
        
        /// The first line of the address. For example, number, street, and so on.
        ///
        /// Maximum length: 300.
        public var line1: String
        
        /// The second line of the address. For example, suite, apt number, and so on.
        ///
        /// Maximum length: 300.
        public var line2: String?
        
        /// The third line of the address. For example, the street complement for Brazil, direction text, such as next to Walmart,
        /// or a landmark in an Indian address.
        ///
        /// Maximum length: 300.
        public var line3: String?
        
        /// The suburb or neighborhood.
        ///
        /// Maximum length: 300.
        public var suburb: String?
        
        /// The city.
        ///
        /// Maximum length: 120.
        public var city: String
        
        /// The [code](https://developer.paypal.com/docs/integration/direct/rest/state-codes/) for a US state or the
        /// equivalent for other countries. Required for transactions if the address is in one of these countries:
        /// [Argentina](https://developer.paypal.com/docs/integration/direct/rest/state-codes/#argentina),
        /// [Brazil](https://developer.paypal.com/docs/integration/direct/rest/state-codes/#brazil),
        /// [Canada](https://developer.paypal.com/docs/integration/direct/rest/state-codes/#canada),
        /// [India](https://developer.paypal.com/docs/integration/direct/rest/state-codes/#india),
        /// [Italy](https://developer.paypal.com/docs/integration/direct/rest/state-codes/#italy),
        /// [Japan](https://developer.paypal.com/docs/integration/direct/rest/state-codes/#japan),
        /// [Mexico](https://developer.paypal.com/docs/integration/direct/rest/state-codes/#mexico),
        /// [Thailand](https://developer.paypal.com/docs/integration/direct/rest/state-codes/#thailand),
        /// or [United States](https://developer.paypal.com/docs/integration/direct/rest/state-codes/#usa).
        /// Maximum length is 40 single-byte characters.
        public var state: String?
        
        /// The [two-character ISO 3166-1 code](https://developer.paypal.com/docs/integration/direct/rest/country-codes/) that identifies the country or region.
        ///
        /// The value must match the RegEx pattern `^([A-Z]{2}|C2)$`.
        ///
        /// - Note: The country code for Great Britain is `GB` and not `UK` as used in the top-level
        ///   domain names for that country. Use the `C2` country code for China worldwide for comparable
        ///   uncontrolled price (CUP) method, bank card, and cross-border transactions.
        public var country: String
        
        /// The postal code, which is the zip code or equivalent.
        /// Typically required for countries with a postal code or an equivalent.
        /// See [postal code](https://en.wikipedia.org/wiki/Postal_code).
        public var postalCode: String?
        
        
        /// Creates a new `BusinessOwner.Address` instance.
        ///
        ///     Address(
        ///         type: .home,
        ///         line1: "89 Furnace Dr.",
        ///         line2: nil,
        ///         line3: nil,
        ///         suburb: "Invisible Winds",
        ///         city: "Nowhere",
        ///         state: "KS",
        ///         country: "US",
        ///         postalCode: "66167"
        ///     )
        public init(
            type: AddressType,
            line1: String,
            line2: String?,
            line3: String?,
            suburb: String?,
            city: String,
            state: String?,
            country: String,
            postalCode: String?
        )throws {
            self.type = type
            self.line1 = line1
            self.line2 = line2
            self.line3 = line3
            self.suburb = suburb
            self.city = city
            self.state = state
            self.country = country
            self.postalCode = postalCode
        }
    }
}

extension BusinessOwner.Address {
    
    /// The address type, which defines what location type the address goes to.
    public enum AddressType: String, Hashable, CaseIterable, Content {
        
        /// `HOME`
        case home = "HOME"
        
        /// `WORK`
        case work = "WORK"
        
        /// `PRINCIPAL_BUSINESS`
        case principal = "PRINCIPAL_BUSINESS"
        
        /// `REGISTERED_OFFICE`
        case office = "REGISTERED_OFFICE"
        
        /// `MAILING_ADDRESS`
        case mailing = "MAILING_ADDRESS"
    }
}
