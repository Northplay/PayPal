import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(PayPalTests.allTests),
        
        // Config Tests
        testCase(EnvironmentTests.allTests),
        testCase(ProviderTests.allTests),
        
        // Model Tests
        testCase(CurrencyTests.allTests),
        testCase(MoneyTests.allTests),
        testCase(RoleTests.allCases),
        testCase(MethodTests.allCases),
        testCase(LinkDescriptionTests.allCases),
        testCase(ExtensionsTests.allCases),
        testCase(CreditDebitCodeTests.allCases),
        testCase(CounterPartyTests.allCases),
        testCase(PayPalAPIErrorTests.allCases),
        testCase(PayPalAPIIdentityErrorTests.allCases),
        testCase(ActivityTests.allCases),
        testCase(ActivitiesResponseTests.allCases),
        testCase(BillingPlanTypeTests.allCases),
        testCase(OverrideChargeTests.allCases),
        testCase(testValueValidation.allCases),
        testCase(InitialFailActionTests.allCases),
        testCase(AutoBillTests.allCases),
        testCase(MerchantPreferancesTests.allCases),
        testCase(TermTypeTests.allCases),
        testCase(TermTests.allCases),
        testCase(ChargeTypeTests.allCases),
        testCase(ChargeTests.allCases),
        testCase(PaymentTypeTests.allCases),
        testCase(FrequencyTests.allCases),
        testCase(PaymentTests.allCases),
        testCase(BillingPlanStateTests.allCases),
        testCase(BillingPlanTests.allCases),
        testCase(CreditCardStateTests.allCases),
        testCase(CreditCardTests.allCases),
        testCase(PayerInfoTests.allCases),
        testCase(PaymentMethodTests.allCases),
        testCase(FundingOptionTests.allCases),
        testCase(PayerTests.allCases),
        testCase(DetailTests.allCases),
        testCase(NewAgreementTests.allCases),
        testCase(AgreementStateTests.allTests),
        testCase(BillingAgreementTests.allCases),
        testCase(OperationTests.allCases),
        testCase(PatchTests.allCases),
        testCase(TransactionStateTests.allCases),
        testCase(TransactionTests.allCases),
        testCase(BillingPlanListTests.allCases),
        testCase(OfferTypeTests.allCases),
        testCase(OfferTests.allCases),
        testCase(MessagePosterTests.allCases),
        testCase(MessageTests.allCases),
        testCase(OutcomeCodeTests.allCases),
        testCase(DisputeOutcomeTests.allCases),
        testCase(BuyerTests.allCases),
        testCase(SellerTests.allCases),
        testCase(ItemReasonTests.allCases),
        testCase(TransactionInfoStatusTests.allCases),
        
        // Controller Tests
        testCase(APITests.allTests),
        testCase(AuthenticationTests.allTests),
        testCase(ActivitiesTests.allTests),
        testCase(BillingAgreementsTests.allTests),
        testCase(BillingPlansTests.allTests)
    ]
}
#endif
