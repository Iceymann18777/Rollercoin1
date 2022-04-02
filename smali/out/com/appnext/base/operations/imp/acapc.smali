.class public Lcom/appnext/base/operations/imp/acapc;
.super Lcom/appnext/base/operations/imp/acap;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/base/operations/imp/acap;-><init>(Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final aG()Lcom/appnext/base/b/d$a;
    .registers 2

    .line 90
    sget-object v0, Lcom/appnext/base/b/d$a;->JSONArray:Lcom/appnext/base/b/d$a;

    return-object v0
.end method

.method protected final b(Ljava/util/List;)Ljava/util/List;
    .registers 11
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

    .line 30
    const-class v0, Lcom/appnext/base/operations/imp/acapc;

    invoke-super {p0, p1}, Lcom/appnext/base/operations/imp/acap;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_ef

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_ef

    .line 38
    :cond_11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appnext/base/a/b/b;

    .line 41
    invoke-static {}, Lcom/appnext/base/b/h;->aO()Lcom/appnext/base/b/h;

    move-result-object v4

    invoke-virtual {v3}, Lcom/appnext/base/a/b/b;->ai()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/appnext/base/b/h;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    return-object v1

    .line 45
    :cond_39
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appnext/base/a/a;->Z()Lcom/appnext/base/a/c/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/appnext/base/a/c/a;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 47
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1a

    const/4 v4, 0x0

    .line 48
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appnext/base/a/b/a;

    .line 49
    invoke-virtual {v3}, Lcom/appnext/base/a/b/a;->ag()Ljava/lang/Integer;

    move-result-object v3

    .line 51
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_65

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 55
    :cond_65
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 61
    :cond_78
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7f

    return-object v1

    .line 66
    :cond_7f
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 67
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 68
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_9d
    const-string v5, "category"

    .line 70
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "appcount"

    .line 71
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_af
    .catchall {:try_start_9d .. :try_end_af} :catchall_af

    .line 75
    :catchall_af
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_8c

    .line 78
    :cond_b3
    invoke-static {}, Lcom/appnext/base/b/h;->aO()Lcom/appnext/base/b/h;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/appnext/base/b/h;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c6

    return-object v1

    .line 82
    :cond_c6
    new-instance p1, Lcom/appnext/base/a/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    sget-object v0, Lcom/appnext/base/b/d$a;->JSONArray:Lcom/appnext/base/b/d$a;

    invoke-virtual {v0}, Lcom/appnext/base/b/d$a;->getType()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/appnext/base/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_ee

    return-object v1

    :cond_ee
    return-object v0

    :cond_ef
    :goto_ef
    return-object v1
.end method

.method protected final getKey()Ljava/lang/String;
    .registers 2

    .line 95
    const-class v0, Lcom/appnext/base/operations/imp/acapc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
