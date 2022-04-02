.class La/a/e;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static final a(La/a/b/a/a;)La/a/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/a/b/a/a<",
            "+TT;>;)",
            "La/a/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, La/a/g;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, La/a/g;-><init>(La/a/b/a/a;Ljava/lang/Object;ILa/a/b/b/e;)V

    check-cast v0, La/a/c;

    return-object v0
.end method
