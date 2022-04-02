.class public abstract Lcom/startapp/android/publish/adsCommon/Utils/e;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/Object;ZZ)V
.end method

.method public a(Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/util/Set;ZZ)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/Set;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation
.end method
