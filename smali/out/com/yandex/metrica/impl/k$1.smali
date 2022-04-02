.class Lcom/yandex/metrica/impl/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/k;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/k;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/yandex/metrica/impl/k$1;->a:Lcom/yandex/metrica/impl/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/yandex/metrica/impl/ob/dz;)V
    .registers 8

    .line 154
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 155
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_6f

    .line 156
    aget-object v2, p1, v1

    .line 157
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "cell_id"

    .line 159
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dz;->e()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "signal_strength"

    .line 160
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dz;->a()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "lac"

    .line 161
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dz;->d()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "country_code"

    .line 162
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dz;->b()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "operator_id"

    .line 163
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dz;->c()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "operator_name"

    .line 164
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dz;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "is_connected"

    .line 165
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dz;->h()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cell_type"

    .line 166
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dz;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pci"

    .line 167
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dz;->j()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 171
    :cond_6f
    iget-object p1, p0, Lcom/yandex/metrica/impl/k$1;->a:Lcom/yandex/metrica/impl/k;

    invoke-static {p1}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/k;)Landroid/content/ContentValues;

    move-result-object p1

    const-string v1, "cell_info"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_7e

    :catch_7e
    return-void
.end method
