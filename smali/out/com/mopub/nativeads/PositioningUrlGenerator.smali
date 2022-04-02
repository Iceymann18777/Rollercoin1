.class Lcom/mopub/nativeads/PositioningUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "PositioningUrlGenerator.java"


# static fields
.field private static final POSITIONING_API_VERSION:Ljava/lang/String; = "1"


# instance fields
.field private mAdUnitId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mopub/nativeads/PositioningUrlGenerator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setAdUnitId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "id"

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/mopub/nativeads/PositioningUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "/m/pos"

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/PositioningUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/mopub/nativeads/PositioningUrlGenerator;->mAdUnitId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mopub/nativeads/PositioningUrlGenerator;->setAdUnitId(Ljava/lang/String;)V

    const-string p1, "1"

    .line 36
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/PositioningUrlGenerator;->setApiVersion(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/mopub/nativeads/PositioningUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nv"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/nativeads/PositioningUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/mopub/nativeads/PositioningUrlGenerator;->appendAppEngineInfo()V

    .line 44
    invoke-virtual {p0}, Lcom/mopub/nativeads/PositioningUrlGenerator;->appendWrapperVersion()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 47
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 48
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 46
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/PositioningUrlGenerator;->setDeviceInfo([Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/PositioningUrlGenerator;->setAppVersion(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/mopub/nativeads/PositioningUrlGenerator;->appendAdvertisingInfoTemplates()V

    .line 54
    invoke-virtual {p0}, Lcom/mopub/nativeads/PositioningUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/PositioningUrlGenerator;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/mopub/nativeads/PositioningUrlGenerator;->mAdUnitId:Ljava/lang/String;

    return-object p0
.end method
