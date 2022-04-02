.class public final enum Lcom/mopub/common/privacy/PrivacyKey;
.super Ljava/lang/Enum;
.source "PrivacyKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/privacy/PrivacyKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CALL_AGAIN_AFTER_SECS:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CONSENT_CHANGE_REASON:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CURRENT_PRIVACY_POLICY_LINK:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CURRENT_PRIVACY_POLICY_VERSION:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CURRENT_VENDOR_LIST_IAB_FORMAT:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CURRENT_VENDOR_LIST_IAB_HASH:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CURRENT_VENDOR_LIST_LINK:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CURRENT_VENDOR_LIST_VERSION:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum EXTRAS:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum FORCE_EXPLICIT_NO:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum FORCE_GDPR_APPLIES:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum INVALIDATE_CONSENT:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum IS_GDPR_REGION:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum IS_WHITELISTED:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum REACQUIRE_CONSENT:Lcom/mopub/common/privacy/PrivacyKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 13
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "IS_GDPR_REGION"

    const/4 v2, 0x0

    const-string v3, "is_gdpr_region"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->IS_GDPR_REGION:Lcom/mopub/common/privacy/PrivacyKey;

    .line 14
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "IS_WHITELISTED"

    const/4 v3, 0x1

    const-string v4, "is_whitelisted"

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->IS_WHITELISTED:Lcom/mopub/common/privacy/PrivacyKey;

    .line 15
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "FORCE_GDPR_APPLIES"

    const/4 v4, 0x2

    const-string v5, "force_gdpr_applies"

    invoke-direct {v0, v1, v4, v5}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->FORCE_GDPR_APPLIES:Lcom/mopub/common/privacy/PrivacyKey;

    .line 16
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "FORCE_EXPLICIT_NO"

    const/4 v5, 0x3

    const-string v6, "force_explicit_no"

    invoke-direct {v0, v1, v5, v6}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->FORCE_EXPLICIT_NO:Lcom/mopub/common/privacy/PrivacyKey;

    .line 17
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "INVALIDATE_CONSENT"

    const/4 v6, 0x4

    const-string v7, "invalidate_consent"

    invoke-direct {v0, v1, v6, v7}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->INVALIDATE_CONSENT:Lcom/mopub/common/privacy/PrivacyKey;

    .line 18
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "REACQUIRE_CONSENT"

    const/4 v7, 0x5

    const-string v8, "reacquire_consent"

    invoke-direct {v0, v1, v7, v8}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->REACQUIRE_CONSENT:Lcom/mopub/common/privacy/PrivacyKey;

    .line 19
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "EXTRAS"

    const/4 v8, 0x6

    const-string v9, "extras"

    invoke-direct {v0, v1, v8, v9}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->EXTRAS:Lcom/mopub/common/privacy/PrivacyKey;

    .line 20
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "CURRENT_VENDOR_LIST_VERSION"

    const/4 v9, 0x7

    const-string v10, "current_vendor_list_version"

    invoke-direct {v0, v1, v9, v10}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_VENDOR_LIST_VERSION:Lcom/mopub/common/privacy/PrivacyKey;

    .line 21
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "CURRENT_VENDOR_LIST_LINK"

    const/16 v10, 0x8

    const-string v11, "current_vendor_list_link"

    invoke-direct {v0, v1, v10, v11}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_VENDOR_LIST_LINK:Lcom/mopub/common/privacy/PrivacyKey;

    .line 22
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "CURRENT_PRIVACY_POLICY_VERSION"

    const/16 v11, 0x9

    const-string v12, "current_privacy_policy_version"

    invoke-direct {v0, v1, v11, v12}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_PRIVACY_POLICY_VERSION:Lcom/mopub/common/privacy/PrivacyKey;

    .line 23
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "CURRENT_PRIVACY_POLICY_LINK"

    const/16 v12, 0xa

    const-string v13, "current_privacy_policy_link"

    invoke-direct {v0, v1, v12, v13}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_PRIVACY_POLICY_LINK:Lcom/mopub/common/privacy/PrivacyKey;

    .line 24
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "CURRENT_VENDOR_LIST_IAB_FORMAT"

    const/16 v13, 0xb

    const-string v14, "current_vendor_list_iab_format"

    invoke-direct {v0, v1, v13, v14}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_VENDOR_LIST_IAB_FORMAT:Lcom/mopub/common/privacy/PrivacyKey;

    .line 25
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "CURRENT_VENDOR_LIST_IAB_HASH"

    const/16 v14, 0xc

    const-string v15, "current_vendor_list_iab_hash"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_VENDOR_LIST_IAB_HASH:Lcom/mopub/common/privacy/PrivacyKey;

    .line 26
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "CALL_AGAIN_AFTER_SECS"

    const/16 v15, 0xd

    const-string v14, "call_again_after_secs"

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->CALL_AGAIN_AFTER_SECS:Lcom/mopub/common/privacy/PrivacyKey;

    .line 27
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "CONSENT_CHANGE_REASON"

    const/16 v14, 0xe

    const-string v15, "consent_change_reason"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->CONSENT_CHANGE_REASON:Lcom/mopub/common/privacy/PrivacyKey;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/mopub/common/privacy/PrivacyKey;

    .line 12
    sget-object v15, Lcom/mopub/common/privacy/PrivacyKey;->IS_GDPR_REGION:Lcom/mopub/common/privacy/PrivacyKey;

    aput-object v15, v1, v2

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->IS_WHITELISTED:Lcom/mopub/common/privacy/PrivacyKey;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->FORCE_GDPR_APPLIES:Lcom/mopub/common/privacy/PrivacyKey;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->FORCE_EXPLICIT_NO:Lcom/mopub/common/privacy/PrivacyKey;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->INVALIDATE_CONSENT:Lcom/mopub/common/privacy/PrivacyKey;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->REACQUIRE_CONSENT:Lcom/mopub/common/privacy/PrivacyKey;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->EXTRAS:Lcom/mopub/common/privacy/PrivacyKey;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_VENDOR_LIST_VERSION:Lcom/mopub/common/privacy/PrivacyKey;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_VENDOR_LIST_LINK:Lcom/mopub/common/privacy/PrivacyKey;

    aput-object v2, v1, v10

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_PRIVACY_POLICY_VERSION:Lcom/mopub/common/privacy/PrivacyKey;

    aput-object v2, v1, v11

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_PRIVACY_POLICY_LINK:Lcom/mopub/common/privacy/PrivacyKey;

    aput-object v2, v1, v12

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_VENDOR_LIST_IAB_FORMAT:Lcom/mopub/common/privacy/PrivacyKey;

    aput-object v2, v1, v13

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_VENDOR_LIST_IAB_HASH:Lcom/mopub/common/privacy/PrivacyKey;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/privacy/PrivacyKey;->CALL_AGAIN_AFTER_SECS:Lcom/mopub/common/privacy/PrivacyKey;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lcom/mopub/common/privacy/PrivacyKey;->$VALUES:[Lcom/mopub/common/privacy/PrivacyKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/mopub/common/privacy/PrivacyKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/privacy/PrivacyKey;
    .registers 2

    .line 12
    const-class v0, Lcom/mopub/common/privacy/PrivacyKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/privacy/PrivacyKey;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/privacy/PrivacyKey;
    .registers 1

    .line 12
    sget-object v0, Lcom/mopub/common/privacy/PrivacyKey;->$VALUES:[Lcom/mopub/common/privacy/PrivacyKey;

    invoke-virtual {v0}, [Lcom/mopub/common/privacy/PrivacyKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/privacy/PrivacyKey;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/mopub/common/privacy/PrivacyKey;->key:Ljava/lang/String;

    return-object v0
.end method
