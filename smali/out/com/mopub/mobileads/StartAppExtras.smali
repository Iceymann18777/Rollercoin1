.class public Lcom/mopub/mobileads/StartAppExtras;
.super Ljava/lang/Object;
.source "StartAppExtras.java"


# static fields
.field public static final STARTAPP_EXTRAS_KEY:Ljava/lang/String; = "startAppExtras"


# instance fields
.field private adTag:Ljava/lang/String;

.field private age:Ljava/lang/Integer;

.field private keywords:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdTag()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppExtras;->adTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()Ljava/lang/Integer;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppExtras;->age:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppExtras;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public setAdTag(Ljava/lang/String;)Lcom/mopub/mobileads/StartAppExtras;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/mopub/mobileads/StartAppExtras;->adTag:Ljava/lang/String;

    return-object p0
.end method

.method public setAge(Ljava/lang/Integer;)Lcom/mopub/mobileads/StartAppExtras;
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/mopub/mobileads/StartAppExtras;->age:Ljava/lang/Integer;

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/mopub/mobileads/StartAppExtras;
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/mopub/mobileads/StartAppExtras;->keywords:Ljava/lang/String;

    return-object p0
.end method
