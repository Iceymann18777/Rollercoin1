.class Lcom/mopub/common/privacy/PersonalInfoData;
.super Ljava/lang/Object;
.source "PersonalInfoData.java"

# interfaces
.implements Lcom/mopub/common/privacy/ConsentData;


# static fields
.field private static final AD_UNIT_ID_SP_KEY:Ljava/lang/String; = "info/adunit"

.field private static final CACHED_LAST_AD_UNIT_ID_USED_FOR_INIT_SP_KEY:Ljava/lang/String; = "info/cached_last_ad_unit_id_used_for_init"

.field private static final CONSENTED_PRIVACY_POLICY_VERSION_SP_KEY:Ljava/lang/String; = "info/consented_privacy_policy_version"

.field private static final CONSENTED_VENDOR_LIST_IAB_FORMAT_SP_KEY:Ljava/lang/String; = "info/consented_vendor_list_iab_format"

.field private static final CONSENTED_VENDOR_LIST_VERSION_SP_KEY:Ljava/lang/String; = "info/consented_vendor_list_version"

.field private static final CONSENT_CHANGE_REASON_SP_KEY:Ljava/lang/String; = "info/consent_change_reason"

.field private static final CONSENT_STATUS_BEFORE_DNT_SP_KEY:Ljava/lang/String; = "info/consent_status_before_dnt"

.field private static final CONSENT_STATUS_SP_KEY:Ljava/lang/String; = "info/consent_status"

.field private static final CURRENT_PRIVACY_POLICY_LINK_SP_KEY:Ljava/lang/String; = "info/current_privacy_policy_link"

.field private static final CURRENT_PRIVACY_POLICY_VERSION_SP_KEY:Ljava/lang/String; = "info/current_privacy_policy_version"

.field private static final CURRENT_VENDOR_LIST_IAB_FORMAT_SP_KEY:Ljava/lang/String; = "info/current_vendor_list_iab_format"

.field private static final CURRENT_VENDOR_LIST_IAB_HASH_SP_KEY:Ljava/lang/String; = "info/current_vendor_list_iab_hash"

.field private static final CURRENT_VENDOR_LIST_LINK_SP_KEY:Ljava/lang/String; = "info/current_vendor_list_link"

.field private static final CURRENT_VENDOR_LIST_VERSION_SP_KEY:Ljava/lang/String; = "info/current_vendor_list_version"

.field private static final EXTRAS_SP_KEY:Ljava/lang/String; = "info/extras"

.field private static final FORCE_GDPR_APPLIES_SP_KEY:Ljava/lang/String; = "info/force_gdpr_applies"

.field private static final GDPR_APPLIES_SP_KEY:Ljava/lang/String; = "info/gdpr_applies"

.field private static final IS_WHITELISTED_SP_KEY:Ljava/lang/String; = "info/is_whitelisted"

.field private static final LANGUAGE_MACRO_KEY:Ljava/lang/String; = "%%LANGUAGE%%"

.field private static final LAST_CHANGED_MS_SP_KEY:Ljava/lang/String; = "info/last_changed_ms"

.field private static final LAST_SUCCESSFULLY_SYNCED_CONSENT_STATUS_SP_KEY:Ljava/lang/String; = "info/last_successfully_synced_consent_status"

.field private static final PERSONAL_INFO_DATA_SHARED_PREFS:Ljava/lang/String; = "com.mopub.privacy"

.field private static final PERSONAL_INFO_PREFIX:Ljava/lang/String; = "info/"

.field private static final REACQUIRE_CONSENT_SP_KEY:Ljava/lang/String; = "info/reacquire_consent"

.field private static final UDID_SP_KEY:Ljava/lang/String; = "info/udid"


# instance fields
.field private mAdUnitId:Ljava/lang/String;

.field private final mAppContext:Landroid/content/Context;

.field private mCachedLastAdUnitIdUsedForInit:Ljava/lang/String;

.field private mConsentChangeReason:Ljava/lang/String;

.field private mConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

.field private mConsentStatusBeforeDnt:Lcom/mopub/common/privacy/ConsentStatus;

.field private mConsentedPrivacyPolicyVersion:Ljava/lang/String;

.field private mConsentedVendorListIabFormat:Ljava/lang/String;

.field private mConsentedVendorListVersion:Ljava/lang/String;

.field private mCurrentPrivacyPolicyLink:Ljava/lang/String;

.field private mCurrentPrivacyPolicyVersion:Ljava/lang/String;

.field private mCurrentVendorListIabFormat:Ljava/lang/String;

