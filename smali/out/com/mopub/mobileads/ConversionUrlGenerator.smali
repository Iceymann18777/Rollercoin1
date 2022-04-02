.class Lcom/mopub/mobileads/ConversionUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "ConversionUrlGenerator.java"


# static fields
.field private static final PACKAGE_NAME_KEY:Ljava/lang/String; = "id"

.field private static final SESSION_TRACKER_KEY:Ljava/lang/String; = "st"


# instance fields
.field private mConsentedPrivacyPolicyVersion:Ljava/lang/String;

.field private mConsentedVendorListVersion:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentConsentStatus:Ljava/lang/String;

.field private mForceGdprApplies:Z

.field private mGdprApplies:Ljava/lang/Boolean;

.field private mSt:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    const-string v1, "/m/open"

    .line 73
    invoke-virtual {p0, p1, v1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "6"

    .line 74
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->setApiVersion(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->setAppVersion(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->appendAdvertisingInfoTemplates()V

    .line 78
    iget-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-boolean p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mSt:Z

    if-eqz p1, :cond_33

    const/4 p1, 0x1

    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "st"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_33
    const-string p1, "nv"

    const-string v0, "5.12.0"

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->appendAppEngineInfo()V

    .line 84
    invoke-virtual {p0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->appendWrapperVersion()V

    .line 85
    iget-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mCurrentConsentStatus:Ljava/lang/String;

    const-string v0, "current_consent_status"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mConsentedVendorListVersion:Ljava/lang/String;

    const-string v0, "consented_vendor_list_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mConsentedPrivacyPolicyVersion:Ljava/lang/String;

    const-string v0, "consented_privacy_policy_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mGdprApplies:Ljava/lang/Boolean;

    const-string v0, "gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 89
    iget-boolean p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mForceGdprApplies:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "force_gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    invoke-virtual {p0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/mobileads/ConversionUrlGenerator;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mConsentedPrivacyPolicyVersion:Ljava/lang/String;

    return-object p0
.end method

.method public withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/mobileads/ConversionUrlGenerator;
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mConsentedVendorListVersion:Ljava/lang/String;

    return-object p0
.end method

.method public withCurrentConsentStatus(Ljava/lang/String;)Lcom/mopub/mobileads/ConversionUrlGenerator;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mCurrentConsentStatus:Ljava/lang/String;

    return-object p0
.end method

.method public withForceGdprApplies(Z)Lcom/mopub/mobileads/ConversionUrlGenerator;
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mForceGdprApplies:Z

    return-object p0
.end method

.method public withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/mobileads/ConversionUrlGenerator;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mGdprApplies:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withSessionTracker(Z)Lcom/mopub/mobileads/ConversionUrlGenerator;
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mSt:Z

    return-object p0
.end method
