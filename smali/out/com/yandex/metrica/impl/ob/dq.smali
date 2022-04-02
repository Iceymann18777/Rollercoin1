.class public Lcom/yandex/metrica/impl/ob/dq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->a:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-nez v0, :cond_17

    .line 51
    :try_start_12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "uuid"

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/dq;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    const-string v0, "device_id"

    .line 37
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/dq;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    const-string v0, "google_aid"

    .line 41
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/dq;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    const-string v0, "android_id"

    .line 45
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/dq;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
