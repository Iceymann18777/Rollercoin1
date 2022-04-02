.class public Lcom/mopub/common/privacy/SyncResponse;
.super Ljava/lang/Object;
.source "SyncResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/SyncResponse$Builder;
    }
.end annotation


# instance fields
.field private final mCallAgainAfterSecs:Ljava/lang/String;

.field private final mConsentChangeReason:Ljava/lang/String;

.field private final mCurrentPrivacyPolicyLink:Ljava/lang/String;

.field private final mCurrentPrivacyPolicyVersion:Ljava/lang/String;

.field private final mCurrentVendorListIabFormat:Ljava/lang/String;

.field private final mCurrentVendorListIabHash:Ljava/lang/String;

.field private final mCurrentVendorListLink:Ljava/lang/String;

.field private final mCurrentVendorListVersion:Ljava/lang/String;

.field private final mExtras:Ljava/lang/String;

.field private final mForceExplicitNo:Z

.field private final mForceGdprApplies:Z

.field private final mInvalidateConsent:Z

.field private final mIsGdprRegion:Z

.field private final mIsWhitelisted:Z

.field private final mReacquireConsent:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    move-object v0, p0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 115
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 116
    invoke-static {p7}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 117
    invoke-static {p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    invoke-static {p9}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    invoke-static {p10}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 120
    invoke-static {p12}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "0"

    move-object v2, p1

    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/mopub/common/privacy/SyncResponse;->mIsGdprRegion:Z

    const-string v1, "1"

    move-object v2, p2

    .line 126
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mopub/common/privacy/SyncResponse;->mForceExplicitNo:Z

    move-object v2, p3

    .line 127
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mopub/common/privacy/SyncResponse;->mInvalidateConsent:Z

    move-object v2, p4

    .line 128
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mopub/common/privacy/SyncResponse;->mReacquireConsent:Z

    move-object v2, p5

    .line 129
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mopub/common/privacy/SyncResponse;->mIsWhitelisted:Z

    move-object v2, p6

    .line 130
    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mopub/common/privacy/SyncResponse;->mForceGdprApplies:Z

    move-object v1, p7

    .line 132
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->mCurrentVendorListVersion:Ljava/lang/String;

    move-object v1, p8

    .line 133
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->mCurrentVendorListLink:Ljava/lang/String;

    move-object v1, p9

    .line 134
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->mCurrentPrivacyPolicyVersion:Ljava/lang/String;

    move-object v1, p10

    .line 135
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->mCurrentPrivacyPolicyLink:Ljava/lang/String;

    move-object v1, p11

    .line 136
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->mCurrentVendorListIabFormat:Ljava/lang/String;

    move-object v1, p12

    .line 137
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->mCurrentVendorListIabHash:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 138
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->mCallAgainAfterSecs:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 139
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->mExtras:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 140
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->mConsentChangeReason:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/privacy/SyncResponse$1;)V
    .registers 17

    .line 12
    invoke-direct/range {p0 .. p15}, Lcom/mopub/common/privacy/SyncResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCallAgainAfterSecs()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mCallAgainAfterSecs:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentChangeReason()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mConsentChangeReason:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPrivacyPolicyLink()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mCurrentPrivacyPolicyLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPrivacyPolicyVersion()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mCurrentPrivacyPolicyVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListIabFormat()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mCurrentVendorListIabFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListIabHash()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mCurrentVendorListIabHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListLink()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mCurrentVendorListLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListVersion()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mCurrentVendorListVersion:Ljava/lang/String;

    return-object v0
.end method

.method getExtras()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mExtras:Ljava/lang/String;

    return-object v0
.end method

.method public isForceExplicitNo()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mForceExplicitNo:Z

    return v0
.end method

.method public isForceGdprApplies()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mForceGdprApplies:Z

    return v0
.end method

.method public isGdprRegion()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mIsGdprRegion:Z

    return v0
.end method

.method public isInvalidateConsent()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mInvalidateConsent:Z

    return v0
.end method

.method public isReacquireConsent()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mReacquireConsent:Z

    return v0
.end method

.method public isWhitelisted()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->mIsWhitelisted:Z

    return v0
.end method
