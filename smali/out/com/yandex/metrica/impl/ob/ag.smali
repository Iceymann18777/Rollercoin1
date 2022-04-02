.class public Lcom/yandex/metrica/impl/ob/ag;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 7

    .line 45
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ag;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->C()Lcom/yandex/metrica/impl/ob/by;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/by;->d()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->B()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 55
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->I()Lcom/yandex/metrica/impl/ob/ca;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ag;->b()Ljava/util/HashSet;

    move-result-object v2

    .line 58
    :try_start_1c
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ag;->c()Ljava/util/ArrayList;

    move-result-object v3

    .line 59
    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/utils/d;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 60
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->r()V

    goto :goto_73

    .line 62
    :cond_2a
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 63
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/ob/cm;

    .line 64
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/cm;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_33

    .line 66
    :cond_47
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "features"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1381
    new-instance v4, Lcom/yandex/metrica/impl/h;

    invoke-direct {v4, p1}, Lcom/yandex/metrica/impl/h;-><init>(Lcom/yandex/metrica/impl/h;)V

    .line 1382
    sget-object p1, Lcom/yandex/metrica/impl/p$a;->G:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/yandex/metrica/impl/h;->a(I)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->g(Lcom/yandex/metrica/impl/h;)V

    .line 69
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/ca;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ca;
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_73} :catch_73

    :catch_73
    :cond_73
    :goto_73
    const/4 p1, 0x0

    return p1
.end method

.method b()Ljava/util/HashSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/yandex/metrica/impl/ob/cm;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ag;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->I()Lcom/yandex/metrica/impl/ob/ca;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ca;->b()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    return-object v2

    .line 87
    :cond_14
    :try_start_14
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 88
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    :goto_1f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_34

    .line 90
    new-instance v4, Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_31} :catch_35

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_34
    return-object v1

    :catch_35
    return-object v2
.end method

.method c()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yandex/metrica/impl/ob/cm;",
            ">;"
        }
    .end annotation

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ag;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4000

    .line 105
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x18

    .line 2048
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2049
    new-instance v2, Lcom/yandex/metrica/impl/ob/cl$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/cl$a;-><init>()V

    goto :goto_32

    .line 2051
    :cond_2d
    new-instance v2, Lcom/yandex/metrica/impl/ob/cl$b;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/cl$b;-><init>()V

    .line 112
    :goto_32
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    if-eqz v3, :cond_48

    .line 113
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v3, :cond_48

    aget-object v5, v0, v4

    .line 114
    invoke-virtual {v2, v5}, Lcom/yandex/metrica/impl/ob/cl;->b(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_49

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_48
    return-object v1

    :catch_49
    const/4 v0, 0x0

    return-object v0
.end method
