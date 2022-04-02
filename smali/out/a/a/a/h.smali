.class La/a/a/h;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 18
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "java.util.Collections.singletonList(element)"

    invoke-static {p0, v0}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
