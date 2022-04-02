.class public Lcom/yandex/metrica/impl/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_44

    if-nez p1, :cond_c

    goto :goto_44

    .line 26
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v2, v3, :cond_44

    .line 29
    instance-of v2, p0, Ljava/util/HashSet;

    if-eqz v2, :cond_20

    .line 30
    check-cast p0, Ljava/util/HashSet;

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_2e

    .line 32
    :cond_20
    instance-of v2, p1, Ljava/util/HashSet;

    if-eqz v2, :cond_27

    .line 33
    check-cast p1, Ljava/util/HashSet;

    goto :goto_2e

    .line 36
    :cond_27
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p0, p1

    move-object p1, v2

    .line 39
    :goto_2e
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 40
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    return v1

    :cond_43
    return v0

    :cond_44
    :goto_44
    return v1
.end method
