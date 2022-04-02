.class public Lcom/yandex/metrica/impl/ob/ds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ds;->a:J

    .line 37
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ds;->b:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ds;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "seconds_to_live"

    .line 43
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/yandex/metrica/impl/ob/ds;->a:J

    const-string p1, "token"

    .line 44
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ds;->b:Ljava/lang/String;

    const-string p1, "ports"

    .line 45
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ds;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ds;->c:Ljava/util/List;

    return-void
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 50
    :goto_a
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 51
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1e
    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ds;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ds;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ds;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ds;->a:J

    const-string v3, "seconds_to_live"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 72
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ds;->b:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ds;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "ports"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
