.class public Lcom/startapp/android/publish/common/model/GetAdResponse;
.super Lcom/startapp/android/publish/adsCommon/BaseResponse;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/common/model/GetAdResponse$inAppBrowserPreLoad;,
        Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adInfoOverrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private adsDetails:Ljava/util/List;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Ljava/util/ArrayList;
        c = Lcom/startapp/android/publish/common/model/AdDetails;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;"
        }
    .end annotation
.end field

.field private inAppBrowser:Z

.field private inAppBrowserPreLoad:Lcom/startapp/android/publish/common/model/GetAdResponse$inAppBrowserPreLoad;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/common/model/GetAdResponse$inAppBrowserPreLoad;
    .end annotation
.end field

.field private productId:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/BaseResponse;-><init>()V

    .line 32
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/adinformation/c;->a()Lcom/startapp/android/publish/adsCommon/adinformation/c;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->adInfoOverrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->adsDetails:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdInfoOverride()Lcom/startapp/android/publish/adsCommon/adinformation/c;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->adInfoOverrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    return-object v0
.end method

.method public getAdsDetails()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->adsDetails:Ljava/util/List;

    return-object v0
.end method

.method public getInAppBrowserPreLoad()Lcom/startapp/android/publish/common/model/GetAdResponse$inAppBrowserPreLoad;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->inAppBrowserPreLoad:Lcom/startapp/android/publish/common/model/GetAdResponse$inAppBrowserPreLoad;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public isInAppBrowser()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->inAppBrowser:Z

    return v0
.end method

.method public setAdsDetails(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->adsDetails:Ljava/util/List;

    return-void
.end method

.method public setInAppBrowser(Z)V
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->inAppBrowser:Z

    return-void
.end method

.method public setInAppBrowserPreLoad(Lcom/startapp/android/publish/common/model/GetAdResponse$inAppBrowserPreLoad;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->inAppBrowserPreLoad:Lcom/startapp/android/publish/common/model/GetAdResponse$inAppBrowserPreLoad;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->productId:Ljava/lang/String;

    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdResponse;->publisherId:Ljava/lang/String;

    return-void
.end method
