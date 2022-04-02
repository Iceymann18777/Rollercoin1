.class public Lcom/mopub/common/privacy/SyncResponse$Builder;
.super Ljava/lang/Object;
.source "SyncResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/SyncResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callAgainAfterSecs:Ljava/lang/String;

.field private consentChangeReason:Ljava/lang/String;

.field private currentPrivacyPolicyLink:Ljava/lang/String;

.field private currentPrivacyPolicyVersion:Ljava/lang/String;

.field private currentVendorListIabFormat:Ljava/lang/String;

.field private currentVendorListIabHash:Ljava/lang/String;

.field private currentVendorListLink:Ljava/lang/String;

.field private currentVendorListVersion:Ljava/lang/String;

.field private extras:Ljava/lang/String;

.field private forceExplicitNo:Ljava/lang/String;

.field private forceGdprApplies:Ljava/lang/String;

.field private invalidateConsent:Ljava/lang/String;

.field private isGdprRegion:Ljava/lang/String;

.field private isWhitelisted:Ljava/lang/String;

.field private reacquireConsent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/mopub/common/privacy/SyncResponse;
    .registers 21

    move-object/from16 v0, p0

    .line 241
    new-instance v18, Lcom/mopub/common/privacy/SyncResponse;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->isGdprRegion:Ljava/lang/String;

    iget-object v3, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->forceExplicitNo:Ljava/lang/String;

    iget-object v4, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->invalidateConsent:Ljava/lang/String;

    iget-object v5, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->reacquireConsent:Ljava/lang/String;

    iget-object v6, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->isWhitelisted:Ljava/lang/String;

    iget-object v7, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->forceGdprApplies:Ljava/lang/String;

    iget-object v8, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->currentVendorListVersion:Ljava/lang/String;

    iget-object v9, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->currentVendorListLink:Ljava/lang/String;

    iget-object v10, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->currentPrivacyPolicyVersion:Ljava/lang/String;

    iget-object v11, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->currentPrivacyPolicyLink:Ljava/lang/String;

    iget-object v12, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->currentVendorListIabFormat:Ljava/lang/String;

    iget-object v13, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->currentVendorListIabHash:Ljava/lang/String;

    iget-object v14, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->callAgainAfterSecs:Ljava/lang/String;

    iget-object v15, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->extras:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->consentChangeReason:Ljava/lang/String;

    move-object/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/mopub/common/privacy/SyncResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/privacy/SyncResponse$1;)V

    return-object v18
.end method

.method public setCallAgainAfterSecs(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->callAgainAfterSecs:Ljava/lang/String;

    return-object p0
.end method

.method public setConsentChangeReason(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->consentChangeReason:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentPrivacyPolicyLink(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->currentPrivacyPolicyLink:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->currentPrivacyPolicyVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentVendorListIabFormat(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->currentVendorListIabFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentVendorListIabHash(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->currentVendorListIabHash:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentVendorListLink(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->currentVendorListLink:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentVendorListVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->currentVendorListVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setExtras(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->extras:Ljava/lang/String;

    return-object p0
.end method

.method public setForceExplicitNo(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->forceExplicitNo:Ljava/lang/String;

    return-object p0
.end method

.method public setForceGdprApplies(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->forceGdprApplies:Ljava/lang/String;

    return-object p0
.end method

.method public setInvalidateConsent(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->invalidateConsent:Ljava/lang/String;

    return-object p0
.end method

.method public setIsGdprRegion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->isGdprRegion:Ljava/lang/String;

    return-object p0
.end method

.method public setIsWhitelisted(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->isWhitelisted:Ljava/lang/String;

    return-object p0
.end method

.method public setReacquireConsent(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->reacquireConsent:Ljava/lang/String;

    return-object p0
.end method
