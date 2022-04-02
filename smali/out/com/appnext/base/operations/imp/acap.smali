.class public Lcom/appnext/base/operations/imp/acap;
.super Lcom/appnext/base/operations/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/base/operations/imp/acap$CollectedDataModelByDateComparator;
    }
.end annotation


# static fields
.field private static final et:J = 0x1L

.field private static final eu:Ljava/lang/String; = "ft"

.field private static final ev:Ljava/lang/String; = "nfga"

.field private static final ew:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/base/operations/c;-><init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method private static f(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_20
    return-object p0
.end method


# virtual methods
.method public final aF()Z
    .registers 3

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_11

    .line 40
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.GET_TASKS"

    invoke-static {v0, v1}, Lcom/appnext/base/b/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 42
    :cond_11
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/base/b/j;->f(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 79
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/base/a/b/b;

    .line 81
    invoke-static {}, Lcom/appnext/base/b/h;->aO()Lcom/appnext/base/b/h;

    move-result-object v3

    invoke-virtual {v2}, Lcom/appnext/base/a/b/b;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/appnext/base/b/h;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "nfga"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 83
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 87
    :cond_3d
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_44

    return-object v0

    .line 91
    :cond_44
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_54

    return-object v0

    .line 97
    :cond_54
    new-instance v1, Lcom/appnext/base/operations/imp/acap$CollectedDataModelByDateComparator;

    invoke-direct {v1, p0, v0}, Lcom/appnext/base/operations/imp/acap$CollectedDataModelByDateComparator;-><init>(Lcom/appnext/base/operations/imp/acap;Lcom/appnext/base/operations/imp/acap$1;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method protected getData()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    :try_start_1
    invoke-virtual {p0}, Lcom/appnext/base/operations/imp/acap;->ay()Lcom/appnext/base/a/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/base/a/b/c;->al()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appnext/base/operations/imp/acap;->ay()Lcom/appnext/base/a/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/b/c;->am()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appnext/base/b/j;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 50
    invoke-virtual {p0}, Lcom/appnext/base/operations/imp/acap;->ay()Lcom/appnext/base/a/b/c;

    move-result-object v3

    const-string v4, "ft"

    const-wide/16 v5, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/appnext/base/a/b/c;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 51
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v2, v3, v4}, Lcom/appnext/base/b/j;->a(Landroid/content/Context;JJ)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2e

    move-object v1, v0

    goto :goto_4a

    .line 1106
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1107
    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1109
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_32

    .line 54
    :cond_4a
    :goto_4a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_7a

    .line 55
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7a

    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 58
    new-instance v4, Lcom/appnext/base/a/b/b;

    invoke-virtual {p0}, Lcom/appnext/base/operations/imp/acap;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/appnext/base/b/d$a;->String:Lcom/appnext/base/b/d$a;

    invoke-virtual {v6}, Lcom/appnext/base/b/d$a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Lcom/appnext/base/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_7a
    const-string v1, "nfga"

    .line 62
    new-instance v3, Lcom/appnext/base/a/b/b;

    invoke-virtual {p0}, Lcom/appnext/base/operations/imp/acap;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appnext/base/b/d$a;->String:Lcom/appnext/base/b/d$a;

    invoke-virtual {v5}, Lcom/appnext/base/b/d$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5}, Lcom/appnext/base/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_8f

    :cond_8e
    return-object v2

    :catchall_8f
    return-object v0
.end method

.method protected getKey()Ljava/lang/String;
    .registers 2

    .line 126
    const-class v0, Lcom/appnext/base/operations/imp/acap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
