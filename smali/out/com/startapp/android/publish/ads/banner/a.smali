.class public Lcom/startapp/android/publish/ads/banner/a;
.super Lcom/startapp/android/publish/common/model/GetAdRequest;
.source "StartAppSDK"


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;-><init>()V

    return-void
.end method

.method private a(Lcom/startapp/android/publish/adsCommon/Utils/e;)V
    .registers 5

    .line 42
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "fixedSize"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 43
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bnrt"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/a;->b:I

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 15
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/a;->a:Z

    return-void
.end method

.method public a()Z
    .registers 2

    .line 19
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/a;->a:Z

    return v0
.end method

.method public b()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/a;->b:I

    return v0
.end method

.method public getNameValueMap()Lcom/startapp/android/publish/adsCommon/Utils/e;
    .registers 2

    .line 32
    invoke-super {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getNameValueMap()Lcom/startapp/android/publish/adsCommon/Utils/e;

    move-result-object v0

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/startapp/android/publish/adsCommon/Utils/d;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/Utils/d;-><init>()V

    .line 37
    :cond_b
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/banner/a;->a(Lcom/startapp/android/publish/adsCommon/Utils/e;)V

    return-object v0
.end method
