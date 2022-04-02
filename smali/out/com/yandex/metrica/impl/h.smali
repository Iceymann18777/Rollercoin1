.class public Lcom/yandex/metrica/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/h$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field private f:Lcom/yandex/metrica/impl/h$a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/os/Bundle;

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/h$a;-><init>(B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    const/4 v0, 0x2

    .line 72
    iput v0, p0, Lcom/yandex/metrica/impl/h;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/h;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/h$a;-><init>(B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    const/4 v0, 0x2

    .line 72
    iput v0, p0, Lcom/yandex/metrica/impl/h;->k:I

    if-eqz p1, :cond_6a

    .line 79
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/h;->a:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/h;->b:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/h;->c:I

    .line 82
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->d()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/h;->d:I

    .line 83
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/h;->g:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/h;->i:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/h;->h:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->e()Landroid/location/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/h$a;->a:Landroid/location/Location;

    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/h$a;->b:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->h()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/h$a;->c:Ljava/lang/Integer;

    .line 89
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->j()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/h;->j:Landroid/os/Bundle;

    .line 90
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->o()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/h;->e:I

    .line 91
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->p()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/h;->k:I

    .line 92
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->q()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/h;->l:Ljava/lang/String;

    :cond_6a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/h$a;-><init>(B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    const/4 v0, 0x2

    .line 72
    iput v0, p0, Lcom/yandex/metrica/impl/h;->k:I

    .line 103
    iput-object p2, p0, Lcom/yandex/metrica/impl/h;->a:Ljava/lang/String;

    .line 104
    iput p3, p0, Lcom/yandex/metrica/impl/h;->c:I

    .line 105
    iput-object p1, p0, Lcom/yandex/metrica/impl/h;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;
    .registers 3

    .line 322
    new-instance v0, Lcom/yandex/metrica/impl/h;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/h;-><init>(Lcom/yandex/metrica/impl/h;)V

    .line 323
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/p$a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/h;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    .line 324
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/h;->a(I)Lcom/yandex/metrica/impl/h;

    return-object v0
.end method

.method public static a(Lcom/yandex/metrica/impl/h;Ljava/util/List;)Lcom/yandex/metrica/impl/h;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/h;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cw;",
            ">;)",
            "Lcom/yandex/metrica/impl/h;"
        }
    .end annotation

    .line 365
    new-instance v0, Lcom/yandex/metrica/impl/h;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/h;-><init>(Lcom/yandex/metrica/impl/h;)V

    .line 368
    :try_start_5
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 369
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/cw;

    .line 370
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "name"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "granted"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cw;->a()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_e

    .line 372
    :cond_37
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "permissions"

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_46} :catch_47

    goto :goto_49

    :catch_47
    const-string p0, ""

    .line 376
    :goto_49
    sget-object p1, Lcom/yandex/metrica/impl/p$a;->F:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/h;->a(I)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/h;
    .registers 5

    .line 341
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    .line 342
    new-instance v1, Lcom/yandex/metrica/impl/t;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/t;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/t;->a()Lcom/yandex/metrica/impl/t;

    move-result-object v1

    .line 346
    :try_start_11
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->G()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 347
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/t;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/t;

    .line 349
    :cond_1a
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ba;->H()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 350
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/ba;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ba;->I()Z

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/yandex/metrica/impl/t;->a(Landroid/content/Context;Z)Lcom/yandex/metrica/impl/t;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_2f

    .line 356
    :catch_2f
    :cond_2f
    new-instance p0, Lcom/yandex/metrica/impl/h;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/h;-><init>(Lcom/yandex/metrica/impl/h;)V

    .line 358
    sget-object p1, Lcom/yandex/metrica/impl/p$a;->r:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/h;->a(I)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/t;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    return-object p0
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/h;
    .registers 5

    const-string v0, "CounterReport.Object"

    .line 293
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_12

    :cond_d
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :goto_12
    const-string v0, "CounterReport.TRUNCATED"

    .line 295
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 298
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_26

    .line 299
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_30

    .line 300
    :cond_26
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_30

    .line 301
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 304
    :cond_30
    :goto_30
    new-instance v0, Lcom/yandex/metrica/impl/h;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/h;-><init>()V

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->a:Lcom/yandex/metrica/impl/p$a;

    .line 305
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v2

    const-string v3, "CounterReport.Type"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/h;->a(I)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v2, "CounterReport.CustomType"

    .line 306
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/h;->b(I)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v2, "CounterReport.GeoLocation"

    .line 307
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/y;->a([B)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/h;->a(Landroid/location/Location;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v2, "CounterReport.Value"

    .line 308
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/bi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v2, "CounterReport.UserInfo"

    .line 309
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/h;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v2, "CounterReport.Environment"

    .line 310
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/h;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v2, "CounterReport.Wifi"

    .line 311
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/h;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v2, "CounterReport.CellId"

    .line 312
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/h;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v2, "CounterReport.Event"

    .line 313
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/h;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v2, "CounterReport.PackageName"

    .line 314
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/h;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v2, "CounterReport.AppEnvironmentDiff"

    .line 315
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1201
    iput-object v2, v0, Lcom/yandex/metrica/impl/h;->j:Landroid/os/Bundle;

    .line 316
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/h;->c(I)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v1, "CounterReport.ConnectionType"

    .line 317
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/h;->d(I)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v1, "CounterReport.CellularConnectionType"

    .line 318
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/h;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/yandex/metrica/impl/h;->a:Ljava/lang/String;

    const-string v2, "CounterReport.Event"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/yandex/metrica/impl/h;->b:Ljava/lang/String;

    const-string v2, "CounterReport.Value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget v1, p0, Lcom/yandex/metrica/impl/h;->c:I

    const-string v2, "CounterReport.Type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    iget v1, p0, Lcom/yandex/metrica/impl/h;->d:I

    const-string v2, "CounterReport.CustomType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    iget-object v1, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/h$a;->b:Ljava/lang/String;

    const-string v2, "CounterReport.Wifi"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/h$a;->a:Landroid/location/Location;

    invoke-static {v1}, Lcom/yandex/metrica/impl/y;->b(Landroid/location/Location;)[B

    move-result-object v1

    const-string v2, "CounterReport.GeoLocation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 267
    iget v1, p0, Lcom/yandex/metrica/impl/h;->e:I

    const-string v2, "CounterReport.TRUNCATED"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    iget v1, p0, Lcom/yandex/metrica/impl/h;->k:I

    const-string v2, "CounterReport.ConnectionType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    iget-object v1, p0, Lcom/yandex/metrica/impl/h;->l:Ljava/lang/String;

    const-string v2, "CounterReport.CellularConnectionType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/h$a;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_5f

    .line 272
    iget-object v1, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/h$a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "CounterReport.CellId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    :cond_5f
    iget-object v1, p0, Lcom/yandex/metrica/impl/h;->h:Ljava/lang/String;

    if-eqz v1, :cond_68

    const-string v2, "CounterReport.Environment"

    .line 275
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_68
    iget-object v1, p0, Lcom/yandex/metrica/impl/h;->g:Ljava/lang/String;

    if-eqz v1, :cond_71

    const-string v2, "CounterReport.UserInfo"

    .line 278
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_71
    iget-object v1, p0, Lcom/yandex/metrica/impl/h;->i:Ljava/lang/String;

    if-eqz v1, :cond_7a

    const-string v2, "CounterReport.PackageName"

    .line 281
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_7a
    iget-object v1, p0, Lcom/yandex/metrica/impl/h;->j:Landroid/os/Bundle;

    if-eqz v1, :cond_83

    const-string v2, "CounterReport.AppEnvironmentDiff"

    .line 284
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_83
    if-eqz p1, :cond_86

    goto :goto_8b

    .line 287
    :cond_86
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_8b
    const-string v1, "CounterReport.Object"

    .line 288
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public a(I)Lcom/yandex/metrica/impl/h;
    .registers 2

    .line 131
    iput p1, p0, Lcom/yandex/metrica/impl/h;->c:I

    return-object p0
.end method

.method a(Landroid/location/Location;)Lcom/yandex/metrica/impl/h;
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iput-object p1, v0, Lcom/yandex/metrica/impl/h$a;->a:Landroid/location/Location;

    return-object p0
.end method

.method a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/h;
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iput-object p1, v0, Lcom/yandex/metrica/impl/h$a;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/yandex/metrica/impl/h;->g:Ljava/lang/String;

    return-object p0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->j:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/h;->j:Landroid/os/Bundle;

    .line 196
    :cond_b
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->j:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Lcom/yandex/metrica/impl/h;
    .registers 2

    .line 140
    iput p1, p0, Lcom/yandex/metrica/impl/h;->d:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/yandex/metrica/impl/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/yandex/metrica/impl/h;->c:I

    return v0
.end method

.method protected c(I)Lcom/yandex/metrica/impl/h;
    .registers 2

    .line 224
    iput p1, p0, Lcom/yandex/metrica/impl/h;->e:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/yandex/metrica/impl/h;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/yandex/metrica/impl/h;->d:I

    return v0
.end method

.method protected d(I)Lcom/yandex/metrica/impl/h;
    .registers 2

    .line 229
    iput p1, p0, Lcom/yandex/metrica/impl/h;->k:I

    return-object p0
.end method

.method d(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iput-object p1, v0, Lcom/yandex/metrica/impl/h$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e()Landroid/location/Location;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iget-object v0, v0, Lcom/yandex/metrica/impl/h$a;->a:Landroid/location/Location;

    return-object v0
.end method

.method e(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/yandex/metrica/impl/h;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/yandex/metrica/impl/h;->i:Ljava/lang/String;

    return-object p0
.end method

.method f()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iget-object v0, v0, Lcom/yandex/metrica/impl/h$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected g(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/yandex/metrica/impl/h;->l:Ljava/lang/String;

    return-object p0
.end method

.method g()Lorg/json/JSONArray;
    .registers 3

    .line 159
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/h$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 161
    :catch_a
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method h()Ljava/lang/Integer;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iget-object v0, v0, Lcom/yandex/metrica/impl/h$a;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Landroid/os/Bundle;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .registers 3

    .line 243
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->a:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v0

    iget v1, p0, Lcom/yandex/metrica/impl/h;->c:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public o()I
    .registers 2

    .line 247
    iget v0, p0, Lcom/yandex/metrica/impl/h;->e:I

    return v0
.end method

.method public p()I
    .registers 2

    .line 251
    iget v0, p0, Lcom/yandex/metrica/impl/h;->k:I

    return v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 395
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yandex/metrica/impl/h;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/yandex/metrica/impl/h;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/yandex/metrica/impl/h;->b:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "[event: %s, type: %d, value: %s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
