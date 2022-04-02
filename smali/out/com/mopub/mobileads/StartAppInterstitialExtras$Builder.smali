.class public Lcom/mopub/mobileads/StartAppInterstitialExtras$Builder;
.super Ljava/lang/Object;
.source "StartAppInterstitialExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/StartAppInterstitialExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private extras:Lcom/mopub/mobileads/StartAppInterstitialExtras;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/mopub/mobileads/StartAppInterstitialExtras;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/StartAppInterstitialExtras;-><init>(Lcom/mopub/mobileads/StartAppInterstitialExtras$1;)V

    iput-object v0, p0, Lcom/mopub/mobileads/StartAppInterstitialExtras$Builder;->extras:Lcom/mopub/mobileads/StartAppInterstitialExtras;

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

    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppInterstitialExtras$Builder;->extras:Lcom/mopub/mobileads/StartAppInterstitialExtras;

    const-string v1, "startAppExtras"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public setAdTag(Ljava/lang/String;)Lcom/mopub/mobileads/StartAppInterstitialExtras$Builder;
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppInterstitialExtras$Builder;->extras:Lcom/mopub/mobileads/StartAppInterstitialExtras;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/StartAppInterstitialExtras;->setAdTag(Ljava/lang/String;)Lcom/mopub/mobileads/StartAppExtras;

    return-object p0
.end method

.method public setAge(Ljava/lang/Integer;)Lcom/mopub/mobileads/StartAppInterstitialExtras$Builder;
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppInterstitialExtras$Builder;->extras:Lcom/mopub/mobileads/StartAppInterstitialExtras;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/StartAppInterstitialExtras;->setAge(Ljava/lang/Integer;)Lcom/mopub/mobileads/StartAppExtras;

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/mopub/mobileads/StartAppInterstitialExtras$Builder;
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppInterstitialExtras$Builder;->extras:Lcom/mopub/mobileads/StartAppInterstitialExtras;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/StartAppInterstitialExtras;->setKeywords(Ljava/lang/String;)Lcom/mopub/mobileads/StartAppExtras;

    return-object p0
.end method
