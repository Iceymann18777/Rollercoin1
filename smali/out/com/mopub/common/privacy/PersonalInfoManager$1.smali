.class Lcom/mopub/common/privacy/PersonalInfoManager$1;
.super Ljava/lang/Object;
.source "PersonalInfoManager.java"

# interfaces
.implements Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/privacy/PersonalInfoManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/SdkInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/privacy/PersonalInfoManager;


# direct methods
.method constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIdChanged(Lcom/mopub/common/privacy/AdvertisingId;Lcom/mopub/common/privacy/AdvertisingId;)V
    .registers 4

    .line 102
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p1}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 107
    :cond_13
    invoke-virtual {p1}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p2}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 108
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_DNT_ON:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, p2, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$200(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 110
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void

    .line 112
    :cond_2f
    invoke-virtual {p1}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result p1

    if-eqz p1, :cond_61

    invoke-virtual {p2}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result p1

    if-nez p1, :cond_61

    .line 113
    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 114
    invoke-static {p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatusBeforeDnt()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 115
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DNT_OFF:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, p2, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$200(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void

    .line 119
    :cond_57
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DNT_OFF:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, p2, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$200(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void

    .line 125
    :cond_61
    iget-object p1, p2, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_ab

    .line 126
    invoke-virtual {p2}, Lcom/mopub/common/privacy/AdvertisingId;->getIfaWithPrefix()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/common/privacy/PersonalInfoData;->getUdid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ab

    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 128
    invoke-static {p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object p2

    .line 127
    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 129
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/PersonalInfoData;->setLastSuccessfullySyncedConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)V

    .line 130
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/PersonalInfoData;->setLastChangedMs(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->IFA_CHANGED:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, p2, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$200(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    :cond_ab
    return-void
.end method
