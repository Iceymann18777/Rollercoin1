.class public Lcom/mopub/mobileads/StartAppBannerExtras$Builder;
.super Ljava/lang/Object;
.source "StartAppBannerExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/StartAppBannerExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private extras:Lcom/mopub/mobileads/StartAppBannerExtras;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/mopub/mobileads/StartAppBannerExtras;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/StartAppBannerExtras;-><init>(Lcom/mopub/mobileads/StartAppBannerExtras$1;)V

    iput-object v0, p0, Lcom/mopub/mobileads/StartAppBannerExtras$Builder;->extras:Lcom/mopub/mobileads/StartAppBannerExtras;

    return-void
.end method


# virtual methods
.method public build(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppBannerExtras$Builder;->extras:Lcom/mopub/mobileads/StartAppBannerExtras;

    const-string v1, "startAppExtras"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public setAdTag(Ljava/lang/String;)Lcom/mopub/mobileads/StartAppBannerExtras$Builder;
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppBannerExtras$Builder;->extras:Lcom/mopub/mobileads/StartAppBannerExtras;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/StartAppBannerExtras;->setAdTag(Ljava/lang/String;)Lcom/mopub/mobileads/StartAppExtras;

    return-object p0
.end method

.method public setAge(Ljava/lang/Integer;)Lcom/mopub/mobileads/StartAppBannerExtras$Builder;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppBannerExtras$Builder;->extras:Lcom/mopub/mobileads/StartAppBannerExtras;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/StartAppBannerExtras;->setAge(Ljava/lang/Integer;)Lcom/mopub/mobileads/StartAppExtras;

    return-object p0
.end method

.method public setBannerMode(Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;)Lcom/mopub/mobileads/StartAppBannerExtras$Builder;
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppBannerExtras$Builder;->extras:Lcom/mopub/mobileads/StartAppBannerExtras;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/StartAppBannerExtras;->setBannerMode(Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;)Lcom/mopub/mobileads/StartAppExtras;

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/mopub/mobileads/StartAppBannerExtras$Builder;
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppBannerExtras$Builder;->extras:Lcom/mopub/mobileads/StartAppBannerExtras;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/StartAppBannerExtras;->setKeywords(Ljava/lang/String;)Lcom/mopub/mobileads/StartAppExtras;

    return-object p0
.end method
