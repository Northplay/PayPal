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
        testCase(TransactionInfoTests.allCases),
        testCase(DisputeStatusTests.allCases),
        testCase(DisputeLifeCycleTests.allCases),
        testCase(DisputeChannelTests.allCases),
        testCase(CustomerDisputeTests.allCases),
        testCase(CustomerDisputeListTests.allCases),
        testCase(AcceptDisputeReasonTests.allCases),
        testCase(AcceptDisputeTests.allCases),
        testCase(AdjudicationOutcomeTests.allCases),
        testCase(CarrierTests.allCases),
        testCase(TrackingTests.allCases),
        testCase(EvidenceInfoTests.allCases),
        testCase(DocumentTests.allCases),
        testCase(EvidenceTypeTests.allCases),
        testCase(EvidenceTests.allCases),
        testCase(DisputeResolutionOfferTests.allCases),
        testCase(IDTests.allCases),
        testCase(UpdateActionTests.allCases),
        testCase(AccountTypeTests.allCases),
        testCase(UserInfoAddressTests.allCases),
        testCase(UserInfoTests.allCases),
        testCase(IdentityTests.allCases),
        testCase(InvoiceStatusTests.allCases),
        testCase(PhoneNumberTests.allCases),
        testCase(BillingInfoTests.allCases),
        testCase(ShippingInfoTests.allCases),
        testCase(TaxTests.allCases),
        testCase(DiscountTests.allCases),
        testCase(InvoiceMeasureTests.allCases),
        testCase(InvoiceItemTests.allCases),
        testCase(ShippingCostsTests.allCases),
        testCase(PaymentTermTypeTests.allCases),
        testCase(PaymentDetailTypeTests.allCases),
        testCase(PaymentTransactionTypeTests.allCases),
        testCase(PaymentDetailMethodTests.allCases),
        testCase(PaymentDetailTests.allCases),
        testCase(MetadataTests.allCases),
        testCase(FileAttachmentTests.allCases),
        testCase(PaymentSummaryTests.allCases),
        testCase(RefundDetailTests.allCases),
        testCase(InvoiceParticipantTests.allCases),
        testCase(InvoiceTests.allCases),
        
        // Controller Tests
        testCase(APITests.allTests),
        testCase(AuthenticationTests.allTests),
        testCase(ActivitiesTests.allTests),
        testCase(BillingAgreementsTests.allTests),
        testCase(BillingPlansTests.allTests),
        testCase(CustomerDisputesTests.allTests),
        testCase(InvoicesTests.allTests)
    ]
}
#endif
