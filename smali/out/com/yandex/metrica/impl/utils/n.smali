.class public Lcom/yandex/metrica/impl/utils/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/utils/n$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/d;
    .registers 4

    .line 78
    new-instance v0, Lcom/yandex/metrica/d;

    invoke-direct {v0}, Lcom/yandex/metrica/d;-><init>()V

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 82
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "UserInfo.UserId"

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/d;->a(Ljava/lang/String;)V

    const-string p0, "UserInfo.Type"

    .line 85
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/d;->b(Ljava/lang/String;)V

    const-string p0, "UserInfo.Options"

    .line 86
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 87
    invoke-static {p0}, Lcom/yandex/metrica/impl/utils/g;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/d;->a(Ljava/util/Map;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_30} :catch_30

    :catch_30
    :cond_30
    return-object v0
.end method

.method public static a(Lcom/yandex/metrica/impl/utils/n$a;)Ljava/lang/String;
    .registers 3

    .line 98
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    .line 99
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/utils/n$a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method
