.class public Lcom/yandex/metrica/impl/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/PreloadInfo;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/PreloadInfo;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1b

    .line 41
    invoke-virtual {p1}, Lcom/yandex/metrica/PreloadInfo;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 42
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->f()Lcom/yandex/metrica/impl/utils/j;

    move-result-object p1

    const-string v0, "Required field \"PreloadInfo.trackingId\" is empty!\nThis preload info will be skipped."

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/utils/j;->c(Ljava/lang/String;)V

    return-void

    .line 44
    :cond_19
    iput-object p1, p0, Lcom/yandex/metrica/impl/an;->a:Lcom/yandex/metrica/PreloadInfo;

    :cond_1b
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/an;->a:Lcom/yandex/metrica/PreloadInfo;

    if-eqz v0, :cond_17

    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string v1, "preloadInfo"

    .line 80
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/an;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_12} :catch_12

    .line 84
    :catch_12
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    const-string v0, ""

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/yandex/metrica/impl/an;->a:Lcom/yandex/metrica/PreloadInfo;

    if-eqz v0, :cond_31

    .line 93
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string v1, "trackingId"

    .line 95
    iget-object v2, p0, Lcom/yandex/metrica/impl/an;->a:Lcom/yandex/metrica/PreloadInfo;

    .line 96
    invoke-virtual {v2}, Lcom/yandex/metrica/PreloadInfo;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    iget-object v1, p0, Lcom/yandex/metrica/impl/an;->a:Lcom/yandex/metrica/PreloadInfo;

    invoke-virtual {v1}, Lcom/yandex/metrica/PreloadInfo;->getAdditionalParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/yandex/metrica/impl/an;->a:Lcom/yandex/metrica/PreloadInfo;

    invoke-virtual {v2}, Lcom/yandex/metrica/PreloadInfo;->getAdditionalParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "additionalParams"

    .line 100
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_30} :catch_30

    :catch_30
    :cond_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method
