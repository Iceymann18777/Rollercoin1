.class public Lcom/yandex/metrica/impl/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/utils/g$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 77
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 78
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v1, :cond_28

    .line 81
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 83
    :cond_28
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 85
    :cond_2e
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_59

    .line 86
    check-cast p0, Ljava/util/Collection;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 89
    invoke-static {v2}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 91
    :cond_53
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 93
    :cond_59
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_93

    .line 94
    check-cast p0, Ljava/util/Map;

    .line 95
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 96
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6c
    :goto_6c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6c

    .line 99
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 102
    :cond_8e
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_93} :catch_94

    :cond_93
    return-object p0

    :catch_94
    return-object v0
.end method

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

    .line 126
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/16 v0, 0x13

    .line 130
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 131
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    .line 133
    :cond_1a
    invoke-static {p0}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_22
    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 2

    .line 112
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/16 v0, 0x13

    .line 116
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    .line 119
    :cond_1a
    invoke-static {p0}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_22
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 142
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/g;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 173
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 177
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_27
    const/4 v0, 0x0

    :cond_28
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 155
    :try_start_7
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 156
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_15} :catch_27

    const/4 v1, 0x0

    .line 157
    :goto_16
    :try_start_16
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 158
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_23} :catch_26

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :catch_26
    :cond_26
    move-object v1, p0

    :catch_27
    :cond_27
    return-object v1
.end method
