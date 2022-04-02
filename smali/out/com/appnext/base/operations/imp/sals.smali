.class public Lcom/appnext/base/operations/imp/sals;
.super Lcom/appnext/base/operations/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/base/operations/c;-><init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final aA()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final aF()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected getData()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "http://cdn.appnext.com/tools/services/4.7.2/plist.json"

    const v2, 0xea60

    const/4 v3, 0x1

    .line 1193
    invoke-static {v1, v0, v3, v2}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/HashMap;ZI)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a;->Z()Lcom/appnext/base/a/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/c/a;->delete()V

    .line 42
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a;->Z()Lcom/appnext/base/a/c/a;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/appnext/base/a/c/a;->a(Lorg/json/JSONArray;)J
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_2b
    return-object v0
.end method

.method protected final getKey()Ljava/lang/String;
    .registers 2

    .line 53
    const-class v0, Lcom/appnext/base/operations/imp/sals;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
