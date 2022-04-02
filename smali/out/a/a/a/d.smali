.class La/a/a/d;
.super La/a/a/c;
.source "StartAppSDK"


# direct methods
.method public static final a([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, La/a/a/f;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "ArraysUtilJVM.asList(this)"

    invoke-static {p0, v0}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