.field private mCurrentVendorListIabHash:Ljava/lang/String;

.field private mCurrentVendorListLink:Ljava/lang/String;

.field private mCurrentVendorListVersion:Ljava/lang/String;

.field private mExtras:Ljava/lang/String;

.field private mForceGdprApplies:Z

.field private mGdprApplies:Ljava/lang/Boolean;

.field private mIsWhitelisted:Z

.field private mLastChangedMs:Ljava/lang/String;

.field private mLastSuccessfullySyncedConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

.field private mReacquireConsent:Z

.field private mUdid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mAppContext:Landroid/content/Context;

    .line 85
    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    const-string p1, ""

    .line 86
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mAdUnitId:Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lcom/mopub/common/privacy/PersonalInfoData;->getStateFromDisk()V

    return-void
.end method

.method private getStateFromDisk()V
    .registers 6

    .line 91
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mAppContext:Landroid/content/Context;

    const-string v1, "com.mopub.privacy"

    invoke-static {v0, v1}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "info/adunit"

    const-string v2, ""

    .line 93
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mAdUnitId:Ljava/lang/String;

    const-string v1, "info/cached_last_ad_unit_id_used_for_init"

    const/4 v2, 0x0

    .line 94
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCachedLastAdUnitIdUsedForInit:Ljava/lang/String;

    .line 96
    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    .line 97
    invoke-virtual {v1}, Lcom/mopub/common/privacy/ConsentStatus;->name()Ljava/lang/String;

    move-result-object v1

    const-string v3, "info/consent_status"

    .line 96
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/privacy/ConsentStatus;->fromString(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "info/last_successfully_synced_consent_status"

    .line 98
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 101
    iput-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mLastSuccessfullySyncedConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    goto :goto_42

    .line 104
    :cond_3c
    invoke-static {v1}, Lcom/mopub/common/privacy/ConsentStatus;->fromString(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mLastSuccessfullySyncedConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    :goto_42
    const-string v1, "info/is_whitelisted"

    const/4 v3, 0x0

    .line 106
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mIsWhitelisted:Z

    const-string v1, "info/current_vendor_list_version"

    .line 107
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListVersion:Ljava/lang/String;

    const-string v1, "info/current_vendor_list_link"

    .line 109
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListLink:Ljava/lang/String;

    const-string v1, "info/current_privacy_policy_version"

    .line 110
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentPrivacyPolicyVersion:Ljava/lang/String;

    const-string v1, "info/current_privacy_policy_link"

    .line 112
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentPrivacyPolicyLink:Ljava/lang/String;

    const-string v1, "info/current_vendor_list_iab_format"

    .line 114
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListIabFormat:Ljava/lang/String;

    const-string v1, "info/current_vendor_list_iab_hash"

    .line 116
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListIabHash:Ljava/lang/String;

    const-string v1, "info/consented_vendor_list_version"

    .line 118
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentedVendorListVersion:Ljava/lang/String;

    const-string v1, "info/consented_privacy_policy_version"

    .line 120
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentedPrivacyPolicyVersion:Ljava/lang/String;

    const-string v1, "info/consented_vendor_list_iab_format"

    .line 122
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentedVendorListIabFormat:Ljava/lang/String;

    const-string v1, "info/extras"

    .line 124
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mExtras:Ljava/lang/String;

    const-string v1, "info/consent_change_reason"

    .line 125
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentChangeReason:Ljava/lang/String;

    const-string v1, "info/reacquire_consent"

    .line 126
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mReacquireConsent:Z

    const-string v1, "info/gdpr_applies"

    .line 127
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 129
    iput-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mGdprApplies:Ljava/lang/Boolean;

    goto :goto_c4

    .line 131
    :cond_ba
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mGdprApplies:Ljava/lang/Boolean;

    :goto_c4
    const-string v1, "info/force_gdpr_applies"

    .line 133
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mForceGdprApplies:Z

    const-string v1, "info/udid"

    .line 134
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mUdid:Ljava/lang/String;

    const-string v1, "info/last_changed_ms"

    .line 135
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mLastChangedMs:Ljava/lang/String;

    const-string v1, "info/consent_status_before_dnt"

    .line 136
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 139
    iput-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentStatusBeforeDnt:Lcom/mopub/common/privacy/ConsentStatus;

    goto :goto_f1

    .line 141
    :cond_eb
    invoke-static {v0}, Lcom/mopub/common/privacy/ConsentStatus;->fromString(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentStatusBeforeDnt:Lcom/mopub/common/privacy/ConsentStatus;

    :goto_f1
    return-void
.end method

.method static replaceLanguageMacro(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 399
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 401
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, ""

    return-object p0

    .line 405
    :cond_c
    invoke-static {p1, p2}, Lcom/mopub/common/privacy/PersonalInfoData;->validateLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%%LANGUAGE%%"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static validateLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 418
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 420
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    if-eqz v3, :cond_16

    .line 421
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    return-object p1

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 425
    :cond_19
    invoke-static {p0}, Lcom/mopub/common/ClientMetadata;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method chooseAdUnit()Ljava/lang/String;
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mAdUnitId:Ljava/lang/String;

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    return-object v0

    .line 200
    :cond_9
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCachedLastAdUnitIdUsedForInit:Ljava/lang/String;

    return-object v0
.end method

.method getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method getCachedLastAdUnitIdUsedForInit()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCachedLastAdUnitIdUsedForInit:Ljava/lang/String;

    return-object v0
.end method

.method getConsentChangeReason()Ljava/lang/String;
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentChangeReason:Ljava/lang/String;

    return-object v0
.end method

.method getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    return-object v0
.end method

.method getConsentStatusBeforeDnt()Lcom/mopub/common/privacy/ConsentStatus;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentStatusBeforeDnt:Lcom/mopub/common/privacy/ConsentStatus;

    return-object v0
.end method

.method public getConsentedPrivacyPolicyVersion()Ljava/lang/String;
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentedPrivacyPolicyVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentedVendorListIabFormat()Ljava/lang/String;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentedVendorListIabFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentedVendorListVersion()Ljava/lang/String;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentedVendorListVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPrivacyPolicyLink()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getCurrentPrivacyPolicyLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPrivacyPolicyLink(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentPrivacyPolicyLink:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/mopub/common/privacy/PersonalInfoData;->replaceLanguageMacro(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPrivacyPolicyVersion()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentPrivacyPolicyVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListIabFormat()Ljava/lang/String;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListIabFormat:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentVendorListIabHash()Ljava/lang/String;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListIabHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListLink()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getCurrentVendorListLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVendorListLink(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListLink:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/mopub/common/privacy/PersonalInfoData;->replaceLanguageMacro(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentVendorListVersion()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mExtras:Ljava/lang/String;

    return-object v0
.end method

.method getGdprApplies()Ljava/lang/Boolean;
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mGdprApplies:Ljava/lang/Boolean;

    return-object v0
.end method

.method getLastChangedMs()Ljava/lang/String;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mLastChangedMs:Ljava/lang/String;

    return-object v0
.end method

.method getLastSuccessfullySyncedConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mLastSuccessfullySyncedConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    return-object v0
.end method

.method getUdid()Ljava/lang/String;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mUdid:Ljava/lang/String;

    return-object v0
.end method

.method public isForceGdprApplies()Z
    .registers 2

    .line 361
    iget-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mForceGdprApplies:Z

    return v0
.end method

.method isWhitelisted()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mIsWhitelisted:Z

    return v0
.end method

.method setAdUnit(Ljava/lang/String;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mAdUnitId:Ljava/lang/String;

    return-void
.end method

.method setCachedLastAdUnitIdUsedForInit(Ljava/lang/String;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCachedLastAdUnitIdUsedForInit:Ljava/lang/String;

    return-void
.end method

.method setConsentChangeReason(Ljava/lang/String;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentChangeReason:Ljava/lang/String;

    return-void
.end method

.method setConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    return-void
.end method

.method setConsentStatusBeforeDnt(Lcom/mopub/common/privacy/ConsentStatus;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentStatusBeforeDnt:Lcom/mopub/common/privacy/ConsentStatus;

    return-void
.end method

.method setConsentedPrivacyPolicyVersion(Ljava/lang/String;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentedPrivacyPolicyVersion:Ljava/lang/String;

    return-void
.end method

.method setConsentedVendorListIabFormat(Ljava/lang/String;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentedVendorListIabFormat:Ljava/lang/String;

    return-void
.end method

.method setConsentedVendorListVersion(Ljava/lang/String;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentedVendorListVersion:Ljava/lang/String;

    return-void
.end method

.method setCurrentPrivacyPolicyLink(Ljava/lang/String;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentPrivacyPolicyLink:Ljava/lang/String;

    return-void
.end method

.method setCurrentPrivacyPolicyVersion(Ljava/lang/String;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentPrivacyPolicyVersion:Ljava/lang/String;

    return-void
.end method

.method setCurrentVendorListIabFormat(Ljava/lang/String;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListIabFormat:Ljava/lang/String;

    return-void
.end method

.method setCurrentVendorListIabHash(Ljava/lang/String;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListIabHash:Ljava/lang/String;

    return-void
.end method

.method setCurrentVendorListLink(Ljava/lang/String;)V
    .registers 2

    .line 251
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListLink:Ljava/lang/String;

    return-void
.end method

.method setCurrentVendorListVersion(Ljava/lang/String;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListVersion:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mExtras:Ljava/lang/String;

    return-void
.end method

.method setForceGdprApplies(Z)V
    .registers 2

    .line 365
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mForceGdprApplies:Z

    return-void
.end method

.method setGdprApplies(Ljava/lang/Boolean;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mGdprApplies:Ljava/lang/Boolean;

    return-void
.end method

.method setLastChangedMs(Ljava/lang/String;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mLastChangedMs:Ljava/lang/String;

    return-void
.end method

.method setLastSuccessfullySyncedConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mLastSuccessfullySyncedConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    return-void
.end method

.method setShouldReacquireConsent(Z)V
    .registers 2

    .line 348
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mReacquireConsent:Z

    return-void
.end method

.method setUdid(Ljava/lang/String;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mUdid:Ljava/lang/String;

    return-void
.end method

.method setWhitelisted(Z)V
    .registers 2

    .line 227
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mIsWhitelisted:Z

    return-void
.end method

.method shouldReacquireConsent()Z
    .registers 2

    .line 344
    iget-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mReacquireConsent:Z

    return v0
.end method

.method writeToDisk()V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mAppContext:Landroid/content/Context;

    const-string v1, "com.mopub.privacy"

    invoke-static {v0, v1}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mAdUnitId:Ljava/lang/String;

    const-string v2, "info/adunit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCachedLastAdUnitIdUsedForInit:Ljava/lang/String;

    const-string v2, "info/cached_last_ad_unit_id_used_for_init"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v1}, Lcom/mopub/common/privacy/ConsentStatus;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "info/consent_status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mLastSuccessfullySyncedConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    move-object v1, v2

    goto :goto_30

    .line 152
    :cond_2c
    invoke-virtual {v1}, Lcom/mopub/common/privacy/ConsentStatus;->name()Ljava/lang/String;

    move-result-object v1

    :goto_30
    const-string v3, "info/last_successfully_synced_consent_status"

    .line 151
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    iget-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mIsWhitelisted:Z

    const-string v3, "info/is_whitelisted"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListVersion:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListLink:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_link"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentPrivacyPolicyVersion:Ljava/lang/String;

    const-string v3, "info/current_privacy_policy_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentPrivacyPolicyLink:Ljava/lang/String;

    const-string v3, "info/current_privacy_policy_link"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListIabFormat:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_iab_format"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mCurrentVendorListIabHash:Ljava/lang/String;

    const-string v3, "info/current_vendor_list_iab_hash"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentedVendorListVersion:Ljava/lang/String;

    const-string v3, "info/consented_vendor_list_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentedPrivacyPolicyVersion:Ljava/lang/String;

    const-string v3, "info/consented_privacy_policy_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentedVendorListIabFormat:Ljava/lang/String;

    const-string v3, "info/consented_vendor_list_iab_format"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mExtras:Ljava/lang/String;

    const-string v3, "info/extras"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentChangeReason:Ljava/lang/String;

    const-string v3, "info/consent_change_reason"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    iget-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mReacquireConsent:Z

    const-string v3, "info/reacquire_consent"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mGdprApplies:Ljava/lang/Boolean;

    if-nez v1, :cond_96

    move-object v1, v2

    goto :goto_9a

    .line 167
    :cond_96
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9a
    const-string v3, "info/gdpr_applies"

    .line 166
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mForceGdprApplies:Z

    const-string v3, "info/force_gdpr_applies"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mUdid:Ljava/lang/String;

    const-string v3, "info/udid"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mLastChangedMs:Ljava/lang/String;

    const-string v3, "info/last_changed_ms"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoData;->mConsentStatusBeforeDnt:Lcom/mopub/common/privacy/ConsentStatus;

    if-nez v1, :cond_b9

    goto :goto_bd

    .line 172
    :cond_b9
    invoke-virtual {v1}, Lcom/mopub/common/privacy/ConsentStatus;->name()Ljava/lang/String;

    move-result-object v2

    :goto_bd
    const-string v1, "info/consent_status_before_dnt"

    .line 171
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
