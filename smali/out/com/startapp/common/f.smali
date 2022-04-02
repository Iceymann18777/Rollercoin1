.class public Lcom/startapp/common/f;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/startapp/a/a/b/a;

    invoke-direct {v0}, Lcom/startapp/a/a/b/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/startapp/a/a/b/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
