.class public Lcom/startapp/android/publish/adsCommon/Utils/c;
.super Lcom/startapp/android/publish/adsCommon/Utils/e;
.source "StartAppSDK"


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/Utils/e;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/c;->a:Lorg/json/JSONObject;

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/c;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .registers 6

    if-eqz p3, :cond_22

    if-eqz p2, :cond_5

    goto :goto_22

    .line 22
    :cond_5
    new-instance p2, Lcom/startapp/common/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Required key: ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is missing"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_22
    :goto_22
    if-eqz p2, :cond_56

    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_56

    .line 27
    :try_start_30
    iget-object p4, p0, Lcom/startapp/android/publish/adsCommon/Utils/c;->a:Lorg/json/JSONObject;

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_56

    :catch_36
    move-exception p1

    if-nez p3, :cond_3a

    goto :goto_56

    .line 30
    :cond_3a
    new-instance p3, Lcom/startapp/common/e;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed converting to json object value: ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_56
    :goto_56
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Set;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    if-eqz p3, :cond_28

    if-eqz p2, :cond_b

    .line 40
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p4

    if-eqz p4, :cond_b

    goto :goto_28

    .line 41
    :cond_b
    new-instance p2, Lcom/startapp/common/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Required key: ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is missing"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_28
    :goto_28
    if-eqz p2, :cond_5b

    .line 44
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p4

    if-lez p4, :cond_5b

    .line 46
    :try_start_30
    iget-object p4, p0, Lcom/startapp/android/publish/adsCommon/Utils/c;->a:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3a} :catch_3b

    goto :goto_5b

    :catch_3b
    move-exception p1

    if-nez p3, :cond_3f

    goto :goto_5b

    .line 49
    :cond_3f
    new-instance p3, Lcom/startapp/common/e;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed converting to json array values: ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_5b
    :goto_5b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
