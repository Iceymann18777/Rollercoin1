.class Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;
.super Ljava/lang/Object;
.source "PersonalInfoManager.java"

# interfaces
.implements Lcom/mopub/common/privacy/SyncRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/PersonalInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalInfoSyncRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/privacy/PersonalInfoManager;


# direct methods
.method private constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V
    .registers 2

    .line 631
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$1;)V
    .registers 3

    .line 631
    invoke-direct {p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .registers 6

    .line 731
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_10

    move-object v1, p1

    check-cast v1, Lcom/mopub/network/MoPubNetworkError;

    .line 732
    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v1

    goto :goto_16

    :cond_10
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 733
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    :goto_16
    if-eqz v0, :cond_1d

    .line 735
    invoke-virtual {p1}, Lcom/mopub/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    :cond_1d
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 736
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    .line 737
    :goto_23
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 739
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1, v3}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$502(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    .line 740
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$800(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 741
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Personal Info Manager initialization finished but ran into errors."

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 742
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$800(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    .line 743
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$802(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/SdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;

    :cond_5c
    return-void
.end method

.method public onSuccess(Lcom/mopub/common/privacy/SyncResponse;)V
    .registers 10

    .line 635
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_COMPLETED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 637
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v0

    .line 638
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->getGdprApplies()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 639
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isGdprRegion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/PersonalInfoData;->setGdprApplies(Ljava/lang/Boolean;)V

    .line 641
    :cond_2b
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isForceGdprApplies()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5f

    .line 642
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2, v3}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$902(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    .line 643
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/PersonalInfoData;->setForceGdprApplies(Z)V

    .line 644
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v2

    if-eq v0, v2, :cond_5f

    .line 646
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v4

    iget-object v5, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 647
    invoke-static {v5}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v5

    .line 646
    invoke-static {v0, v4, v5, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$1000(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    .line 651
    :cond_5f
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 652
    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getCachedLastAdUnitIdUsedForInit()Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_88

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 654
    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 655
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mopub/common/privacy/PersonalInfoData;->setAdUnit(Ljava/lang/String;)V

    .line 657
    :cond_88
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$1100(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/privacy/PersonalInfoData;->setLastSuccessfullySyncedConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)V

    .line 658
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isWhitelisted()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/privacy/PersonalInfoData;->setWhitelisted(Z)V

    .line 659
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/privacy/PersonalInfoData;->setCurrentVendorListVersion(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/privacy/PersonalInfoData;->setCurrentVendorListLink(Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v0

    .line 662
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-virtual {v0, v2}, Lcom/mopub/common/privacy/PersonalInfoData;->setCurrentPrivacyPolicyVersion(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentPrivacyPolicyLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/privacy/PersonalInfoData;->setCurrentPrivacyPolicyLink(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListIabHash()Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListIabFormat()Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10e

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 667
    invoke-static {v4}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/common/privacy/PersonalInfoData;->getCurrentVendorListIabHash()Ljava/lang/String;

    move-result-object v4

    .line 666
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10e

    .line 667
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10e

    .line 669
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v4}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mopub/common/privacy/PersonalInfoData;->setCurrentVendorListIabFormat(Ljava/lang/String;)V

    .line 670
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mopub/common/privacy/PersonalInfoData;->setCurrentVendorListIabHash(Ljava/lang/String;)V

    .line 672
    :cond_10e
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getExtras()Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_121

    .line 674
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mopub/common/privacy/PersonalInfoData;->setExtras(Ljava/lang/String;)V

    .line 676
    :cond_121
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getConsentChangeReason()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isForceExplicitNo()Z

    move-result v2

    if-eqz v2, :cond_135

    .line 680
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$1200(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onForceExplicitNo(Ljava/lang/String;)V

    goto :goto_154

    .line 681
    :cond_135
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isInvalidateConsent()Z

    move-result v2

    if-eqz v2, :cond_145

    .line 682
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$1200(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onInvalidateConsent(Ljava/lang/String;)V

    goto :goto_154

    .line 683
    :cond_145
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isReacquireConsent()Z

    move-result v2

    if-eqz v2, :cond_154

    .line 684
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$1200(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onReacquireConsent(Ljava/lang/String;)V

    .line 687
    :cond_154
    :goto_154
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCallAgainAfterSecs()Ljava/lang/String;

    move-result-object p1

    .line 688
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_198

    .line 690
    :try_start_15e
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_172

    .line 692
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {p1, v4, v5}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$702(Lcom/mopub/common/privacy/PersonalInfoManager;J)J

    goto :goto_198

    .line 694
    :cond_172
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callAgainAfterSecs is not positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_18c
    .catch Ljava/lang/NumberFormatException; {:try_start_15e .. :try_end_18c} :catch_18d

    goto :goto_198

    .line 697
    :catch_18d
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "Unable to parse callAgainAfterSecs. Ignoring value"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 703
    :cond_198
    :goto_198
    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$1100(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1b0

    .line 704
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/PersonalInfoData;->setUdid(Ljava/lang/String;)V

    .line 707
    :cond_1b0
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$1300(Lcom/mopub/common/privacy/PersonalInfoManager;)Z

    move-result p1

    if-eqz p1, :cond_1c2

    .line 708
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$902(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    .line 709
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$1302(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    .line 712
    :cond_1c2
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoData;->writeToDisk()V

    .line 714
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$502(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    .line 716
    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 717
    invoke-static {v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$1100(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v1

    .line 716
    invoke-virtual {p1, v1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f8

    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 717
    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoData;->isWhitelisted()Z

    move-result p1

    if-eqz p1, :cond_1f8

    .line 718
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, v1, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$200(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 720
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {p1, v3}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    .line 723
    :cond_1f8
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$800(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    if-eqz p1, :cond_20e

    .line 724
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$800(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    .line 725
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$802(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/SdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;

    :cond_20e
    return-void
.end method
