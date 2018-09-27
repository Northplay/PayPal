import XCTest
import Vapor
@testable import PayPal

final class PaymentsTests: XCTestCase {
    
    var app: Application!
    var context: PaymentTestsContext!
    
    override func setUp() {
        super.setUp()
        setPaypalVars()
        
        var services = Services.default()
        try! services.register(PayPalProvider())
        
        self.app = try! Application.testable(services: services)
        self.context = try! PaymentTestsContext()
    }
    
    func testServiceExists()throws {
        _ = try app.make(Payments.self)
    }
    
    func testCreateEndpoint()throws {
        let payment = try Payment(
            intent: .sale,
            payer: PaymentPayer(method: .paypal, funding: nil, info: nil),
            context: nil,
            transactions: [self.context.transaction],
            experience: nil,
            payerNote: "Thanks for ordering!",
            redirects: Redirects(return: "https://example.com/approved", cancel: "https://example.com/canceled")
        )
        let payments = try self.app.make(Payments.self)
        
        let result = try payments.create(payment: payment).wait()
        
        XCTAssertNotNil(result.id)
        XCTAssertEqual(result.state, .created)
    }
    
    static var allTests: [(String, (PaymentsTests) -> ()throws -> ())] = [
        ("testServiceExists", testServiceExists),
        ("testCreateEndpoint", testCreateEndpoint)
    ]
}

internal struct PaymentTestsContext {
    let address: Address
    let item: Payment.Item
    let details: DetailedAmount.Detail
    let amount: DetailedAmount
    let items: Payment.ItemList
    let transaction: Payment.Transaction
    
    init()throws {
        self.address = try Address(
            recipientName: "Ira Harding",
            defaultAddress: true,
            line1: "578 Wild Wood",
            line2: nil,
            city: "New Haven",
            state: "CN",
            countryCode: "US",
            postalCode: "79812",
            phone: nil,
            type: nil
        )
        self.item = try Payment.Item(
            quantity: "3",
            price: "39.00",
            currency: .usd,
            sku: "8EFAFEF3-72D2-4E5C-85EC-C14BA2F9D997",
            name: "Plum Pudding",
            description: "With sugar an inch thick",
            tax: "8.00"
        )
        self.details = try DetailedAmount.Detail(
            subtotal: "117.00",
            shipping: "15.00",
            tax: "8.00",
            handlingFee: "10.00",
            shippingDiscount: nil,
            insurance: nil,
            giftWrap: nil
        )
        self.amount = try DetailedAmount(currency: .usd, total: "150.00", details: details)
        self.items = try Payment.ItemList(
            items: [item],
            address: address,
            phoneNumber: nil
        )
        self.transaction = try Payment.Transaction(
            amount: amount,
            payee: Payee(email: "payee@example.com", merchant: nil, metadata: nil),
            description: nil,
            payeeNote: "Thanks for paying for the order!",
            custom: nil,
            invoice: nil,
            softDescriptor: nil,
            payment: .unrestricted,
            itemList: items,
            notify: "https://example.com/notify"
        )
    }
}
