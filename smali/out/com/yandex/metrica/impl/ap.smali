.class final Lcom/yandex/metrica/impl/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ap$g;,
        Lcom/yandex/metrica/impl/ap$h;,
        Lcom/yandex/metrica/impl/ap$d;,
        Lcom/yandex/metrica/impl/ap$a;,
        Lcom/yandex/metrica/impl/ap$e;,
        Lcom/yandex/metrica/impl/ap$c;,
        Lcom/yandex/metrica/impl/ap$f;,
        Lcom/yandex/metrica/impl/ap$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/bl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ob/bl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    sget-object v1, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bl;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/yandex/metrica/impl/ob/bl;->b:Lcom/yandex/metrica/impl/ob/bl;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ap;->a:Ljava/util/Map;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 67
    sget-object v1, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v1, Lcom/yandex/metrica/impl/ob/bl;->b:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sput-object v0, Lcom/yandex/metrica/impl/ap;->b:Landroid/util/SparseArray;

    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/bl;)I
    .registers 2

    .line 191
    sget-object v0, Lcom/yandex/metrica/impl/ap;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/c$a$d$a$b;
    .registers 6

    .line 305
    new-instance v0, Lcom/yandex/metrica/c$a$d$a$b;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$d$a$b;-><init>()V

    .line 307
    iput p0, v0, Lcom/yandex/metrica/c$a$d$a$b;->d:I

    if-eqz p1, :cond_b

    .line 310
    iput-object p1, v0, Lcom/yandex/metrica/c$a$d$a$b;->e:Ljava/lang/String;

    .line 313
    :cond_b
    invoke-static {p3}, Lcom/yandex/metrica/impl/ap;->c(Ljava/lang/String;)[Lcom/yandex/metrica/c$a$d$a$b$a;

    move-result-object p0

    .line 314
    invoke-static {p2}, Lcom/yandex/metrica/impl/ap;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p0, :cond_17

    .line 317
    iput-object p0, v0, Lcom/yandex/metrica/c$a$d$a$b;->b:[Lcom/yandex/metrica/c$a$d$a$b$a;

    :cond_17
    if-eqz p1, :cond_27

    .line 321
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/yandex/metrica/c$a$d$c;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/yandex/metrica/c$a$d$c;

    iput-object p0, v0, Lcom/yandex/metrica/c$a$d$a$b;->c:[Lcom/yandex/metrica/c$a$d$c;

    .line 323
    :cond_27
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_33

    .line 324
    invoke-static {p4}, Lcom/yandex/metrica/impl/ap;->b(Ljava/lang/String;)Lcom/yandex/metrica/c$a$d$a$b$b;

    move-result-object p0

    iput-object p0, v0, Lcom/yandex/metrica/c$a$d$a$b;->f:Lcom/yandex/metrica/c$a$d$a$b$b;

    :cond_33
    return-object v0
.end method

.method public static a(Ljava/lang/String;ILcom/yandex/metrica/c$a$f;)Lcom/yandex/metrica/c$a$d$b;
    .registers 4

    .line 181
    new-instance v0, Lcom/yandex/metrica/c$a$d$b;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$d$b;-><init>()V

    .line 183
    iput-object p2, v0, Lcom/yandex/metrica/c$a$d$b;->b:Lcom/yandex/metrica/c$a$f;

    .line 184
    iput-object p0, v0, Lcom/yandex/metrica/c$a$d$b;->c:Ljava/lang/String;

    .line 185
    iput p1, v0, Lcom/yandex/metrica/c$a$d$b;->d:I

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/yandex/metrica/c$a$d$c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "mac"

    .line 124
    :try_start_2
    new-instance v1, Lcom/yandex/metrica/c$a$d$c;

    invoke-direct {v1}, Lcom/yandex/metrica/c$a$d$c;-><init>()V

    .line 125
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/c$a$d$c;->b:Ljava/lang/String;

    const-string v2, "signal_strength"

    .line 126
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yandex/metrica/c$a$d$c;->c:I

    const-string v2, "ssid"

    .line 127
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/c$a$d$c;->d:Ljava/lang/String;

    const-string v2, "is_connected"

    .line 128
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yandex/metrica/c$a$d$c;->e:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26

    return-object v1

    .line 131
    :catch_26
    new-instance v1, Lcom/yandex/metrica/c$a$d$c;

    invoke-direct {v1}, Lcom/yandex/metrica/c$a$d$c;-><init>()V

    .line 132
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/yandex/metrica/c$a$d$c;->b:Ljava/lang/String;

    return-object v1
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/ee;)Lcom/yandex/metrica/c$a$e;
    .registers 3

    .line 80
    new-instance v0, Lcom/yandex/metrica/c$a$e;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$e;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 82
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$e;->b:I

    .line 84
    :cond_15
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->b()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 85
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$e;->c:I

    .line 87
    :cond_25
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 88
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$e;->d:Ljava/lang/String;

    .line 90
    :cond_35
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->c()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yandex/metrica/c$a$e;->e:Z

    .line 91
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 92
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ee;->e()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/yandex/metrica/c$a$e;->f:Ljava/lang/String;

    :cond_4b
    return-object v0
.end method

.method public static a(Landroid/content/ContentValues;)Lcom/yandex/metrica/c$a$f;
    .registers 3

    const-string v0, "start_time"

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "server_time_offset"

    .line 75
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    .line 73
    invoke-static {v0, p0}, Lcom/yandex/metrica/impl/ap;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/yandex/metrica/c$a$f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/yandex/metrica/c$a$f;
    .registers 7

    .line 171
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1164
    new-instance p0, Lcom/yandex/metrica/c$a$f;

    invoke-direct {p0}, Lcom/yandex/metrica/c$a$f;-><init>()V

    .line 1165
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$f;->b:J

    .line 2044
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    .line 2045
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    .line 2047
    invoke-virtual {v2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 1166
    iput v0, p0, Lcom/yandex/metrica/c$a$f;->c:I

    if-eqz p1, :cond_29

    .line 173
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/c$a$f;->d:J

    :cond_29
    return-object p0
.end method

.method public static a(I)Lcom/yandex/metrica/impl/ob/bl;
    .registers 2

    .line 98
    sget-object v0, Lcom/yandex/metrica/impl/ap;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/bl;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/c$a$d$c;",
            ">;"
        }
    .end annotation

    .line 103
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 106
    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_20

    if-ge p0, v2, :cond_1f

    .line 108
    :try_start_11
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ap;->a(Lorg/json/JSONObject;)Lcom/yandex/metrica/c$a$d$c;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_1c

    :catch_1c
    add-int/lit8 p0, p0, 0x1

    goto :goto_b

    :cond_1f
    return-object v0

    .line 119
    :catch_20
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static a()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/content/Context;)[Lcom/yandex/metrica/c$a$c;
    .registers 6

    .line 369
    invoke-static {p0}, Lcom/yandex/metrica/impl/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bm;->b()Ljava/util/List;

    move-result-object p0

    .line 370
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 371
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$c;

    const/4 v1, 0x0

    .line 373
    :goto_15
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 374
    new-instance v2, Lcom/yandex/metrica/c$a$c;

    invoke-direct {v2}, Lcom/yandex/metrica/c$a$c;-><init>()V

    .line 375
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/bm$a;

    .line 376
    iget-object v4, v3, Lcom/yandex/metrica/impl/bm$a;->a:Ljava/lang/String;

    iput-object v4, v2, Lcom/yandex/metrica/c$a$c;->b:Ljava/lang/String;

    .line 377
    iget-object v3, v3, Lcom/yandex/metrica/impl/bm$a;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/yandex/metrica/c$a$c;->c:Ljava/lang/String;

    .line 378
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_33
    return-object v0

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method static b(Lorg/json/JSONObject;)Lcom/yandex/metrica/c$a$d$a$b$a;
    .registers 4

    .line 222
    new-instance v0, Lcom/yandex/metrica/c$a$d$a$b$a;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$d$a$b$a;-><init>()V

    const-string v1, "signal_strength"

    .line 224
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 225
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 227
    iput v1, v0, Lcom/yandex/metrica/c$a$d$a$b$a;->c:I

    :cond_16
    const-string v1, "cell_id"

    .line 230
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 231
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$d$a$b$a;->b:I

    :cond_24
    const-string v1, "lac"

    .line 233
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 234
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$d$a$b$a;->d:I

    :cond_32
    const-string v1, "country_code"

    .line 236
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 237
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$d$a$b$a;->e:I

    :cond_40
    const-string v1, "operator_id"

    .line 239
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 240
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$d$a$b$a;->f:I

    :cond_4e
    const-string v1, "operator_name"

    .line 242
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 243
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$d$a$b$a;->g:Ljava/lang/String;

    :cond_5c
    const-string v1, "is_connected"

    .line 245
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 246
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/yandex/metrica/c$a$d$a$b$a;->h:Z

    :cond_6a
    const/4 v1, 0x0

    const-string v2, "cell_type"

    .line 248
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$d$a$b$a;->i:I

    const-string v1, "pci"

    .line 249
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 250
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/yandex/metrica/c$a$d$a$b$a;->j:I

    :cond_81
    return-object v0
.end method

.method static b(Ljava/lang/String;)Lcom/yandex/metrica/c$a$d$a$b$b;
    .registers 5

    .line 139
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    new-instance p0, Lcom/yandex/metrica/c$a$d$a$b$b;

    invoke-direct {p0}, Lcom/yandex/metrica/c$a$d$a$b$b;-><init>()V

    const-string v1, "ssid"

    .line 142
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/c$a$d$a$b$b;->b:Ljava/lang/String;

    const-string v1, "state"

    const/4 v2, -0x1

    .line 143
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    if-eq v0, v1, :cond_31

    const/4 v2, 0x2

    if-eq v0, v2, :cond_31

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2e

    const/4 v2, 0x4

    if-eq v0, v2, :cond_31

    goto :goto_33

    .line 152
    :cond_2e
    iput v2, p0, Lcom/yandex/metrica/c$a$d$a$b$b;->c:I

    goto :goto_33

    .line 149
    :cond_31
    iput v1, p0, Lcom/yandex/metrica/c$a$d$a$b$b;->c:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    :goto_33
    return-object p0

    :catch_34
    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)[Lcom/yandex/metrica/c$a$d$a$b$a;
    .registers 6

    const/4 v0, 0x0

    .line 197
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 198
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lcom/yandex/metrica/c$a$d$a$b$a;

    const/4 v3, 0x0

    .line 200
    :goto_13
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_28

    .line 201
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 203
    invoke-static {v4}, Lcom/yandex/metrica/impl/ap;->b(Lorg/json/JSONObject;)Lcom/yandex/metrica/c$a$d$a$b$a;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_25} :catch_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_38

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_28
    return-object v2

    .line 209
    :catch_29
    :try_start_29
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/yandex/metrica/c$a$d$a$b$a;

    .line 210
    invoke-static {v1}, Lcom/yandex/metrica/impl/ap;->b(Lorg/json/JSONObject;)Lcom/yandex/metrica/c$a$d$a$b$a;

    move-result-object v1

    aput-object v1, p0, v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_37} :catch_38

    return-object p0

    :catch_38
    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lcom/yandex/metrica/c$a$b;
    .registers 10

    const-string v0, "provider"

    const-string v1, "timestamp"

    const-string v2, "speed"

    const-string v3, "precision"

    const-string v4, "direction"

    const-string v5, "altitude"

    .line 257
    :try_start_c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8d

    .line 258
    new-instance v6, Lcom/yandex/metrica/impl/utils/g$a;

    invoke-direct {v6, p0}, Lcom/yandex/metrica/impl/utils/g$a;-><init>(Ljava/lang/String;)V

    .line 261
    new-instance p0, Lcom/yandex/metrica/c$a$b;

    invoke-direct {p0}, Lcom/yandex/metrica/c$a$b;-><init>()V

    const-string v7, "lon"

    .line 264
    invoke-virtual {v6, v7}, Lcom/yandex/metrica/impl/utils/g$a;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/yandex/metrica/c$a$b;->c:D

    const-string v7, "lat"

    .line 265
    invoke-virtual {v6, v7}, Lcom/yandex/metrica/impl/utils/g$a;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/yandex/metrica/c$a$b;->b:D

    .line 268
    invoke-virtual {v6, v5}, Lcom/yandex/metrica/impl/utils/g$a;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 269
    invoke-virtual {v6, v5}, Lcom/yandex/metrica/impl/utils/g$a;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/yandex/metrica/c$a$b;->h:I

    .line 271
    :cond_38
    invoke-virtual {v6, v4}, Lcom/yandex/metrica/impl/utils/g$a;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 272
    invoke-virtual {v6, v4}, Lcom/yandex/metrica/impl/utils/g$a;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/yandex/metrica/c$a$b;->f:I

    .line 274
    :cond_44
    invoke-virtual {v6, v3}, Lcom/yandex/metrica/impl/utils/g$a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 275
    invoke-virtual {v6, v3}, Lcom/yandex/metrica/impl/utils/g$a;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/yandex/metrica/c$a$b;->e:I

    .line 277
    :cond_50
    invoke-virtual {v6, v2}, Lcom/yandex/metrica/impl/utils/g$a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 278
    invoke-virtual {v6, v2}, Lcom/yandex/metrica/impl/utils/g$a;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/yandex/metrica/c$a$b;->g:I

    .line 280
    :cond_5c
    invoke-virtual {v6, v1}, Lcom/yandex/metrica/impl/utils/g$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 281
    invoke-virtual {v6, v1}, Lcom/yandex/metrica/impl/utils/g$a;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/yandex/metrica/c$a$b;->d:J

    .line 283
    :cond_6b
    invoke-virtual {v6, v0}, Lcom/yandex/metrica/impl/utils/g$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 284
    invoke-virtual {v6, v0}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v0, 0x1

    .line 286
    iput v0, p0, Lcom/yandex/metrica/c$a$b;->i:I

    goto :goto_8c

    :cond_81
    const-string v1, "network"

    .line 287
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const/4 v0, 0x2

    .line 288
    iput v0, p0, Lcom/yandex/metrica/c$a$b;->i:I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_8c} :catch_8d

    :cond_8c
    :goto_8c
    return-object p0

    :catch_8d
    :cond_8d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcom/yandex/metrica/c$a$d$a$a;
    .registers 3

    .line 332
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 333
    invoke-static {p0}, Lcom/yandex/metrica/impl/utils/n;->a(Ljava/lang/String;)Lcom/yandex/metrica/d;

    move-result-object p0

    .line 335
    new-instance v0, Lcom/yandex/metrica/c$a$d$a$a;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$d$a$a;-><init>()V

    .line 337
    invoke-virtual {p0}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$d$a$a;->b:Ljava/lang/String;

    .line 338
    invoke-virtual {p0}, Lcom/yandex/metrica/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 339
    invoke-virtual {p0}, Lcom/yandex/metrica/d;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$d$a$a;->c:Ljava/lang/String;

    .line 341
    :cond_25
    invoke-virtual {p0}, Lcom/yandex/metrica/d;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 342
    invoke-virtual {p0}, Lcom/yandex/metrica/d;->c()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/yandex/metrica/c$a$d$a$a;->d:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    :cond_39
    return-object v0

    :catch_3a
    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method
