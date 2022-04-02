.class Lcom/mopub/nativeads/NativeUrlGenerator;
.super Lcom/mopub/common/AdUrlGenerator;
.source "NativeUrlGenerator.java"


# instance fields
.field private mDesiredAssets:Ljava/lang/String;

.field private mSequenceNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setDesiredAssets()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mDesiredAssets:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 73
    iget-object v0, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mDesiredAssets:Ljava/lang/String;

    const-string v1, "assets"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/nativeads/NativeUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private setSequenceNumber()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mSequenceNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 67
    iget-object v0, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mSequenceNumber:Ljava/lang/String;

    const-string v1, "MAGIC_NO"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/nativeads/NativeUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "/m/ad"

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/NativeUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/NativeUrlGenerator;->addBaseParams(Lcom/mopub/common/ClientMetadata;)V

    .line 58
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeUrlGenerator;->setDesiredAssets()V

    .line 60
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeUrlGenerator;->setSequenceNumber()V

    .line 62
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/NativeUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/NativeUrlGenerator;

    move-result-object p1

    return-object p1
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/NativeUrlGenerator;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mAdUnitId:Ljava/lang/String;

    return-object p0
.end method

.method withRequest(Lcom/mopub/nativeads/RequestParameters;)Lcom/mopub/nativeads/NativeUrlGenerator;
    .registers 3

    if-eqz p1, :cond_1c

    .line 35
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getUserDataKeywords()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mUserDataKeywords:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mKeywords:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getDesiredAssets()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mDesiredAssets:Ljava/lang/String;

    :cond_1c
    return-object p0
.end method

.method withSequenceNumber(I)Lcom/mopub/nativeads/NativeUrlGenerator;
    .registers 2

    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mSequenceNumber:Ljava/lang/String;

    return-object p0
.end method
