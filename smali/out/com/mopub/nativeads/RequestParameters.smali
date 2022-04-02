.class public Lcom/mopub/nativeads/RequestParameters;
.super Ljava/lang/Object;
.source "RequestParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/RequestParameters$Builder;,
        Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;
    }
.end annotation


# instance fields
.field private final mDesiredAssets:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeywords:Ljava/lang/String;

.field private final mLocation:Landroid/location/Location;

.field private final mUserDataKeywords:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mopub/nativeads/RequestParameters$Builder;)V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/mopub/nativeads/RequestParameters$Builder;->access$100(Lcom/mopub/nativeads/RequestParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->mKeywords:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/mopub/nativeads/RequestParameters$Builder;->access$200(Lcom/mopub/nativeads/RequestParameters$Builder;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->mDesiredAssets:Ljava/util/EnumSet;

    .line 87
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 88
    invoke-static {p1}, Lcom/mopub/nativeads/RequestParameters$Builder;->access$300(Lcom/mopub/nativeads/RequestParameters$Builder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    move-object v2, v1

    :goto_1c
    iput-object v2, p0, Lcom/mopub/nativeads/RequestParameters;->mUserDataKeywords:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 89
    invoke-static {p1}, Lcom/mopub/nativeads/RequestParameters$Builder;->access$400(Lcom/mopub/nativeads/RequestParameters$Builder;)Landroid/location/Location;

    move-result-object v1

    :cond_24
    iput-object v1, p0, Lcom/mopub/nativeads/RequestParameters;->mLocation:Landroid/location/Location;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/nativeads/RequestParameters$Builder;Lcom/mopub/nativeads/RequestParameters$1;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/RequestParameters;-><init>(Lcom/mopub/nativeads/RequestParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public final getDesiredAssets()Ljava/lang/String;
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->mDesiredAssets:Ljava/util/EnumSet;

    if-eqz v0, :cond_f

    .line 114
    invoke-virtual {v0}, Ljava/util/EnumSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, ""

    :goto_11
    return-object v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public final getUserDataKeywords()Ljava/lang/String;
    .registers 2

    .line 99
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_8
    iget-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->mUserDataKeywords:Ljava/lang/String;

    return-object v0
.end method
