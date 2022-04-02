.class public Lcom/yandex/metrica/impl/utils/g$a;
.super Lorg/json/JSONObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 56
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    return-object p2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 48
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    const-string p1, ""

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 64
    :try_start_1
    sget-object v1, Lcom/yandex/metrica/impl/utils/g$a;->NULL:Ljava/lang/Object;

    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_b

    if-eq v1, p1, :cond_b

    const/4 p1, 0x1

    return p1

    :catch_b
    :cond_b
    return v0
.end method
